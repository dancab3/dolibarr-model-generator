#!/bin/bash
set -e
PKG_NAME="dolibarr-model-generator_pkg"
dpkg-deb --build "$PKG_NAME"
bash setup_dependencies.sh
