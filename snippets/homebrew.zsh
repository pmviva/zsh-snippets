###
# Copyright (c) 2026 Pablo Martin Viva
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT
###

###
# INITIALIZES HOMEBREW
###
case "$(uname -s)" in
  ###
  # INITIALIZES HOMEBREW ON MACOS
  ###
  Darwin)
    ###
    # INITIALIZES HOMEBREW ON APPLE SILICON MACOS
    ###
    if [[ -x "/opt/homebrew/bin/brew" ]]; then
      eval "$("/opt/homebrew/bin/brew" shellenv)"
    fi

    ###
    # INITIALIZES HOMEBREW ON INTEL MACOS
    ###
    if [[ -x "/usr/local/bin/brew" ]]; then
      eval "$("/usr/local/bin/brew" shellenv)"
    fi
    ;;

  ###
  # INITIALIZES HOMEBREW ON LINUX
  ###
  Linux)
    ###
    # INITIALIZES HOMEBREW ON SYSTEM LINUXBREW
    ###
    if [[ -x "/home/linuxbrew/.linuxbrew/bin/brew" ]]; then
      eval "$("/home/linuxbrew/.linuxbrew/bin/brew" shellenv)"
    fi

    ###
    # INITIALIZES HOMEBREW ON USER LINUXBREW
    ###
    if [[ -x "$HOME/.linuxbrew/bin/brew" ]]; then
      eval "$("$HOME/.linuxbrew/bin/brew" shellenv)"
    fi
    ;;
esac
