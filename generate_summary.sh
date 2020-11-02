#!/usr/bin/env bash

# Fail if anything fails.
set -e

# Generate a summary of the crawl results into commit.txt
date > commit.txt
cat >> commit.txt <<EOL
lines  |lines  |
added  |deleted|filename
-------|-------|--------
EOL
git diff --numstat --no-color -- '*.html' >> commit.txt
