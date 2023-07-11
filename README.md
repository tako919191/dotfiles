# My dotfiles
- [My dotfiles](#my-dotfiles)
  - [Overview](#overview)
  - [Usage](#usage)
  - [TODO](#todo)

## Overview

- Repository for managing dotfiles for Mac (Apple Silicon)

## Usage

```sh
## All Settings for MacOS
$ make all

## Only install dotfiles case
$ make link

## Only run brew (requires ~/.Brewfile)
$ make brew

## VS Code Setting
$ cp -r .vscode /path/to/vscode-workspaces
```

## TODO

- Support for Dev Container (VS Code)
  - [Personalizing with dotfile repositories](https://code.visualstudio.com/docs/devcontainers/containers#_personalizing-with-dotfile-repositories)
