# bash_profile

This repository contains a set of presets for `.bash_profile` file to enhance the productivity of bash users.
At this moment there is only for MacOSx 10.9.

## Files

    .
    ├── README.md
    └── mac
        ├── common.sh
        ├── git.sh
        ├── install.sh
        ├── navigation.sh
        ├── network.sh
        └── process.sh

## Installation

Execute `install.sh` to proceed to `.bash_profile` installation. Remember that this process overwrites your
current `.bash_profile` file, so maybe do you want to keep the old (`mv ${HOME}/.bash_profile ${HOME}/.bash_profile.old`).

## References

This repository is a partial extension and modularization of [that gist](https://gist.github.com/natelandau/10654137)
published by [Nathaniel Landau](http://natelandau.com/) on [this post](http://natelandau.com/my-mac-osx-bash_profile/).