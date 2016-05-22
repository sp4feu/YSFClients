#!/bin/sh                                                                                           
# Run this to generate all the initial makefiles, etc.

srcdir=`dirname $0`
test -z "$srcdir" && srcdir=.

(test -f $srcdir/YSFReflector.cpp) || {
    echo -n "**Error**: Directory "\`$srcdir\'" does not look like the"
    echo " ysfreflector top-level directory"
    exit 1
}

which gnome-autogen.sh || {
    echo "You need to install gnome-common from the GNOME git"
    exit 1
}

REQUIRED_AUTOCONF_VERSION=2.63
REQUIRED_AUTOMAKE_VERSION=1.11
REQUIRED_INTLTOOL_VERSION=0.40.0
REQUIRED_PKG_CONFIG_VERSION=0.22
. gnome-autogen.sh