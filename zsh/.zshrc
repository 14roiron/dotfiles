# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that soh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh  ]]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

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
plugins=(git battery command-not-found last-working-dir z vundle history-substring-search tmux zsh-autosuggestions zsh-syntax-highlighting) 
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

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir root_indicator rbenv vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status load time)

xmodmap -e 'clear Lock' -e 'keycode 0x42 = Escape' 