#!/usr/bin/env bash

EXPECTED="Hello, Test"
OUTPUT=$(node -e "console.log(require('./src/apps.js')('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
	echo "test passed"
	exit 0
else
	echo "test failed"
	exit 1
fi

