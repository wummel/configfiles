# ~/.bash_logout: executed by bash(1) when login shell exits.

# when leaving the console clear the screen to increase privacy

if [ "$SHLVL" = 1 ]; then
    [ -x /usr/bin/clear_console ] && /usr/bin/clear_console -q
    PMTLVL=`pmvarrun -u $USER -o 0`
    if [ $PMTLVL -eq 1 ]; then
        $HOME/.kde/shutdown/shutdown.sh
    fi
fi
