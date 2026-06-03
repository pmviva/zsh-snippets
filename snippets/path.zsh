###
# Copyright (c) 2026 Pablo Martin Viva
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT
###

###
# KEEPS PATH ENTRIES UNIQUE
###
typeset -gU path PATH

###
# SETS THE PATH VARIABLE
###
path=("$HOME/.local/bin" "$HOME/bin" $path)

###
# EXPORTS THE PATH VARIABLE
###
export PATH
