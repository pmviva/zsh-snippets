# **Zsh Snippets**

1. [About](#about)
2. [Installing](#installing)
3. [Repository structure](#repository-structure)
4. [Usage](#usage)
5. [Recommended plugins](#recommended-plugins)
6. [Notes](#notes)
7. [Authors](#authors)
8. [Contributing](#contributing)

## About

Personal collection of modular Zsh snippets and shell utilities.

This repository contains reusable shell configuration snippets designed to be loaded with [Zinit](https://github.com/zdharma-continuum/zinit).

The goal is to keep `.zshrc` minimal, modular, portable, and easy to maintain across machines.

Instead of keeping all shell behavior inside a single large `.zshrc` file, each snippet is responsible for a specific concern, such as:

* Autocomplete initialization
* Cargo initialization
* Fastfetch initialization
* History configuration
* Homebrew initialization
* Keybindings initialization
* NVM initialization
* PATH configuration
* SDKMAN! initialization
* Starship initialization
* Zoxide initialization

## Installing

Clone this repository:

```bash
git clone https://github.com/pmviva/zsh-snippets.git
```

The snippets are intended to be consumed directly from GitHub using Zinit:

```zsh
zinit snippet "https://raw.githubusercontent.com/pmviva/zsh-snippets/main/snippets/autocomplete.zsh"
```

For a cleaner setup, define a small helper function in your `.zshrc`:

```zsh
pmviva-snippet() {
  zinit snippet "https://raw.githubusercontent.com/pmviva/zsh-snippets/main/snippets/$1.zsh"
}
```

Then load snippets like this:

```zsh
pmviva-snippet path
pmviva-snippet history
pmviva-snippet autocomplete
pmviva-snippet keybindings
pmviva-snippet homebrew
pmviva-snippet cargo
pmviva-snippet nvm
pmviva-snippet sdkman
pmviva-snippet fastfetch
pmviva-snippet starship
pmviva-snippet zoxide
```

## Repository structure

```text
snippets
  ├── autocomplete.zsh
  ├── cargo.zsh
  ├── fastfetch.zsh
  ├── history.zsh
  ├── homebrew.zsh
  ├── keybindings.zsh
  ├── nvm.zsh
  ├── path.zsh
  ├── sdkman.zsh
  ├── starship.zsh
  └── zoxide.zsh
```

## Usage

Example `.zshrc` using Zinit and this repository:

```zsh
###
# DEFINES THE ZINIT REPOSITORY DIRECTORY
###
ZINIT_REPO_DIR="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

###
# INSTALLS ZINIT IF IT IS NOT ALREADY INSTALLED
###
if [[ ! -s "$ZINIT_REPO_DIR/zinit.zsh" ]]; then
  ###
  # CREATES THE PARENT DIRECTORY FOR THE ZINIT REPOSITORY
  ###
  mkdir -p "$(dirname "$ZINIT_REPO_DIR")"

  ###
  # CLONES THE ZINIT REPOSITORY
  ###
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_REPO_DIR"
fi

###
# INITIALIZES ZINIT
###
source "$ZINIT_REPO_DIR/zinit.zsh"

###
# INCLUDES A PMVIVA SNIPPET
###
pmviva-snippet() {
  zinit snippet "https://raw.githubusercontent.com/pmviva/zsh-snippets/main/snippets/$1.zsh"
}

###
# INCLUDES THE ZSH-USERS/ZSH-COMPLETIONS PLUGIN
###
zinit light zsh-users/zsh-completions

###
# INCLUDES THE ZSH-USERS/ZSH-AUTOSUGGESTIONS PLUGIN
###
zinit light zsh-users/zsh-autosuggestions

###
# INCLUDES THE OMZP COLORED MAN PAGES SNIPPET
###
zinit snippet OMZP::colored-man-pages

###
# INCLUDES THE OMZP COMMAND NOT FOUND SNIPPET
###
zinit snippet OMZP::command-not-found

###
# INCLUDES THE OMZP COMMON ALIASES SNIPPET
###
zinit snippet OMZP::common-aliases

###
# INCLUDES THE OMZP DOCKER SNIPPET
###
zinit snippet OMZP::docker

###
# INCLUDES THE OMZP DOCKER COMPOSE SNIPPET
###
zinit snippet OMZP::docker-compose

###
# INCLUDES THE OMZP DNF SNIPPET
###
zinit snippet OMZP::dnf

###
# INCLUDES THE OMZP DOTENV SNIPPET
###
zinit snippet OMZP::dotenv

###
# INCLUDES THE OMZP GH SNIPPET
###
zinit snippet OMZP::gh

###
# INCLUDES THE OMZP GIT SNIPPET
###
zinit snippet OMZP::git

###
# INCLUDES THE OMZP HISTORY SNIPPET
###
zinit snippet OMZP::history

###
# INCLUDES THE OMZP PODMAN SNIPPET
###
zinit snippet OMZP::podman

###
# INCLUDES THE PMVIVA PATH SNIPPET
###
pmviva-snippet path

###
# INCLUDES THE PMVIVA HISTORY SNIPPET
###
pmviva-snippet history

###
# INCLUDES THE PMVIVA AUTOCOMPLETE SNIPPET
###
pmviva-snippet autocomplete

###
# INCLUDES THE PMVIVA KEYBINDINGS SNIPPET
###
pmviva-snippet keybindings

###
# INCLUDES THE PMVIVA HOMEBREW SNIPPET
###
pmviva-snippet homebrew

###
# INCLUDES THE PMVIVA CARGO SNIPPET
###
pmviva-snippet cargo

###
# INCLUDES THE PMVIVA NVM SNIPPET
###
pmviva-snippet nvm

###
# INCLUDES THE PMVIVA SDKMAN! SNIPPET
###
pmviva-snippet sdkman

###
# INCLUDES THE PMVIVA FASTFETCH SNIPPET
###
pmviva-snippet fastfetch

###
# INCLUDES THE PMVIVA STARSHIP SNIPPET
###
pmviva-snippet starship

###
# INCLUDES THE PMVIVA ZOXIDE SNIPPET
###
pmviva-snippet zoxide
```

## Recommended plugins

These snippets are designed to work well alongside the following `zsh-users` plugins:

* `zsh-users/zsh-completions`
* `zsh-users/zsh-autosuggestions`

Recommended Oh My Zsh snippets:

* `OMZP::colored-man-pages`
* `OMZP::command-not-found`
* `OMZP::common-aliases`
* `OMZP::docker`
* `OMZP::docker-compose`
* `OMZP::dnf`
* `OMZP::dotenv`
* `OMZP::gh`
* `OMZP::git`
* `OMZP::history`
* `OMZP::podman`

## Notes

This repository is intentionally personal and opinionated.

The snippets are not meant to be a full Zsh framework. They are small shell configuration modules meant to be loaded from a Zinit-based `.zshrc`.

Some snippets expect external tools to be installed:

| Snippet | External tool |
|--------|---------------|
| `homebrew.zsh` | Homebrew |
| `cargo.zsh` | Rust & Cargo |
| `fastfetch.zsh` | Fastfetch |
| `nvm.zsh` | NVM |
| `sdkman.zsh` | SDKMAN! |
| `starship.zsh` | Starship |
| `zoxide.zsh` | Zoxide |

The main `.zshrc` should remain responsible for orchestration, while this repository owns reusable shell behavior.

## Authors

* Pablo Martin Viva [pmviva@gmail.com](mailto:pmviva@gmail.com)

## Contributing

1. Clone it (`git clone https://github.com/pmviva/zsh-snippets.git`)
2. Create your feature branch (`git checkout -b feature/my-new-feature`)
3. Commit your changes (`git commit`)
4. Push to the branch (`git push -u origin feature/my-new-feature`)
5. Create a new Pull Request
