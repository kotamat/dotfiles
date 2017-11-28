function percol-select-history() {
  local tac_cmd
  which gtac &> /dev/null && tac_cmd=gtac || tac_cmd=tac
  BUFFER=$($tac_cmd ~/.zsh_history | LC_ALL=C sed 's/^: [0-9]*:[0-9]*;//' \
    | peco)
  CURSOR=$#BUFFER         # move cursor
  zle -R -c               # refresh
}
zle -N percol-select-history

bindkey '^r' percol-select-history
