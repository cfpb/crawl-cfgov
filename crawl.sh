#!/usr/bin/env bash
time wget \
    --domains=www.consumerfinance.gov \
    --exclude-domains=files.consumerfinance.gov \
    --execute robots=off \
    --follow-tags=a \
    --limit-rate=200k \
    --random-wait \
    --accept html \
    --reject-regex "topics=|authors=|categories=|filter_blog_category=|ext_url=|search_field=|issuer_name=" \
    --recursive \
    --level=3 \
    --trust-server-names \
    --no-verbose \
    --no-clobber \
    https://www.consumerfinance.gov/
