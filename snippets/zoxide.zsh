###
# Copyright (c) 2026 Pablo Martin Viva
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT
###

###
# INITIALIZES ZOXIDE
###
command -v zoxide >/dev/null 2>&1
if [[ $? -eq 0 ]]; then
  eval "$(zoxide init zsh)"
fi
