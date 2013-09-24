#!/bin/sh
#-------------------------------------------------------------------------------
# Create a patch file for a modified Sublime Text 2 configuration
#-------------------------------------------------------------------------------


# Change into script's directory
cd `dirname $0`


PATH_NEW="$HOME/Library/Application Support/Sublime Text 2"
PATH_OLD="$HOME/Library/Application Support/Sublime Text 2.clean"


diff -Nur -X sublime.excludes "${PATH_OLD}" "${PATH_NEW}" > sublime.patch

#-------------------------------------------------------------------------------
