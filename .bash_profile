# .bash_profile
# runs per-login, use to set environment variables

# Get the aliases and functions
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

# For Android
export ANDROID_SDK=/Users/Manabu/Library/Android/sdk
export ANDROID_NDK=/Users/Manabu/Library/Android/sdk/ndk-bundle
export PATH=$PATH:$ANDROID_SDK/platform-tools:$ANDROID_SDK/tools:$ANDROID_NDK
