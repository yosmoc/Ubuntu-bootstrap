if [ "$TMUX" = "" ]; then
    tmux attach;
    if [ $? ]; then
        tmux;
    fi
fi
