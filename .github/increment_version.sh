#!/usr/bin/env bash

set -e
cd "$(dirname "${BASH_SOURCE[0]}")/.."

OLD_VERSION=$(awk -F'= *' '/^version/{gsub(/"/,"",$2);gsub("\r","",$2);print $2}' typst.toml)
NEW_VERSION=$1

echo "Old version: $OLD_VERSION"

if [ -z "${NEW_VERSION}" ]; then
    read -p "New version: " NEW_VERSION
else
    echo "New version: $NEW_VERSION"
fi

for file in typst.toml README.md template/paper.typ; do
    sed --debug -i "s|${OLD_VERSION//./\\.}|${NEW_VERSION//./\\.}|" $file
    git add $file
done

#git diff --staged
#git commit -m "Increment Version"

