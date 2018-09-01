# https://github.com/gc zsh theme

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%F{blue}%}±%{%f%k%b%}"
  else
    echo ''
  fi
}

PROMPT='
%{$fg_bold[cyan]%}%n%{$fg_bold[magenta]%}@%{$fg[yellow]%}%m%{$reset_color%} %{$fg_bold[cyan]%}%~%{$reset_color%} %{$fg[white]%}$(git_prompt_info)%E%{$reset_color%}
%{$fg[yellow]%}λ%{$reset_color%} '

RPROMPT='!%{%B%F{cyan}%}%!%{%f%k%b%}'
