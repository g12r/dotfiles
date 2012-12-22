# https://github.com/gc zsh theme

function _prompt_char() {
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    echo "%{%F{blue}%}±%{%f%k%b%}"
  else
    echo ''
  fi
}

PROMPT='%{%f%k%b%}
%{%K{black}%F{green}%}%n%{%F{blue}%}@%{%F{cyan}%}%m%{%F{green}%} %{%b%F{yellow}%K{black}%}%~%{%F{green}%} $(git_prompt_info)%E%{%f%k%b%}
%{%K{black}%}%{%K{black}%}$%{%f%k%b%} '

RPROMPT='!%{%B%F{cyan}%}%!%{%f%k%b%}'