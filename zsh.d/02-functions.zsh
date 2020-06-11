# functions
histsearch() { grep "$@" ~/.zsh_history }

jqjq() {
    jq -C "$@" | less -FR
}
