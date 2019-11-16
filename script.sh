#!/usr/bin/env bash

function die () {
  local message=$1
  [ -z "$message" ] && message="Died"
  echo "$message (at ${BASH_SOURCE[1]}:${FUNCNAME[1]} line ${BASH_LINENO[0]}.)" >&2
  exit 1
}

if (( $# != 1 )); then
  die "Usage: ./script.sh <Name of Namespace>"
fi

cd bootstrap

echo '.'$1' { @import "bootstrap"; }' > scss/bootstrap-ns.scss

npm run dist

find $(pwd)/dist/css -type f

