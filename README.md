# .dotfiles

Basic flow stolen from https://www.jakewiesler.com/blog/managing-dotfiles

## Installing emacs
Taken from https://github.com/d12frosted/homebrew-emacs-plus
```sh
$ brew tap d12frosted/emacs-plus
$ brew install emacs-plus --with-spacemacs-icon
```
## Loading Dotfiles

```sh
$ cd ~
$ brew install stow
$ git clone https://github.com/twinn/.dotfiles.git
$ cd .dotfiles
$ stow emacs
```


