#!/usr/bin/env bash

# Generate a summary of the crawl results into message.txt
git add -A www.consumerfinance.gov
git diff --staged --compact-summary --no-color > message.txt
git reset .

# Follow these instructions to set the value of the COMMIT_MESSAGE
# environment variable and save it to the GitHub Actions environment:
# https://docs.github.com/en/free-pro-team@latest/actions/reference/workflow-commands-for-github-actions#setting-an-environment-variable
echo 'COMMIT_MESSAGE<<EOF' >> $GITHUB_ENV
echo $(cat message.txt) >> $GITHUB_ENV
echo 'EOF' >> $GITHUB_ENV
