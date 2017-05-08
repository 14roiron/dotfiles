# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# optionally, if you set this to "random", it'll load a random theme each
# time that soh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

#if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh  ]]; then
#    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
#fi

if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/powerline.zsh  ]]; then
    source /usr/local/lib/python2.7/site-packages/powerline/bindings/powerline.zsh 
fi
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

#Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(vi-mode git battery command-not-found last-working-dir z vundle history-substring-search tmux bundler osx brew composer common-aliases pip python sudo symfony2 subl  zsh-syntax-highlighting zsh-autosuggestions  cp mosh)

export TERM="xterm-256color"
DEFAULT_USER=$(whoami)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
if [ -d "$HOME/.local/bin"  ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
# use 256 color terminal
export TERM=xterm-256color

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
#------------------------------------------------------
# Aliases
#------------------------------------------------------
#alias tmux='tmux -2'
#alias serve='python -m SimpleHTTPServer'
#python alias
alias pip3='python3 -m pip'
alias pdb='python -m powerline.bindings.pdb'
alias pdb3='python3 -m powerline.bindings.pdb'
alias pdb3.5='python3.5 -m powerline.bindings.pdb'

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir root_indicator rbenv vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status load time)

xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' 

export PATH="/usr/local/sbin:$PATH"

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/Users/Yohann/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
export PATH="/usr/local/opt/curl/bin:$PATH"
ssh-add -A &> /dev/null
compdef sshrc=ssh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
alias @django='source /Users/Yohann/@django/bin/activate'
# pyenv local 3.5.3
# pyenv install 2.6.9
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
