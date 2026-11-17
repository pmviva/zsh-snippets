###
# Copyright (c) 2026 Pablo Martin Viva
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT
###

###
# INITIALIZES OPENCODE
###
export OPENCODE_HOME="$HOME/.opencode"
case ":$PATH:" in
  *":$OPENCODE_HOME/bin:"*) ;;
  *) export PATH="$OPENCODE_HOME/bin:$PATH" ;;
esac
