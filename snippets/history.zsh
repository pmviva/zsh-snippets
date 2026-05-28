###
# Copyright (c) 2026 Pablo Martin Viva
#
# This software is released under the MIT License.
# https://opensource.org/licenses/MIT
###

###
# DEFINES THE HISTFILE VARIABLE
###
HISTFILE="$HOME/.zsh_history"

###
# DEFINES THE HISTSIZE VARIABLE
###
HISTSIZE=5000

###
# DEFINES THE SAVEHIST VARIABLE
###
SAVEHIST=$HISTSIZE

###
# SETS THE APPEND HISTORY OPTION
###
setopt appendhistory

###
# SETS THE HIST FIND NO DUPS OPTION
###
setopt hist_find_no_dups

###
# SETS THE HIST IGNORE ALL DUPS OPTION
###
setopt hist_ignore_all_dups

###
# SETS THE HIST IGNORE DUPS OPTION
###
setopt hist_ignore_dups

###
# SETS THE HIST IGNORE SPACE OPTION
###
setopt hist_ignore_space

###
# SETS THE HIST SAVE NO DUPS OPTION
###
setopt hist_save_no_dups

###
# SETS THE SHARE HISTORY OPTION
###
setopt sharehistory
