# INSTALLATION

```sh
git clone git@github.com:masterhung0112/nvim-ide.git ~/.nvim-ide
cd ~/.config
ln -s ~/.nvim-ide nvim
```

In the first run of nvim, call command line
```sh
:PackerInstall
```

## Support typescript LSP

```sh
yarn global add typescript typescript-language-server eslint prettier
```

# Feature

[ ] LSP
  [x] ts-server
    [ ] eslint
    [ ] prettier
  [ ] Go to definition
    [ ] Key Map for navigation between items in QuickFix list
  [ ] Quick fix
[ ] Toggle comments multiple lines
[ ] Key maps
  [x] Navigation of buffers
    [x] Jump next/prev
    [x] Close all buffers except current buffer
  [ ] Copy-paste into system clipboard
[ ] Search/Replace
  [ ] Search text in the whole project
  [ ] Replace text in the whole project
[ ] File tree
  [x] Toggle display of file tree
  [ ] Icon of file/folder
[ ] File Opening
  [ ] File fuzzing
[ ] Session
  [ ] Open the last project session
  
# Concept

## Language Server
NeoVim has LSP client that will connect to language server to get the autocomplete. Depending on the capabilities of client, the server provides the set of results.

# Issue

## phpdoc complain about arm64 for Apple silicon

```h
nvm install 14
nvm use 14
npm i -g npm
nvim +"TSInstall phpdoc"
```
