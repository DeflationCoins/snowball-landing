#! /bin/bash


# Set the S3 bucket name and directory prefix
BUCKET_NAME="s3-iamsnowball-eu-central-1-landing"
PROFILE="defcoins"
PREFIX=""

# Use the AWS CLI to upload all contents of the directory
aws s3 cp . s3://${BUCKET_NAME}/${PREFIX} --recursive --profile $PROFILE \
    --exclude .DS_Store \
    --exclude '.git/*' \
    --exclude upload_to_s3.sh \
    --exclude README.md \
