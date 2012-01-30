# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# User specific aliases and functions
CONFDIR=$HOME/.bash
CONFFILES="environment shellvars aliases functions git-completion fancybash"
# if running interactively, then:
if [ "$PS1" ]; then
    for f in $CONFFILES; do
        [ -f $CONFDIR/$f ] && . $CONFDIR/$f
    done
fi
