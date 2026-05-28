###
# Copyright (c) 2026 Pablo Martin Viva
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT
###

###
# INITIALIZES CARGO
###
export CARGO_DIR="$HOME/.cargo"
if [[ -s "$CARGO_DIR/env" ]]; then
  source "$CARGO_DIR/env"
fi
