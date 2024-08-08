# What is inside this repository?

This repository contains my .vimrc

Note: This .vimrc is still a work in progress.

It is not complete, it's for personal use, but would you be interested, feel
free to use it.

I have some more requirements for my vimrc:

## To-do

- [ ] Keymap <C-/> to comment OR uncomment selected lines, has to work in all
languages. so not specifically / # or * .
- [ ] Code suggestions / autocompletion.
- [ ] Automatic linting on save.
- [ ] Add code snippets (! for HTML template for example).
- [ ] Auto close tags (functions, html div's et cetera).
- [ ] Allow shift-tab keymap to unindent current selected lines.
- [ ] Change cursor to open box, white color and no blinking. (editor config or
  vim config?)
- [ ] Automatically show syntax errors / warnings (in-line).
- [ ] Add markdown file preview.

---

## Done

- [x] Add keymap for vertical split screen.
- [x] Let all register saves save to OS clipboard instead ('y', 'd', 'p').
- [x] Add color theme.
- [x] Add keymap to open new tab.
- [x] Add fuzzyfinder to switch between files more easily.
- [x] Add feature to open terminal inside of vim to run terminal commands.
- [x] Add NerdTree for visually more pleasing Explorer.
- [x] Look into adding plugins.
- [x] Automatic indenting on save.
- [x] Prevent auto indentation on save to send me back to top of editor.

---

## Adding Plugins inside Vim.
This `.vimrc` uses [Vim-Plug](https://github.com/junegunn/vim-plug) to manage plugins.

Run in Powershell to install Vim-Plug (Plugin manager)
    ```
    iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
    ```

    Run to install the plugins after installation of Vim-Plug:
    `:PlugInstall`

### Current in-use PlugIns

    - ervandew/supertab
    - dracula/vim
    - junegunn/fzf
    - preservim/nerdtree
