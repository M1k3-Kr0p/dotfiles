# dotfiles

My configuration, still a work in progess. These dotfiles are managed with [Stow](https://www.gnu.org/software/stow/).
I'm using this configuration on MacOS using wezterm as both terminal emulator and multiplexer

![terminal](assets/1.png)
![nvim](assets/2.png)


required: 
- brew
- stow

```zsh
stow neovim
stow fastfetch
stow starship
stow tmux
stow zshrc
stow wezterm
```
