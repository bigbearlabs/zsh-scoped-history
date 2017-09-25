HISTSIZE=1000
SAVEHIST=10000
setopt HIST_SAVE_NO_DUPS INC_APPEND_HISTORY

# allow comments in history, for `##@`
setopt interactivecomments


# HISTFILE=~/.zsh/dirhist/${PWD//\//@}  # STRATEGY centralise around user preferences. 
# mkdir -p ~/.zsh/dirhist

HISTFILE=${PWD}/.history  # STRATEGY store in work dir.


chpwd() {
  [[ $PWD = $OLDPWD ]] || fc -Pp ${PWD}/.history
}



# NOTE trade-offs on where the context save location strategies:
# - under ~/.zsh/dirhist : won't track path changes. context layered on top of paths without reverse dependency.
# - under project path (leaf) : will work with moves. paths are dirtied.
# - under project path (root) : will work with root move. paths are somewhat leses dirtied. subpaths will be context-unaware.
