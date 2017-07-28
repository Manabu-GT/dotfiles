# .bashrc
 
# Per machine setting
if [ -f ~/.bashrc_extra ] ; then
. ~/.bashrc_extra
fi

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
  source $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
  source $(brew --prefix)/etc/bash_completion.d/git-completion.bash
  PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '
  GIT_PS1_SHOWDIRTYSTATE=1
  GIT_PS1_SHOWUNTRACEKFILES=1
  GIT_PS1_SHOWSTASHSTATE=1
  GIT_PS1_SHOWUPSTREAM=auto
fi

# Gradle completion
source $HOME/bash_completion.d/gradle-completion.bash

# Aliases and functions

# Install adb-peco
alias adb='adb-peco'

# Android aliases
alias adb-restart='adb kill-server; adb start-server'
alias screenshot='screenshot2 $TMPDIR/screenshot.png; open $TMPDIR/screenshot.png'
alias installapp='find ./ -name *.apk | peco | xargs adb install -r'
alias uninstallapp='adbp shell pm list package | sed -e s/package:// | peco | xargs adbp uninstall'
alias bugreport='adb bugreport'
alias dumptop='adb shell dumpsys activity top'

# Build with cached dependencies
alias gb='./gradlew --offline assembleDebug'
# Notify after build is completed
alias noti='terminal-notifier -message "APK Build Done!!"'
alias gbn='./gradlew --offline assembleDebug && noti'
