#!/bin/bash
#
# This script will:
#  build the lemp-base image
#  and then build the lemp-dev image
#

# Build lemp-base image 
#docker build lemp-base/ -t lemp-dev-base:v2
docker build -t lamp-base:0.1 -t lamp-base:latest lamp-base

# Build lemp-dev image using lemp-base
#docker build lemp-dev/ -t lemp-dev:v2
docker build -t lamp-dev:0.1 -t lamp-dev:latest lamp-dev