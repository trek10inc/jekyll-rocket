#!/bin/bash

cd /jekyll/website
jekyll build
s3_website push