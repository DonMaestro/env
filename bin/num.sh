#!/bin/bash
shuf -i 1000-9999 -n $1 -o num
cat num
