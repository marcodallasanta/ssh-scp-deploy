#!/bin/bash
PASSWORD=${INPUT_PASSWORD}
KEY=${INPUT_KEY}
if [ -z "$PRE_UPLOAD" and "$PASSWORD"]; then
    echo "🔑 Please provide at least a key or a password...";
    exit 0;
fi

if [[ ! -z "$KEY" ]]; then
    echo "🔑 Using key file...";
    . with_key.sh;
else
    echo "🔑 Using password...";
    . with_pass.sh;
fi