if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
  source /usr/local/etc/bash_completion.d/git-completion.bash
  PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUNTRACEKFILES=1
  GIT_PS1_SHOWUPSTREAM=auto
fi