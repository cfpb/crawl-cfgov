#!/usr/bin/env bash
git add -A www.consumerfinance.gov
git diff --staged --compact-summary --no-color > summary.txt
git commit --author="Automated <actions@users.noreply.github.com>" \
       --file summary.txt
git push
