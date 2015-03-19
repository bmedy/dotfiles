#!/bin/bash

cd "$(dirname "${BASH_SOURCE}")" && source "utils.sh"

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

main() {

    declare -r OS="$(get_os)"

    if [ "$OS" == "osx" ]; then
        ./os_x/set_preferences.sh
    # no specific preference for ubuntu gnome.
    # elif [ "$OS" == "ubuntu" ]; then
    #    ./ubuntu/set_preferences.sh
    fi

}

main
