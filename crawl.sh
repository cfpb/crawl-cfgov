#!/usr/bin/env bash

# Recursively crawl a website and save its HTML locally.
#
# Example usage:
#
# ./crawl.sh [-d depth] https://www.consumerfinance.gov
#
# Optionally specify -d depth to limit the crawl depth.

# If a command fails, stop executing this script and return its error code.
set -e

depth=0

while getopts ":d:" opt; do
    case $opt in
      d )
        depth="$OPTARG";
        number_regex='^[0-9]+$'
        if ! [[ $depth =~ $number_regex ]] ; then
            echo "Crawl depth must be a number." 1>&2
            exit 1
        fi
        ;;
    \? )
        echo "Invalid option: -$OPTARG." 1>&2
        exit 1
        ;;
    : )
        echo "Invalid option: -$OPTARG requires an argument." 1>&2
        exit 1
        ;;
    esac
done

shift $((OPTIND -1))

url=$1

if [ -z "$url" ]; then
  echo "Must specify URL to crawl."
  exit 1
fi

echo "Starting crawl at $url."

domain=$url
domain="${domain#http://}"
domain="${domain#https://}"
domain="${domain%%:*}"
domain="${domain%%\?*}"
domain="${domain%%/*}"
echo "Limiting crawl to domain $domain."

if [ $depth -ne 0 ]; then
    echo "Limiting crawl to depth $depth."
fi

# Crawl into a temporary directory to avoid potential unexpected overwriting
# due to use of --trust-server-names.
# See https://nvd.nist.gov/vuln/detail/CVE-2010-2252.
tmp_dir=$(mktemp -d -t wget-$(date +%Y-%m-%d-%H-%M-%S)-XXXXXXXX)
echo "Saving HTML to $tmp_dir."

pushd "$tmp_dir" > /dev/null
time wget \
    --domains="$domain" \
    --execute robots=off \
    --follow-tags=a \
    --limit-rate=1m \
    --reject '*.css,*.csv,*.CSV,*.do,*.doc,*.docx,*.epub,*.gif,*.ico,*.jpg,*.js,*.mp3,*.pdf,*.PDF,*.png,*.pptx,*.py,*.R,*.sas,*.sps,*.tmp,*.txt,*.wav,*.woff,*.woff2,*.xls,*xlsx,*.xml,*.zip' \
    --reject-regex "topics=|authors=|categories=|filter_blog_category=|ext_url=|search_field=|issuer_name=|filter1_topics=" \
    --recursive \
    --level="$depth" \
    --trust-server-names \
    --verbose \
    --no-clobber \
    --rejected-log=rejected.log \
    "$url" 2>&1 | tee wget.log
popd > /dev/null

# Copy back logs and HTML from temporary directory.
cp -a "$tmp_dir"/{wget,rejected}.log .
cp -a "$tmp_dir/$domain/" "./$domain/"

# Clean up temporary directory.
rm -rf "$tmp_dir"
