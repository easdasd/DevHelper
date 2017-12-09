#!/bin/bash

set -e

_verb="${1}"
if [ -z "${_verb}" ]; then
  echo 'Verb is missing' >&2
  exit 1
fi

_addOnId="${2%/}"
if [ -z "${_addOnId}" ]; then
  echo 'Add-on ID is missing' >&2
  exit 2
fi

shift 2

exec cmd-php.sh "xf-addon:${_verb}" "${_addOnId}" "$@"