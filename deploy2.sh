#!/bin/sh

# clear the temp pubic directory
rm -rf site

# Generate static website. Files will be placed in site folder
mkdocs build

# Move the files to S3 bucket for hosting
aws s3 sync ./site s3://zincsearch-docs/ --profile=prod

# invalidate cloudfront cache so that latest files can be served zincsearch-docs.zinc.dev
aws cloudfront create-invalidation --distribution-id E3HCNV07Z16XSM --paths=/* --profile=prod

