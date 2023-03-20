#!/usr/bin/env sh

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID | cut -d'.' -f4)

LABEL='A'
case ${SOURCE} in
'Norwegian') LABEL='NO' ;;
'ABC') LABEL='US' ;;
esac

sketchybar --set $NAME label="$LABEL"
