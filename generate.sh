#!/bin/bash -ex

rm -rf html
mkdir html
for f in chapters/*.asciidoc
do
    BN=`basename $f`
    DEST=html/${BN%.asciidoc}.html
    asciidoc -b html5 -f layout.conf -a toc -o $DEST $f
done
asciidoc -b html5 -f layout.conf -o index.html README.asciidoc
