#!/usr/bin/env bash
set -Eeuo pipefail

source /root/ansible-venv/bin/activate

# first arg is `-f` or `--some-option`
# or there are no args
if [ "$#" -eq 0 ] || [ "${1#-}" != "$1" ]; then
	# docker run bash -c 'echo hi'
	exec bash "$@"
fi

exec "$@"
