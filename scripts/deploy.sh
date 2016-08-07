#!/bin/bash

set -e

rootDir=$(cd -P -- "$(dirname -- "$0")/.." && pwd -P)

user=$1
host=$2

ssh $user@$host <<'ENDSSH'
cd ~
rm -rf personal-homepage
git clone git@github.com:ybonjour/personal-homepage.git
./personal-homepage/scripts/build.sh
./personal-homepage/scripts/stop.sh
./personal-homepage/scripts/run.sh
ENDSSH