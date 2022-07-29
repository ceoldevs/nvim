# Neovim

This repo is a neovim config forked from 
[ChristianChiarulli](https://github.com/ChristianChiarulli/nvim)
neovim configuration.

## Installation

#### OpenSUSE
Neovim can be installed with:

```bash
sudo zypper in neovim
```

To install the Python modules:

```bash
sudo zypper in python-neovim python3-neovim
```

### Fedora

Neovim is in Fedora starting with Fedora 25:

```bash
sudo dnf install -y neovim python3-neovim
```

### Debian

```bash
sudo apt-get update
sudo apt-get install neovim
```

### CentOS 8 / RHEL 8
Neovim is available through EPEL (Extra Packages for 
Enterprise Linux)

```bash
yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
yum install -y neovim python3-neovim
```

### Arch Linux

```bash
sudo pacman -S neovim python-pynvim
```

### Any other Linux

AppImage ("universal" Linux package)
The Releases page provides an AppImage that runs on most 
Linux systems. No installation is needed, just download 
`nvim.appimage` and run it. (It might not work if your 
Linux distribution is more than 4 years old.)

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
```

If the ./nvim.appimage command fails, try:

```bash
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally.
sudo mv squashfs-root /
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim
```

## setup

Load the `nvim` directory in `$HOME/.config/`

This can be done by using 
`git clone https://github.com/ceoldevs/nvim` inside the 
`$HOME/.config` directory

## Post installation

After downloading neovim, we need to now install 
`packer.nvim` for managing plugins for neovim.

### For Unix, Linux
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

For Arch linux, there is also 
[an AUR package](https://aur.archlinux.org/packages/nvim-packer-git).

After installing packer, run `:PackerInstall` to install 
the required plugins.

There is an autocmd which automatically syncs the package 
when the `plugins.lua` file is saved.

## How to add new plugins?

Go to the `plugins.lua` file inside `lua/user/` and add the
truncated github url with the `use` keyword. inside the 
startup function.

For example look at the 
[packer.nvim repo](https://github.com/wbthomason/packer.nvim).

