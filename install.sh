#!/usr/bin/env bash

set -ef
set pipefail

echo "Starting prepare..."
echo "Remove cached data"
rm -rf "$HOME"/.local/share/nvim
rm -rf "$HOME"/.cache/nvim

echo "Starting installation..."

echo "1. Install Golang packages"
echo "1.1. Install Golang packages for Golang"
GOPROXY=direct go install golang.org/x/tools/gopls@latest
GOPROXY=direct go install github.com/nametake/golangci-lint-langserver@latest
GOPROXY=direct go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest
echo "1.2. Install Golang packages for Terraform"
GOPROXY=direct go install github.com/fatih/hclfmt@latest
echo "1.3. Install Golang packages for Helm"
GOPROXY=direct go install github.com/mrjosh/helm-ls@latest

echo "2. Install Homebrew packages"
echo "2.1. Install Homebrew packages for Bash"
brew install shellharden
echo "2.2. Install Homebrew packages for Markdown"
brew install ltex-ls
echo "2.3. Install Homebrew packages for Docker"
brew install hadolint
echo "2.4. Install Homebrew packages for Git"
brew install gitlint
echo "2.5. Install Homebrew packages for YAML"
brew install yamlfmt
echo "2.6. Install Homebrew packages for C/C++"
brew install cpplint
brew install cppcheck
echo "2.7. Install Homebrew packages for Python"
brew install pylint

echo "3. Install NPM packages"
echo "3.1. Install NPM packages for Bash"
npm i -g bash-language-server
echo "3.2. Install NPM packages for Markdown"
npm i -g remark-language-server
brew install ltex-ls
echo "3.3. Install NPM packages for Ansible"
npm i -g @ansible/ansible-language-server
echo "3.4. Install NPM packages for Docker"
npm i -g dockerfile-language-server-nodejs
echo "3.5. Install NPM packages for Python"
npm install -g pyright

echo "Prepare is done!"

echo "Please run nvim"

printf "In Neovim run \n:Lazy sync\ncommand for update plugins"

echo "Installing all Mason plugins"

# nvim +MasonInstallAll

echo "All done!"
echo "Happy coding... :)"
