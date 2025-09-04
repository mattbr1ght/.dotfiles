# 🎲 mattbr1ght's dotfiles

> My dotfiles shared to all of the world

![code size](https://img.shields.io/github/languages/code-size/semanticdata/ximena)
![repository size](https://img.shields.io/github/repo-size/semanticdata/ximena)
![commits](https://img.shields.io/github/commit-activity/t/semanticdata/ximena)
![last commit](https://img.shields.io/github/last-commit/semanticdata/ximena)

## 📑 Table of Contents

- [🎲 Project Name](#-project-name)
  - [📑 Table of Contents](#-table-of-contents)
  - [📄 Description](#-description)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Changelog](#changelog)
  - [🗺 Roadmap](#-roadmap)
  - [❤ Acknowledgments](#-acknowledgments)
  - [© License](#-license)

## 📄 Description

My personal dotfiles: configs for shell, editors, and tools that make my workflow fast, consistent, and portable across machines. Useful for anyone looking to save setup time, keep environments in sync, or explore new dev setups.

## Prerequisites

- [GNU Stow](https://www.gnu.org/software/stow/)
- [Git](https://git-scm.com/)

---

Optionally, the packages you want to use configs for:

- [ly]()
- [nvim]()
- [wal]()
- [zsh]()
- [dunst]()
- [hyprland]()
- [neofetch]()
- [tmux]()
- [waybar]()
- [fzf]()
- [kitty]()
- [nnn]()
- [udiskie]()
- [wofi]()

Here is a one liner to install them all on Arch Linux:

```sh
sudo pacman -S git ly nvim wal zsh dunst hyprland neofetch tmux waybar fzf kitty nnn udiskie wofi
```

## Installation

Instructions for how to install the dotfiles, and link them on most UNIX operating systems.

From your $HOME directory (~/) run the following:
```sh
git clone https://github.com/mattbr1ght/.dotfiles
cd .dotfiles
stow git ly nvim scripts wal zsh dunst hyprland neofetch tmux waybar fzf kitty nnn udiskie wofi
```

## Changelog

I use [Semantic Versioning](https://semver.org/) for releases.

- 0.0.1
  - Initial commit

## 🗺 Roadmap

- [x] Start using stow to manage my dotfiles
- [x] Upload dotfiles for public use
- [ ] Configure the dotfiles to my liking
- [ ] Update the README
- [ ] Create installation script/s for packages, things that stow can't do
- [ ] Tweak as I grow as a developer

## ❤ Acknowledgments

Thanks to these amazing people and projects:

- [ThePrimeagen] – [https://github.com/theprimeagen]

## © License

This code is available under the [MIT License](LICENSE).

