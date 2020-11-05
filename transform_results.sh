#!/usr/bin/env bash

# for each file in the www.consumerfinance.gov directory, run the given sed commands on it
find www.consumerfinance.gov -type f \
    -exec sed -f 'sed/remove_scripts.sed' -f 'sed/remove_blank_lines.sed' -i {} \;
