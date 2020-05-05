#!/bin/sh

pydeps=$(grep -o 'dirtbike.*' debian/rules | cut -d' ' -f 2)
debdeps=$(for pkg in $pydeps
do
    dpkg -S /usr/lib/python3/dist-packages/$pkg* 2>/dev/null 2>/dev/null | cut -d: -f1
done)

echo "pip:Built-Using="$(dpkg-query -f '${source:Package} (= ${source:Version}),\n' -W $debdeps | sort)
