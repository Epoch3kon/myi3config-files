

#Home End Delete
bindkey -M emacs "${terminfo[khome]/O/[}" beginning-of-line
bindkey -M emacs "${terminfo[kend]/O/[}" end-of-line
bindkey -M emacs "$terminfo[kdch1]" delete-char

#export PS1="%{%F{blue}%}%n%{%f%}@%{%F{green}%}%m%{%F{yellow}%} %~ %{$%f%} %"
export PS1="%B%F{blue}%(?..%? )%f%b%B%F{blue}%n%f%b%F{green}@%m%f %B%40<..<%F{yellow}%~%f $ "


#Autocomplete
autoload -Uz compinit; compinit; _comp_options+=(globdots)
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
