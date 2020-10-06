#!/bin/bash

SOURCE_DIR=/github/workspace/contracts

solidityCompile() {
    solc ..=.. --allow-paths $SOURCE_DIR $1 &> "/github/workspace/output"
    grep -A4 'Error: .*$' output >> errors
}

shopt -s nullglob dotglob

for pathName in $(find contracts -name '*.sol'); do
    solidityCompile $pathName
done

FILESIZE=$(wc -c "errors" | awk '{print $1}')

if [ $FILESIZE -gt 0 ];then
    cat errors
    exit 1;
fi