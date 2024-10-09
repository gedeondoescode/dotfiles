# Gedeon's dotfiles
A collection of my dotfiles, primarily for Linux

⚠️ **Warning**: These configs have been specifically tailored in a way that _I_ am familiar with. Some of these configurations can create unexpected behavior on different hardware so it's best to not use these unless you know what you're doing.

# Configuration COntents
- Neovim
- Fish Shell
- Wezterm

## Neovim Setup

### Requirements

- Neovim >= **0.9.0** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- [LazyVim](https://www.lazyvim.org/)
- a [Nerd Font](https://www.nerdfonts.com/)(v3.0 or greater) **_(optional, but needed to display some icons)_**
- [lazygit](https://github.com/jesseduffield/lazygit) **_(optional)_**
- - a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) **_(optional)_**
  - **live grep**: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - **find files**: [fd](https://github.com/sharkdp/fd)
- a terminal that support true color and *undercurl*:
  - [kitty](https://github.com/kovidgoyal/kitty) **_(Linux & Macos)_**
  - [wezterm](https://github.com/wez/wezterm) **_(Linux, Macos & Windows)_** **My personal choice**
  - [alacritty](https://github.com/alacritty/alacritty) **_(Linux, Macos & Windows)_** 
  - [iterm2](https://iterm2.com/) **_(Macos)_**

## Shell Setup (Linux)
- [Fish shell](https://fishshell.com/)
  - Used in favor of [zsh](https://www.zsh.org/) and [Oh My Zsh](https://ohmyz.sh/) which are also present
- [Fisher](https://github.com/jorgebucaran/fisher) - Plugin manager
- [Nerd fonts](https://github.com/ryanoasis/nerd-fonts) - Patched fonts for development-use. I personally use **FiraCode**
- [Zoxide for fish](https://github.com/kidonng/zoxide.fish) - Directory jumping
- [Eza](https://github.com/eza-community/eza) - `ls` replacement
- [fzf](https://github.com/PatrickF1/fzf.fish) - Interactive filtering

There are no steps for installations since I don't expect anyone using these configs for anything. This is just o keep things hosted on a remote repository for when I inevitably need them again.
