#!/bin/bash

binsd="$HOME/.local/bin/"
sdir="$(dirname "$0")"

if [[ "$UID" = 0 ]]; then
	binsd="/usr/local/bin/"
else
	mkdir -p "$binsd"
fi

if [[ ! -f /usr/bin/encfs ]]; then
	if [[ -f /usr/bin/apt-get ]] ; then
		apt-get update && apt-get install encfs -y
	elif [[ -f /usr/bin/dnf ]]; then
		dnf install encfs
	else
		echo "Please install encfs separately." >&2
	fi
fi

cp "$sdir"/bin/secdir "$binsd" || exit 1

echo "Install successful"
