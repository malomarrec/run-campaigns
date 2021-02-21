#!/bin/sh -l

curl -L https://demo.sourcegraph.com/.api/src-cli/src_darwin_amd64 -o src
chmod +x src


# TODO: iterare over campaigns in checkout
# Launch campaigns
export SRC_ENDPOINT=https://demo.sourcegraph.com
#TODO: ${{ secrets.SRC_ACCESS_TOKEN }}
export SRC_ACCESS_TOKEN=EMPTY

cd /github/workspace
