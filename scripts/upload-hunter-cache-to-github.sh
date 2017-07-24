#!/usr/bin/env sh

hunter_upload_script_url='https://raw.githubusercontent.com/ruslo/hunter/86b488030412a12c9a950977bf3d83b6fbcb7f51/maintenance/upload-cache-to-github.py'
script_name='upload-cache-to-github.py'

python='python'
if type python3; then
  python='python3'
fi
pip='pip'
if type pip3; then
  pip='pip3'
fi

"$pip" install --user requests

curl -s "$hunter_upload_script_url" > "$script_name"
$python "$script_name" --username hunter-cache-bot --repo-owner ethereum --repo hunter-cache --cache-dir ~/.hunter/_Base/Cache --temp-dir ~/.hunter/tmp
