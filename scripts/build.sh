#!/bin/bash

rootDir=$(cd -P -- "$(dirname -- "$0")/.." && pwd -P)

docker build -t personal-homepage $rootDir