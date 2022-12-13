#! /bin/bash

# Lifted from https://github.com/tjdevries/config_manager/blob/master/install/setup_links.sh

set -x

if [[ -d "$HOME/.config" ]]; then
    MOVE_CONFIG=true
fi

if [[ $MOVE_CONFIG ]]; then
    echo "Moving config"
    mv ~/.config ~/_temp_config
fi

ln -s ~/projects/skurge/.zshenv ~/
ln -sv ~/projects/skurge/config/ ~/.config
ln -sv ~/projects/skurge/scripts ~/

if [[ $MOVE_CONFIG ]]; then
    cp -r ~/_temp_config/* ~/.config/
    rm -rf ~/_temp_config
fi

