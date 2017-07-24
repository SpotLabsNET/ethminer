#!/usr/bin/env sh

hunter_upload_script_url='https://raw.githubusercontent.com/ruslo/hunter/86b488030412a12c9a950977bf3d83b6fbcb7f51/maintenance/upload-cache-to-github.py'
script_name='upload-cache-to-github.py'

curl -s "$hunter_upload_script_url" > "$script_name"
chmod +x "$script_name"
./"$script_name" --username hunter-cache-bot --repo-owner ethereum --repo hunter-cache --cache-dir ~/.hunter/_Base/Cache --temp-dir ~/.hunter/tmp