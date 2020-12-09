#!/bin/sh

export PIP_DISABLE_PIP_VERSION_CHECK=1

python3 -m pip install world
python3 -m pip list --format=columns
ls -ld /usr/local/lib/python3.*/dist-packages/world-*.dist-info
python3 -m pip uninstall -y world
python3 -m pip list --format=columns
