if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/etc/bash_completion.d/git-prompt.sh
  source /usr/local/etc/bash_completion.d/git-completion.bash
  PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUNTRACEKFILES=1
  GIT_PS1_SHOWSTASHSTATE=1
  GIT_PS1_SHOWUPSTREAM=auto
fi

# For Android
export ANDROID_HOME=/Users/mshimobe/Documents/android-sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools

# Install adb-peco on /usr/local/bin
alias adb='adbp'
alias pidcat='pidcatp'

# Convenient Aliases
alias adb-restart='adb kill-server; adb start-server'
alias screenshot='screenshot2 $TMPDIR/screenshot.png; open $TMPDIR/screenshot.png'
alias installapp='find ./ -name *.apk | peco | xargs adb install -r'
alias uninstallapp='adbp shell pm list package | sed -e s/package:// | peco | xargs adbp uninstall'

# Gradle tab completion
source ~/gradle-tab-completion.bash

# Android completion
source ~/android_completion

# GenyMotion Peco
source ~/genymotion_peco.sh

if [ -f ~/.nvm/nvm.sh ]; then
  source ~/.nvm/nvm.sh
  nvm use v0.10.21
fi
