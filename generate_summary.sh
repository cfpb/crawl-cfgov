#!/usr/bin/env bash

# Generate a friendly diff message for a set of HTML files.
#
# Exampleusage:
#
# ./generate_summary.sh path_to_html

# If a command fails, stop executing this script and return its error code.
set -e

crawl_root=$1

if [ -z "$crawl_root" ]; then
    echo "Must specify path to HTML."
    exit 1
fi

# Generate a summary of the crawl results into commit.txt
date > commit.txt
cat >> commit.txt <<EOL
lines  |lines  |
added  |deleted|filename
-------|-------|--------
EOL
git diff --cached --numstat --no-color "$crawl_root" >> commit.txt
