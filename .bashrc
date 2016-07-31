# .bashrc
 
# Per machine setting
if [ -f ~/.bashrc_extra ] ; then
. ~/.bashrc_extra
fi

# User specific aliases and functions

# Install adb-peco on /usr/local/bin
alias adb='adbp'
alias pidcat='pidcatp'

# Convenient Aliases
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

