# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERMINAL=gnome-terminal
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="ys"
ZSH_THEME="my-agnoster"
#ZSH_THEME="powerline"
#ZSH_THEME="bullet-train"
#ZSH_THEME="dracula"
#POWERLINE_PATH=short
#ZSH_THEME="emotty"

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[cursor]=underline

BULLETTRAIN_CONTEXT_SHOW=true
BULLETTRAIN_TIME_SHOW=false

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.config/yadm/oh-my-zsh-custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git debian battery pip pylint python themes fast-syntax-highlighting z colorize colored-man-pages
         emotty emoji lpass)

# zstyle :omz:plugins:keychain agents gpg,ssh

# User configuration
export EDITOR="emacsclient -c -a /usr/bin/emacs"
export VISUAL="emacsclient -c -a /usr/bin/emacs"
export EMAIL="nicolas.richart@epfl.ch"

#alias ssh='afssh -c clusters@bender-x1 -C default@bender-x1 -- $@'

# #autoload bashcompinit
# #bashcompinit

# export PYTHONPATH=$HOME/dev/akantu-hg/third-party/blackdynamite/python:$PYTHONPATH

# source $HOME/opt/set.sh

# export PETSC_DIR=/usr/lib/petscdir/3.4.2
# export PETSC_ARCH=linux-gnu-c-opt

# export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR"'/keeagent.socket'

# eval $(keychain --inherit any --eval --agents "gpg" -Q 53C0230A)

#export PYTHONPATH=$HOME/.local/lib/python3.10/site-packages
# export PATH=$HOME/dev/scitas/spack/bin:$PATH


# #source $HOME/.bash_completion.d/python-argcomplete.sh
# #eval "$(register-python-argcomplete $HOME/dev/scitas/spack/bin/spack)"

# export PATH=$HOME/opt/arcanist/bin:$PATH

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.luarocks/bin:$PATH

# #export PATH=$HOME/opt/ParaView-5.2.0-Qt4-OpenGL2-MPI-Linux-64bit/bin:$PATH
# export PATH=$HOME/opt/ParaView-5.3.0-RC1-Qt5-OpenGL2-MPI-Linux-64bit/bin:$PATH
export PATH=$HOME/.local/share/flatpak/exports/bin:$PATH
export XDG_DATA_DIRS=$HOME/.local/share/flatpak/exports/share:/var/lib/flatpak/exports/share:$XDG_DATA_DIRS

# source /usr/share/lmod/lmod/init/zsh
# module use dev/scitas/spack/share/spack/lmod/modulefiles/linux-x86_64/Core/

# source $HOME/opt/spack/share/spack/setup-env.sh

source $ZSH/oh-my-zsh.sh
export TERM=xterm-direct
#export PAGER=more
# You may need to manually set your language environment
#export LC_TIME=fr_CH.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export CCACHE_DIR=${HOME}/.ccache
export CCACHE_NOHASHDIR=1
export CCACHE_COMPILERCHECK=content

export TERM=xterm-direct

eval $(dircolors /home/richart/.dir_colors/dircolors | head -n 1)

unset SSH_AGENT_PID
export SSH_AUTH_SOCK=$HOME/.ssh/sockets/ssh_auth_sock_${HOST}
export TERM=xterm-direct

[ $TERM = "dumb" ] && unsetopt zle && PS1='$ '
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
  export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
  gpgconf --launch gpg-agent
fi

