# Mac Setup for Programming
<img width="1920" alt="Screenshot 2023-06-23 at 8 48 29 PM" src="https://github.com/Kavinjsir/mac-setup/assets/18136486/1a102b87-9b6e-4dee-be55-1ce6eaf2d543">


## Brew

At the very beginning, install Homebrew.

List of goods to install by brew:

```shell
brew install \
  tmux exa ffmpeg bat gh htop jq neofetch\
  go \ # Need to configure in shell rc, e.g: ~/.zshrc
  fnm \ # Need to configure in shell rc, e.g: ~/.zshrc
  neovim \ # Need to configure individually
  git \ # Need to check if cover with the builtin git from os
  diff-so-fancy \ # For git diff view
  ripgrep \ # Need to configure by `~/.ripgreprc`
  fzf \ # Need to configure key mapping, can be easier when using with oh-my-zsh
```

List of casks:

```shell
brew install --cask \
  iterm2 mactex-no-gui eul keycastr
```

## Iterm2: an alternative to the native terminal

Prerequisite: install `iterm2` by `brew`.

Iterm2 is configurable in many aspects. Check the following vidoe for reference:
https://youtu.be/RNqDkF17ogY?t=301

For color schemes, check: https://github.com/mbadolato/iTerm2-Color-Schemes

## Shell: Zsh

1. Install `oh-my-zsh`
1. Install `powerlevel10k`
1. Install [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
1. Put `.zshrc` to the home directory

## Tmux

Prerequisite: install `tmux` by `brew`.

Tmux is fully configurable. For simplicity, we can use preconfigured ones:
https://github.com/gpakosz/.tmux

## Git

1. Put `.gitconfig` to the home directory
1. Configure `tig`, if installed by `brew`, you can run:
   ```
   cp /opt/homebrew/opt/tig/share/tig/examples/tigrc /opt/homebrew/etc/tigrc
   ```
   For more details, check `brew info tig`.
1. Set `set vertical-split = horizontal` to keep horizontal split view

## Others

1. Put `.ripgreprc` to the home directory
