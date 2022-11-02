#!/usr/bin/env bash

PLUGIN_DIR="$HOME/.local/share/pop-launcher/plugins"

if [ ! -d $PLUGIN_DIR ]; then
  echo "CREATING $PLUGIN_DIR"
  mkdir -p $PLUGIN_DIR
fi

echo "COPYING TO $PLUGIN_DIR"
cp -rv copyq $PLUGIN_DIR

echo "SETTING EXECUTABLE"
chmod +x $PLUGIN_DIR/copyq/main
