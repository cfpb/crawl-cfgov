#!/usr/bin/env bash

# If a command fails, stop executing this script and return its error code.
set -e

# Generate a summary of the crawl results into commit.txt
date > commit.txt
cat >> commit.txt <<EOL
lines  |lines  |
added  |deleted|filename
-------|-------|--------
EOL
git diff --numstat --no-color -- '*.html' >> commit.txt
