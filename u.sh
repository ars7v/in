#!/bin/sh
# u.sh


rm -f /tmp/test0 & wait
echo "$(whoami)" > /tmp/test0 & wait

