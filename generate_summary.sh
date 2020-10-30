#!/usr/bin/env bash

# Fail if anything fails.
set -e

# Generate a summary of the crawl results into commit.txt
date > commit.txt
git diff --numstat --no-color -- '*.html' >> commit.txt
