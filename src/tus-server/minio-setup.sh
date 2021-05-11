#!/bin/sh

# Set up s3 endpoint named 'minio'
mc alias set minio $MINIO_ENDPOINT $MINIO_ROOT_USER $MINIO_ROOT_PASSWORD
