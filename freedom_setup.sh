#!/bin/bash


#use in sudo
#setup v2ray, refer :https://github.com/v2fly/fhs-install-v2ray
bash <(curl -L https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh)
#after this, a service named 'v2ray' is running
uuid_s=$(uuid)
v2rayconfig=$(cat v2rayconfig)
v2rayconfig=${v2rayconfig//undefined-uuid/$uuid_s}
echo $v2rayconfig > /usr/local/etc/v2ray/config.json
service v2ray restart


