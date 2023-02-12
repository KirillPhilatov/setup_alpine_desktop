#!/bin/bash
# 2022-11-14
# Wrapper around ldapmodify utility

ldap_server="$1"
pass=""

cmd="/usr/bin/ldapmodify -H \"ldap://$ldap_server\" -D \"cn=Directory Manager\" -w $pass"

eval "$cmd" "$@"
