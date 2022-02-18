#!/bin/sh

# clear the temp pubic directory
rm -rf site

# Generate static website. Files will be placed in site folder
mkdocs build

# Move the files to S3 bucket for hosting
aws s3 sync ./site s3://zincsearch-docs/ --profile=zinc-prod

# invalidate cloudfront cache so that latest files can be served docs.zincsearch.io
aws cloudfront create-invalidation --distribution-id E2UMT5J75TQQR1 --paths=/* --profile=zinc-prod

# invalidate cloudfront cache so that latest files can be served docs.zinclabs.io
aws cloudfront create-invalidation --distribution-id E2U6GGPWOT7X5H --paths=/* --profile=zinc-prod
