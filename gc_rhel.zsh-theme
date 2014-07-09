# https://github.com/gc zsh theme

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%F{blue}%}±%{%f%k%b%}"
  else
    echo ''
  fi
}

PROMPT='
%{$fg_bold[yellow]%}%n%{$fg_bold[magenta]%}@%{$fg[cyan]%}%m%{$reset_color%} %{$fg_bold[yellow]%}%~%{$reset_color%} %{$fg[gray]%}$(git_prompt_info)%E%{$reset_color%}
%{$fg[magenta]%}$%{$reset_color%} '