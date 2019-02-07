#!/bin/sh
set -e

SYSLOG_HOST="$1"
SYSLOG_PORT="$2"

if [ $# -lt 2 ]
then
  echo "Usage: $0 <host> <port>"
  echo "Usage: $0 <host> <port>"
  exit 1
fi

/home/app/flog -f rfc3164 -d 1 | nc "${SYSLOG_HOST}" "${SYSLOG_PORT}"
