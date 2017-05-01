#NOTE: Sourced by .bash_profile
#source .git_prompt.sh
#git prompt is no longer being used
### ALIASES ###
alias lsa='ls -al '
alias cls='clear '

# Git Aliases
alias gb='git branch '
alias gd='git diff '
alias go='git checkout '
alias gs='git status '
alias golo='git log '
alias gcm='git commit -am '
alias gaa='git add -A'

### PATHS ###
export PATH="/usr/local/bin:$PATH"

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
   GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme
   . /usr/local/share/gitprompt.sh
fi
