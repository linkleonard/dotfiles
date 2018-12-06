# Need to run this as an administrator... :/
new-item -type symboliclink -path D:\Documents\.emacs -value D:\Documents\dotfiles\emacs\emacs
New-Item -Path ~\AppData\Roaming\Code\User\settings.json -ItemType SymbolicLink -Value D:\Documents\dotfiles\vscode\settings.json
New-Item -Path ~\AppData\Roaming\Code\User\keybindings.json -ItemType SymbolicLink -Value D:\Documents\dotfiles\vscode\keybindings.json

# Command line tools
choco install rg
