#!/usr/bin/env sh

set -e

if [ -z $@ ]; then
    named -c /etc/named/named.conf -g -u _named
else
    `$@`
fi

#tail -f /dev/null
fg %1
