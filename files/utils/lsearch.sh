#!/bin/bash
# 2022-11-14
# Wrapper around ldapsearch utility

set -e

ldap_server=""
base=""
pass=""
filter=""


usage() {
    echo "Usage: $0 ldap_server(dafault=192.168.255.86) filter (default=objectclass=*)"
    exit 1
}


# main #

if [[ $# -gt 2 ]]; then usage; fi
if [[ $1 == "-h" ]]; then usage; fi
if [[ $# -eq 1 ]]; then
    filter="$1"
fi

if [[ $# -eq 2 ]]; then
    ldap_server="$1"
    filter="$2"
    echo "Insert admin password for ldap server:"
    read -sr pass
fi

cmd="/usr/bin/ldapsearch -H \"ldap://$ldap_server\" -D \"cn=Directory Manager\" -w $pass -b $base $filter"

#echo "$ldap_server"
#echo "$cmd"
eval "$cmd"
