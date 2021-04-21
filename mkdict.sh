#!/bin/sh

set -e

dict_path="${1}"

./symbols2voca.sh < "${dict_path}"/dict.symbols > "${dict_path}"/dict.voca
mkdfa.py "${dict_path}"/dict
