#!/usr/bin/env bash

# Generate a friendly diff message for a set of HTML files.
# Changes must have already been staged using 'git add'.
#
# Example usage:
#
# ./generate_summary.sh path_to_html

# If a command fails, stop executing this script and return its error code.
set -e

crawl_root=$1

if [ -z "$crawl_root" ]; then
    echo "Must specify path to HTML."
    exit 1
fi

diff_cmd='git diff --cached --numstat --diff-filter=$diff_filter "$crawl_root"'
heading="added  |deleted|filename\n-------|-------|--------"

diff_filter=A
added_result=`eval $diff_cmd`
added_count=`eval $diff_cmd | wc -l | xargs`
added_string="$added_count new"

diff_filter=M
changed_result=`eval $diff_cmd`
changed_count=`eval $diff_cmd | wc -l | xargs`
changed_string="$changed_count changed"

diff_filter=D
deleted_result=`eval $diff_cmd`
deleted_count=`eval $diff_cmd | wc -l | xargs`
deleted_string="$deleted_count removed"

printf "$added_string, $changed_string, $deleted_string\n"

if [[ $added_count -gt 0 ]]; then
    printf "\n$added_string\n$heading\n"
    printf "$added_result\n"
fi

if [[ $changed_count -gt 0 ]]; then
    printf "\n$changed_string\n$heading\n"
    printf "$changed_result\n"
fi

if [[ $deleted_count -gt 0 ]]; then
    printf "\n$deleted_string\n$heading\n"
    printf "$deleted_result\n"
fi
