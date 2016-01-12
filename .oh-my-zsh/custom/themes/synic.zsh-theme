function _virtualenv_prompt_info {
    [[ -n $(whence virtualenv_prompt_info) ]] && virtualenv_prompt_info
}

function _local_user {
    [[ $USER != "synic" ]] || return
    return "$(USER) "
}

function _git_prompt_info() {
  local ref
  if [[ "$(command git config --get oh-my-zsh.hide-status 2>/dev/null)" != "1" ]]; then
    ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
    ref=$(command git rev-parse --short HEAD 2> /dev/null) || return 0
    ref="${ref#refs/heads/}"
    ref=$ref[0,40]
    echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
  fi
}

local ret_status="%(?:%{$fg_bold[yellow]%}:%{$fg_bold[red]%}%s)"

ZSH_THEME_GIT_PROMPT_PREFIX=" (g:"
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX=" (v:"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX=")"
PROMPT='%{$fg_bold[yellow]%}[${_local_user}%c$(_virtualenv_prompt_info)$(_git_prompt_info)]%(!.#.$)%{$reset_color%} '
