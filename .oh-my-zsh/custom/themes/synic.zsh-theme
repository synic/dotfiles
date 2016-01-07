function _virtualenv_prompt_info {
    [[ -n $(whence virtualenv_prompt_info) ]] && virtualenv_prompt_info
}

function _local_user {
    [[ $USER != "synic" ]] || return
    return "$(USER) "
}

local ret_status="%(?:%{$fg_bold[yellow]%}:%{$fg_bold[red]%}%s)"

ZSH_THEME_GIT_PROMPT_PREFIX=" (g:"
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_VIRTUAL_ENV_PROMPT_PREFIX=" (v:"
ZSH_THEME_VIRTUAL_ENV_PROMPT_SUFFIX=")"
PROMPT='%{$fg_bold[yellow]%}[${_local_user}%c$(_virtualenv_prompt_info)$(git_prompt_info)]${ret_status}%(!.#.$)%{$reset_color%} '
