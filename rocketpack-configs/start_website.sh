#!/bin/bash

bundle install
jekyll serve --watch --force_polling -H 0.0.0.0
