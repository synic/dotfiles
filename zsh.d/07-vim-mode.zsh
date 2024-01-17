function vi_mode_init() {
  [ -f ~/.zplug/repos/junegunn/fzf/shell/completion.zsh ] && source ~/.zplug/repos/junegunn/fzf/shell/completion.zsh
  [ -f ~/.zplug/repos/junegunn/fzf/shell/key-bindings.zsh ] && source ~/.zplug/repos/junegunn/fzf/shell/key-bindings.zsh
}

zvm_after_init_commands+=(vi_mode_init)
