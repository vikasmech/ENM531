#!/bin/bash

user="enm531"
host="eniac.seas.upenn.edu"
port=22
site_folder="_site"
remote_folder="~/public_html"

bundle exec jekyll build

scp -P $port -r ${site_folder}/* ${user}@${host}:${remote_folder}
