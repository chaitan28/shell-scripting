#!/bin/bash

# Variables
LOG_FILE="/var/log/syslog"
COMPRESSED_FILE="/tmp/syslog-$(date +%Y%m%d%H%M%S).tar.gz"  # Use .tar.gz extension
S3_BUCKET=whytebatl.com # Replace with your S3 bucket name
S3_KEY="logs/$(basename $COMPRESSED_FILE)"  # S3 key (path) where the file will be stored

# Compress the syslog file using tar
echo "Compressing $LOG_FILE..."
tar czvf "$COMPRESSED_FILE" "$LOG_FILE"

# Check if compression was successful
if [ $? -eq 0 ]; then
  echo "Compression successful: $COMPRESSED_FILE"

  # Upload the compressed file to S3
  echo "Uploading $COMPRESSED_FILE to S3 bucket $S3_BUCKET..."
  aws s3 cp "$COMPRESSED_FILE" "s3://$S3_BUCKET/$S3_KEY"

  # Check if upload was successful
  if [ $? -eq 0 ]; then
    echo "Upload successful: s3://$S3_BUCKET/$S3_KEY"
  else
    echo "Failed to upload $COMPRESSED_FILE to S3."
    exit 1
  fi

  # Clean up the compressed file
  echo "Cleaning up $COMPRESSED_FILE..."
  rm -f "$COMPRESSED_FILE"
else
  echo "Failed to compress $LOG_FILE."
  exit 1
fi