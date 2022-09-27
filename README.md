# .dotfiles

Basic flow stolen from https://www.jakewiesler.com/blog/managing-dotfiles

## Installation

```sh
cd ~
brew install stow
git clone https://github.com/twinn/.dotfiles.git
cd .dotfiles
stow emacs
```

### Other deps needed

```sh
brew install ispell
```

### Symlink Org directory to cloud provider
```sh
ln -s ~/Dropbox/org ~/org
```
