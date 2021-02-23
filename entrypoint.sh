#!/bin/sh -l

# Requirements:
# Create a Github secret with key SRC_ACCESS_TOKEN and value a sourcegraph access token

# curl -L https://demo.sourcegraph.com/.api/src-cli/src_darwin_amd64 -o src
# chmod +x src

export SRC_ENDPOINT=https://demo.sourcegraph.com

# Checking that SRC_ACCESS_TOKEN is defined
if [[ -z "$SRC_ACCESS_TOKEN" ]]; then
  echo "This action requires a SRC_ACCESS_TOKEN GitHub secret to be set"
  exit 1
fi

tree -o res.txt
cat res.txt

cd ..
tree -o res2.txt
cat res2.txt

cd ..
tree -o res2.txt
cat res2.txt

src campaigns apply -f campaigns/my.campaign.yml

echo "Done"
