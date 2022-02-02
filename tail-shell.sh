#!/bin/sh

touch /var/log/shell.log

# making sure the container keeps running
tail -f /var/log/shell.log
