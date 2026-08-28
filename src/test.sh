#!/usr/bin/env bash

EXPECTED="hello, test"
OUTPUT=$(node -e "console.log(require('./src/app.js')('Test'))")

if [ "$OUTPUT" == "$EXPECTED" ]; then
	echo "test passed"
	exit 0
else
	echo "test failed"
	exit 1
fi

