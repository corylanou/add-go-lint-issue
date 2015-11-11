#!/bin/bash

project=$1

pushd $project > /dev/null

#All Packages
PACKAGES=$(find . -name '*.go' -print0 | xargs -0 -n1 dirname | sort --unique)

echo '## Packages requireing linting'
for pkg in ${PACKAGES[@]}; do
	echo "- [ ] $pkg $(golint $pkg | wc -l)" | grep -v '\s0$'
done

echo ''
echo 'packages passing lint'
for pkg in ${PACKAGES[@]}; do
	echo "- [x] $pkg $(golint $pkg | wc -l)" | grep '\s0$'
done
