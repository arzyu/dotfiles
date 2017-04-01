#!/bin/bash

cd "$(dirname "$0")"

find "$PWD" -name "*.yaml" -exec ln -svf "{}" ~/Library/Rime ";"
