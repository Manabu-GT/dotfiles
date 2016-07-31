# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

# User specific environment and startup programs
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
export ANDROID_HOME=/Users/manabu/Documents/android-sdk-macosx
export NDK_HOME=/Users/manabu/Documents/android-sdk-macosx/ndk-bundle
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$NDK_HOME

# Gradle tab completion
source ~/gradle-tab-completion.bash

# Android completion
source ~/android_completion

# GenyMotion Peco
source ~/genymotion_peco.sh

# JAVA
export JAVA7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
JAVA8_HOME=`/usr/libexec/java_home -- v "1.8" -F`
if [ $? -eq 0 ]; then
    export JAVA8_HOME
    export JAVA_HOME=$JAVA8_HOME
fi

unset USERNAME
