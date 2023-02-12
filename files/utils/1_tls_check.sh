#!/bin/bash
# 2021-12-30
# Checks certificates

port="$1"
domain="$2"

usage() {
    echo "Usage: $0 <port> <domain> | -h"
    exit
}

if [[ "$#" == 0 || "$#" > 2 || "$1" == "-h" ]]; then
    usage
fi

if [[ "$#" == 1 && "$1" != "-h" ]]; then
    port=443
    domain="$1"
fi

echo | openssl s_client -servername ${domain} -connect ${domain}:${port} 2>/dev/null | openssl x509 -subject -issuer -dates -noout
