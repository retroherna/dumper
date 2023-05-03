#!/bin/bash

# Bootstrap script to be called separately or uploaded to FAI
TMPDIR="/tmp/dumper"
DESTDIR="/opt/dumper"
REPO_URL="https://github.com/retroherna/dumper/archive/refs/heads/main.tar.gz"

mkdir -pv $TMPDIR $DESTDIR

wget -O$TMPDIR/repo.tgz --unlink $REPO_URL

tar xvf $TMPDIR/repo.tgz --strip-components=1 --directory=$DESTDIR

chmod +x $DESTDIR/scripts/init.sh

$DESTDIR/scripts/init.sh