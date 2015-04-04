#!/usr/bin/env bash

SCRIPT_PATH=$(cd "$(dirname "$0")"; pwd)
TARGET_PATH=${HOME}

read -p "This is going to overwrite your .bash_profile. Continue? [y/n] " yn
case $yn in
    [yY]* ) break ;;
    * ) exit ;;
esac

rm ${TARGET_PATH}/.bash_profile
touch ${TARGET_PATH}/.bash_profile

read -p "Install navigation .bash_profile utils? [y/n] " yn
case $yn in
    [Yy]* ) cat ${SCRIPT_PATH}/navigation.sh >> ${TARGET_PATH}/.bash_profile;;
esac

read -p "Install network .bash_profile utils? [y/n] " yn
case $yn in
    [Yy]* ) cat ${SCRIPT_PATH}/network.sh >> ${TARGET_PATH}/.bash_profile;;
esac

read -p "Install process .bash_profile utils? [y/n] " yn
case $yn in
    [Yy]* ) cat ${SCRIPT_PATH}/process.sh >> ${TARGET_PATH}/.bash_profile;;
esac

read -p "Install git .bash_profile utils? [y/n] " yn
case $yn in
    [Yy]* ) cat ${SCRIPT_PATH}/git.sh >> ${TARGET_PATH}/.bash_profile;;
esac

cat ${SCRIPT_PATH}/common.sh >> ${TARGET_PATH}/.bash_profile

echo "Restart Terminal to see changes."