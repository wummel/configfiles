# .bash_profile
# Get the aliases and functions
if [ -e $HOME/.bashrc ]; then
    . $HOME/.bashrc
fi
shopt -s huponexit

# augment PATH with local dirs
PATH="/usr/lib/ccache:/sbin:/usr/sbin:$HOME/bin:$PATH"
export PATH
#/usr/bin/keychain $HOME/.ssh/id_dsa
#. $HOME/.keychain/${HOSTNAME}-sh
