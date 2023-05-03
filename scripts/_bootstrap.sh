#!/bin/bash

# Bootstrap script to be called separately or uploaded to FAI
TMPDIR="/tmp/dumper"
DESTDIR="/opt/dumper"
REPO_URL="https://github.com/retroherna/dumper/archive/refs/heads/main.zip"

mkdir -pv $TMPDIR

wget -O$TMPDIR/repo.zip $REPO_URL

unzip $TMPDIR/repo.zip -d $DESTDIR

chmod +x $DESTDIR/scripts/init.sh

$DESTDIR/scripts/init.sh