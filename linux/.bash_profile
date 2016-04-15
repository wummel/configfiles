# .bash_profile
# Get the aliases and functions
if [ -e $HOME/.bashrc ]; then
    . $HOME/.bashrc
fi
shopt -s huponexit

# augment PATH with sbin dirs
PATH="/sbin:/usr/sbin:$PATH"
export PATH
