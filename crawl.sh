#!/usr/bin/env bash

# Recursively crawl a website and save its HTML locally.
#
# Example usage:
#
# ./crawl.sh [-d depth] https://www.consumerfinance.gov
#
# Optionally specify -d depth to limit the crawl depth.

# Fail if anything fails.
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

if [ $depth -ne 0 ]; then
    echo "Limiting crawl to depth $depth."
fi

domain=$url
domain="${domain#http://}"
domain="${domain#https://}"
domain="${domain%%:*}"
domain="${domain%%\?*}"
domain="${domain%%/*}"
echo "Limiting crawl to domain $domain."

time wget \
    --domains="$domain" \
    --execute robots=off \
    --follow-tags=a \
    --limit-rate=1m \
    --accept html \
    --reject-regex "topics=|authors=|categories=|filter_blog_category=|ext_url=|search_field=|issuer_name=" \
    --recursive \
    --level="$depth" \
    --trust-server-names \
    --verbose \
    --no-clobber \
    --rejected-log=rejected.log \
    "$url" 2>&1 | tee wget.log
