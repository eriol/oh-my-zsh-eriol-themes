#!/usr/bin/env zsh

local user_or_root='%(#.#.❯)'

local ret_status="%(?:%{$fg[green]%}${user_or_root} :%{$fg[red]%}${user_or_root} %s)"

HOST_USER_PROMPT="%{$FG[208]%}%n@%m"
PATH_PROMPT="%{$fg[green]%}%p %{$fg[cyan]%}%~ %{$reset_color%}"
GIT_PROMPT="\$(git_prompt_info)"
VIRTUALENV_PROMPT="\$(virtualenv_prompt_info)"
RETURN_PROMPT="${ret_status}% %{$reset_color%}"
PROMPT="$VIRTUALENV_PROMPT$HOST_USER_PROMPT$PATH_PROMPT$GIT_PROMPT$RETURN_PROMPT"

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[white]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%})"

ZSH_THEME_VIRTUALENV_PREFIX="%{$reset_color%}%{$fg[blue]%}"
ZSH_THEME_VIRTUALENV_SUFFIX="!%{$reset_color%} "
