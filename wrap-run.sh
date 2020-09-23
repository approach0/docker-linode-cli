#!/bin/bash
token=$1
shift
sed -i "/token/ctoken=$token" /root/.config/linode-cli
linode-cli $@
