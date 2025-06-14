export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"
ZSH_THEME="robbyrussell"
plugins=(
zsh-autosuggestions
zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

# User configuration

# aliases: git
alias git='LANG=en_GB git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gcl='git clone'
alias gs='clear -x; git status; git --no-pager log --oneline -4'
alias gd='git diff --output-indicator-new=" " --output-indicator-old=" "'
alias gi='git init'
alias gp='git push'
alias gu='git pull'
alias gl='git log --graph --all --pretty=format:"%C(magenta)%n %C(white) %an %ar%C(blue) %D%n%s%n"'

# mise setup
eval "$(mise activate zsh)"

# asdf setup
. "$(brew --prefix asdf)/libexec/asdf.sh"
export PATH="$HOME/.asdf/shims:$PATH"

alias zshconfig="hx ~/.zshrc"
alias zshsource="source ~/.zshrc"

# For .dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

alias py="python3"
alias n="nvim"
alias nv="nvim"

# presenterm alias
alias pres="presenterm"

eval "$(starship init zsh)"
export PATH="/usr/local/sbin:$PATH"
# eval "$(/usr/local/bin/brew shellenv)"
export ZSH_COMPDUMP="${HOME}/.cache/zsh/.zcompdump-${HOST}-${ZSH_VERSION}"
