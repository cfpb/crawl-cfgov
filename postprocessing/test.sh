#!/usr/bin/env bash

# Test functionality of postprocessing sed scripts.
#
# Example usage:
#
# postprocessing/test.sh

# If a command fails, stop executing this script and return its error code.
set -e

cwd=`dirname "$0"`
sample_input="$cwd/sample-input"
expected_output="$cwd/expected-output"
transform_script="$cwd/transform_results.sh"

# Copy sample input to a temporary directory so we can modify it there.
tmp_dir=$(mktemp -d -t test-$(date +%Y-%m-%d-%H-%M-%S)-XXXXXXXX)

cp -R "$sample_input" "$tmp_dir"
copied_sample_input="$tmp_dir/sample-input"

# Run postprocessing script on sample input.
eval "$transform_script" "$copied_sample_input"

# Compare output to expected output.
diff_result=0
diff "$copied_sample_input" "$expected_output" || diff_result=$?

# Clean up temporary directory.
rm -rf "$tmp_dir"

# Exit with a non-zero error code if the diff failed.
if [ "$diff_result" -ne 0 ]; then
    exit 1;
else
    echo "Success! Generated output matches expected output."
fi
