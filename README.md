# dotfiles

## Shell config (iterm)
- install zsh
- install oh my zsh
- install powerlevel10k theme
- oh my zsh plugins, install zsh-syntax-highlighting zsh-autosuggestions auto-notify
then on ~/.zshrc

```
  plugins=(git colored-man-pages colorize zsh-syntax-highlighting zsh-autosuggestions auto-notify brew )
```

- fix slow paste on ~/.zshrc
```
# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
```

## VIM
- set a .vimrc file https://vim.fandom.com/wiki/Example_vimrc
- install a plugin manager like https://github.com/junegunn/vim-plug

## Git
- copy the .gitconfig to home
