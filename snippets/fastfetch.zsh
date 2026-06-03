###
# Copyright (c) 2026 Pablo Martin Viva
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT
###

###
# INITIALIZES FASTFETCH
###
command -v fastfetch >/dev/null 2>&1
if [[ $? -eq 0 ]]; then
  fastfetch
fi
