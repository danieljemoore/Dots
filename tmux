#########
## Bind
#########

bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

unbind '"'
unbind %

bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"

#########
## Setting
#########

set-option -g status-style "bg=colour117, fg=colour232"

set -g pane-active-border-style "fg=colour117"