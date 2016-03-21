#!/bin/bash

export LIBFUSE_PATH=/usr/lib/libfuse.so
yas3fs s3://$S3_PATH /mnt -f
