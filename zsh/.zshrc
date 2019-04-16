# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# optionally, if you set this to "random", it'll load a random theme each
# time that soh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

export PATH=$PATH:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:$HOME/Library/Python/2.7/bin
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
plugins=(vi-mode git command-not-found last-working-dir z vundle history-substring-search tmux bundler common-aliases pip python sudo zsh-syntax-highlighting zsh-autosuggestions  cp mosh)

export TERM="xterm-256color"
DEFAULT_USER=$(whoami)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
if [ -d "$HOME/.local/bin"  ]; then
    PATH="$HOME/.local/bin:$PATH"
fi
# use 256 color terminal
#export TERM=xterm-256color

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
#------------------------------------------------------
# Aliases
#------------------------------------------------------

export PATH="/usr/local/sbin:$PATH"
if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh  ]]; then
    source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

#if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/powerline.zsh  ]]; then
#    source /usr/local/lib/python2.7/site-packages/powerline/bindings/powerline.zsh 
#fi
### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir root_indicator rbenv vcs vi_mode)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status load time)



# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/Users/Yohann/.zshrc'


# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/home/yroiron/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/home/yroiron/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/yroiron/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/home/yroiron/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
autoload -Uz compinit
compinit
# End of lines added by compinstall
alias python="/usr/bin/python2.7"
source /opt/ros/melodic/setup.zsh
source ~/Coding/catkin_ws2/devel/setup.zsh
#export path=($HOME/Qt5.6.1/5.6/gcc_64/bin $path)
#export path=($HOME/Qt5.6.1/5.6/gcc_64/lib/cmake $path)
export LD_LIBRARY_PATH=/home/YRoiron/Qt/5.11.1/gcc_64/lib/:$LD_LIBRARY_PATH
export CMAKE_PREFIX_PATH="$HOME/Qt5.6.1/5.6/gcc_64/lib/cmake:$CMAKE_PREFIX_PATH"

if [ "$TMUX" = "" ]; then tmux attach; fi
