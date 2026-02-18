if status is-interactive
    # Commands to run in interactive sessions can go here
end

# aliases: neovim
alias py="python3"
alias n="nvim"
alias nv="nvim"
alias nc="nvim -u ~/.config/nvim_clean/init.lua"

# aliases: git
alias ga='git add'
alias gb='git branch'
alias gw='git switch'
alias gc='git commit'
alias gcl='git clone'
alias gs='clear -x; git status; git --no-pager log --oneline -4'
alias gd='git diff --output-indicator-new=" " --output-indicator-old=" "'
alias gi='git init'
alias gp='git push'
alias gu='git pull'
alias gl='git log --graph --all --pretty=format:"%C(magenta)%n %C(white) %an %ar%C(blue) %D%n%s%n"'

# sourcing
starship init fish | source
zoxide init fish | source
leadr --fish | source
