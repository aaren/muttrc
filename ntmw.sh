#!/usr/bin/env sh
# nottoomuch-addresses.sh wrapper
# http://blog.tshirtman.fr/2013/3/17/mutt-offlineimap-notmuch-nottoomuch

$HOME/.mutt/nottoomuch-addresses.sh "$1" \
    |sed -s 's/\(.*\) \(<.*\)/\2\   \1/'\
    |sed -s 's/\"//g'\
    |sed -s '/buzz+.*/d'\
