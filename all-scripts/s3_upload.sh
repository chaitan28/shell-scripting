#!/bin/bash
source_file="/home/ubuntu/shell/sample.txt"
s3_bucket="s3://whytebatl.com/"

aws s3 cp $source_file $s3_bucket
if [ $? -eq 0 ]; then  
    echo "file uploaded to s3 bucket"
else
    echo "file not uploaded"
fi
