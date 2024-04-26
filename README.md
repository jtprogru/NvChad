<div align="center">
    <img src="https://nvchad.com/logo.svg" width=210", height="200">
</div>

<h1 align="center">BearNvChad</h1>

Based on example config for [NvChad](https://nvchad.com).

Do check the https://github.com/NvChad/nvcommunity

## NeoVim Prepare

Create virtual environment:

```shell
cd $HOME/.cache/nvim/
python3 -m venv venv
./venv/bin/pip install neovim
```

I'm use Python 3.12, but you can use Python 3.11 as latest LTS version.

## LSP Prepare

Install all binary for LSP:

```bash
# golang
GOPROXY=direct go install golang.org/x/tools/gopls@latest
GOPROXY=direct go install github.com/nametake/golangci-lint-langserver@latest
GOPROXY=direct go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest

# bash
npm i -g bash-language-server
brew install shellharden

# markdown
npm i -g remark-language-server
brew install ltex-ls

# ansible
npm i -g @ansible/ansible-language-server

# terraform
GOPROXY=direct go install github.com/fatih/hclfmt@latest

# docker
npm i -g dockerfile-language-server-nodejs
brew install hadolint

# helm
GOPROXY=direct go install github.com/mrjosh/helm-ls@latest

# Git commit message
brew install gitlint

# YAML
brew install yamlfmt

# C/C++
brew install cpplint
brew install cppcheck

# Python
brew install pylint
npm install -g pyright
```

For more info read in official documentation – [server configurations](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md).


## License

MIT

