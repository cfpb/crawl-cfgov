#!/usr/bin/env bash

# Run local sed scripts against HTML files.
#
# Example usage:
#
# ./transform_results.sh path_to_html

# If a command fails, stop executing this script and return its error code.
set -e

crawl_root=$1

if [ -z "$crawl_root" ]; then
    echo "Must specify path to HTML."
    exit 1
fi

# Apply any sed scripts that live in the sed subdirectory.
cwd=`dirname "$0"`
sed_root="$cwd/sed"
sed_scripts=( $(find "$sed_root" -type f -name \*.sed | sort) )

sed_command=sed

# On MacOS, try to use GNU sed if installed to avoid warnings.
# https://stackoverflow.com/q/4247068
gsed_exists=0
type gsed > /dev/null 2>&1 || gsed_exists=$?
if [ "$gsed_exists" -eq 0 ]; then
    sed_command=gsed
fi

find "$crawl_root" -type f -exec "$sed_command" "${sed_scripts[@]/#/-f}" -i {} \;
