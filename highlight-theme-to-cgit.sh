#!/bin/sh
[ -d /usr/share/cgit/themes ] || mkdir /usr/share/cgit/themes
for style_sheet in /usr/share/highlight/themes/*.theme; do
	THEME=$(basename $style_sheet .theme)
	highlight --style=$THEME --print-style --style-outfile=$THEME.css
	echo $THEME
done > /usr/share/cgit/themes/syntax-theme-list
