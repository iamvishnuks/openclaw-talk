#!/bin/sh
set -e

if [ -n "$GH_TOKEN" ]; then
  echo "$GH_TOKEN" | gh auth login --with-token
  gh auth setup-git   # configures git credential helper
fi

exec "$@"