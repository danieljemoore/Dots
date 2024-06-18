HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt INC_APPEND_HISTORY

#>>> tmux init >>>
if [ -z "$TMUX" ]
then
    tmux attach -t TMUX || tmux new -s TMUX
fi
#<<< tmux init <<<
