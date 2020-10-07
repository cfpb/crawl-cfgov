#!/usr/bin/env bash
time wget \
    --domains=www.consumerfinance.gov \
    --output-file=wget.log \
    --execute robots=off \
    --follow-tags=a \
    --limit-rate=200k \
    --random-wait \
    --reject '*.css,*.doc,*.docx,*.gif,*.ico,*.jpg,*.js,*.mp3,*.pdf,*.png,*.txt,*.wav,*.woff,*.woff2,*.xls,*xlsx,*.zip' \
    --reject-regex "topics=|authors=|categories=|filter_blog_category=|ext_url=" \
    --recursive \
    --level=inf \
    --trust-server-names \
    --no-verbose \
    https://www.consumerfinance.gov/
