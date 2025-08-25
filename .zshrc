#echo "   █████████  █████  █████ █████   █████████  █████  █████ █████";
#echo "  ███░░░░░███░░███  ░░███ ░░███   ███░░░░░███░░███  ░░███ ░░███ ";
#echo " ███     ░░░  ░███   ░███  ░███  ███     ░░░  ░███   ░███  ░███ ";
#echo "░███          ░███   ░███  ░███ ░███          ░███   ░███  ░███ ";
#echo "░███    █████ ░███   ░███  ░███ ░███    █████ ░███   ░███  ░███ ";
# echo "░░███  ░░███  ░███   ░███  ░███ ░░███  ░░███  ░███   ░███  ░███ ";
# echo " ░░█████████  ░░████████   █████ ░░█████████  ░░████████   █████";
# echo "  ░░░░░░░░░    ░░░░░░░░   ░░░░░   ░░░░░░░░░    ░░░░░░░░   ░░░░░ ";
#
#
#
# echo '         _nnnn_';                      
# echo '        dGGGGMMb     ,"""""""""""""".';
# echo '       @p~qp~~qMb    | Linux Rules! |';
# echo '       M|@||@) M|   _;..............';
# echo '       @,----.JM| -';
# echo '      JS^\__/  qKL';
# echo "     dZP        qKRb";
# echo '    dZP          qKKb';
# echo '   fZP            SMMb';
# echo '   HZM            MMMM';
# echo '   FqM            MMMM';
# echo ' __| ".        |\dS"qML';
# echo " |    \`.       | \`' \Zq";
# echo "_)      \.___.,|     .'";
# echo "\____   )MMMMMM|   .'";
# echo "     \`-'       \`--'";

path=('/mnt/c/travail/developpement/chrome/depot_tools/' $path)

source ~/Repos/zsh-autocomplete/zsh-autocomplete.plugin.zsh
. "$HOME/.asdf/asdf.sh"


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:/home/guigui/.local/bin/"

export LS_COLORS="rs=0:no=00:mi=00:mh=00:ln=01;36:or=01;31:di=01;34:ow=04;01;34:st=34:tw=04;34:pi=01;33:so=01;33:do=01;33:bd=01;33:cd=01;33:su=01;35:sg=01;35:ca=01;35:ex=01;32:"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'-m --preview-window right:60%:hidden:wrap --bind ctrl-/:toggle-preview --preview "cat {}"'

alias ls='colorls'
alias esb='cd /mnt/c/travail/esb'
alias bat='batcat'
export JAVA_HOME=/home/guigui/.asdf/installs/java/corretto-17.0.10.7.1
(sudo /home/guigui/.add_win_hostname.sh &) &> /dev/null

bindkey "${key[Up]}" up-line-or-local-history
bindkey "${key[Down]}" down-line-or-local-history

up-line-or-local-history() {
    zle set-local-history 1
    zle up-line-or-history
    zle set-local-history 0
}
zle -N up-line-or-local-history
down-line-or-local-history() {
    zle set-local-history 1
    zle down-line-or-history
    zle set-local-history 0
}
zle -N down-line-or-local-history

bindkey "^[[1;5A" up-line-or-history    # [CTRL] + Cursor up
bindkey "^[[1;5B" down-line-or-history  # [CTRL] + Cursor down

eval $(thefuck --alias)

eval "$(starship init zsh)"


if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux new-session -s default
fi
