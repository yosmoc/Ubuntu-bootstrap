function percol-select-history() {
    local tac
    if which tac > /dev/null; then
        tac="tac"
    else
        tac="tail -r"
    fi
    BUFFER=$(\history -n 1 | \
        eval $tac | \
        percol --query "$LBUFFER")
    CURSOR=$#BUFFER
    zle clear-screen
}

zle -N percol-select-history
bindkey '^r' percol-select-history

function percol-src () {
    local selected_dir=$(ghq list --full-path | percol --query "$LBUFFER")
    if [ -n "$selected_dir" ]; then
        BUFFER="cd ${selected_dir}"
        zle accept-line
    fi
    zle clear-screen
}
zle -N percol-src
bindkey '^]' percol-src

function percol-find-file() {
    if git rev-parse 2> /dev/null; then
        source_files=$(git ls-files)
    else
        source_files=$(find . -type f)
    fi

    selected_files=$(echo $source_files | percol --prompt "[find file]")

    BUFFER="${BUFFER}$(\echo $selected_files | tr '\n' ' ')"
    CURSOR=$#BUFFER
    zle clear-screen
}

zle -N percol-find-file
bindkey '^s' percol-find-file
