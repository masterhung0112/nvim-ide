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

# Concept

## Language Server
NeoVim has LSP client that will connect to language server to get the autocomplete. Depending on the capabilities of client, the server provides the set of results.
