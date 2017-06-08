#NOTE: Sourced by .bash_profile
#source ~/bash_profile/.git_prompt.sh
#git prompt is no longer being used
### ALIASES ###
alias lsa='ls -al '
alias cls='clear '

# Git Aliases
alias gb='git branch '
alias gd='git diff --color-words '
alias go='git checkout '
alias gs='git status '
alias golo='git log --graph --pretty=format:'"'"'%Cblue%h%Creset %Cgreen[%ar]%Creset (%an) %s/'"'"' '
alias gcm='git commit -am '
alias gaa='git add -A'
alias grh='git reset --hard '
alias grs='git reset --soft '
alias gprune='git remote prune origin'
alias gshowprune='git remote show origin'
alias git='hub '
alias grecent='git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format="%(refname:short)"'


#PostgreSQL aliases
alias pg-start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg-stop= 'pg_ctl -D /usr/local/var/postgres stop -s -m fast'


### PATHS ###
export PATH="/usr/local/bin:$PATH"

export PG_USER=postgres

### PROMPT ###
if [ -f /usr/local/share/gitprompt.sh ]; then
  # GIT_PROMPT_THEME=Default
   # Set config variables first
   GIT_PROMPT_ONLY_IN_REPO=1

   # GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status
   # GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch
   # GIT_PROMPT_SHOW_UNTRACKED_FILES=all # can be no, normal or all; determines counting of untracked files
   # GIT_PROMPT_SHOW_CHANGED_FILES_COUNT=0 # uncomment to avoid printing the number of changed files
   # GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

   # GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
   # GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

   # as last entry source the gitprompt script
   # GIT_PROMPT_THEME=Custom # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)
   # GIT_PROMPT_THEME_FILE=~/.git-prompt-colors.sh
   GIT_PROMPT_THEME=Single_line_Solarized # use theme optimized for solarized color scheme
   . /usr/local/share/gitprompt.sh
fi

if ! ssh-add -L >/dev/null; then
    ssh-add -K
fi
