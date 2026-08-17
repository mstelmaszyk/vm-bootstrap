function zvm_config() {
  ZVM_LINE_INIT_MODE=i
  ZVM_NORMAL_MODE_CURSOR=bbl
  ZVM_VI_SURROUND_BINDKEY=classic
}

function zvm_after_init() {
  # Normal mode tweaks
  bindkey -M vicmd 'H' beginning-of-line
  bindkey -M vicmd 'L' end-of-line

  # Insert mode tweaks
  bindkey -M viins '\e.' insert-last-word

  # Visual mode tweaks
  bindkey -M visual 'J' down-line-or-history
}