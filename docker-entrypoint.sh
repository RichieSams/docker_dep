#!/bin/sh
set -e

case "$1" in 
	ensure)
		shift
		dep ensure
		;;
	pingtest)
		exec /bin/ping -c 10 8.8.8.8
		;;
esac

exec "$@"
