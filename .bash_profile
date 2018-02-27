export DOTFILES_PATH="$HOME/.dotfiles"

# Homebrew
export PATH="/Users/llaw/homebrew/bin:$PATH"

. $DOTFILES_PATH/.bash_profile.local

# Custom executables
export PATH="/Users/llaw/bin:$PATH"

# z.sh
# ================================================================

. /Users/llaw/Documents/z/z.sh

# pyenv
# ================================================================

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

if which pyenv-virtualenv-init > /dev/null; then
  eval "$(pyenv virtualenv-init -)";
fi

export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# TODO: Figure out how to setup powerline
# source ~/.bash-powerline.sh

. $DOTFILES_PATH/.bash_aliases
. $DOTFILES_PATH/.shell_config
. $DOTFILES_PATH/.shell_functions

export PROMPT_COMMAND="$PROMPT_COMMAND update_prompt;"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
