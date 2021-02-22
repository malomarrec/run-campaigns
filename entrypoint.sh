#!/bin/sh -l

curl -L https://demo.sourcegraph.com/.api/src-cli/src_darwin_amd64 -o src
chmod +x src


# TODO: iterare over campaigns in checkout
# Launch campaigns
export SRC_ENDPOINT=https://demo.sourcegraph.com
export SRC_ACCESS_TOKEN=${{secrets.SRC_ACCESS_TOKEN}}
echo ${{secrets.TEST_SECRET}}

cd github/workspace

src campaigns apply -f my.campaign.yml

echo "Done"
