#!/bin/bash
origin=/home/teste
for file in ${origin}/*.wav; do lame -h "$file" "${file%wav}"mp3 ; done
for file in ${origin}/*; do sox "$file" -t raw -r 8000 -c 1 "${file%.mp3}."sln ; done

