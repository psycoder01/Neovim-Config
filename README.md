# Psycoder01 || Neovim Setup
## NeoVim

Install NeoVim (Use package manager of distro)
```bash
sudo pacman -S neovim
```
Create a directory 
```bash
~/.config/nvim
```
Put all the files in the nvim folder

Open Neovim and run 
```vim
:PlugInstall
```
<br />

**This setup is mainly for Web Development,Flutter,Python.**

<br />

**Check COC Extensions**
```vim
:CocList extensions
``` 

**If no extensions installed**
<br/>

For TypeScript/JavaScript LSP
```vim
:CocInstall coc-tsserver
```
For Python LSP
```vim
:CocInstall coc-python
```
Integration with Neovim
```bash
python -m pip install --user neovim
```
Python Code Formatter
```bash
python -m pip install --user autopep8
```
For flutter extension
```vim
:CocInstall coc-flutter
```

## NOTE:
You have to install xclip in your system to copy/paste text from/to system clipboard
```bash
sudo pacman -S xclip
```
Install for fzf to work properly
```bash
sudo pacman -S the_silver_searcher
```
