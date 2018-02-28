###############################################################################
#    byobu's tmux f-key keybindings
#
#    Copyright (C) 2011-2014 Dustin Kirkland <kirkland@byobu.org>
#
#    Authors: Dustin Kirkland <kirkland@byobu.org>
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, version 3 of the License.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
###############################################################################

# Byobu's Keybindings
# Documented in: $BYOBU_PREFIX/share/doc/byobu/help.tmux.txt
bind-key -n F2 new-window -c "#{pane_current_path}" \; rename-window "-"
bind-key -n C-F2 display-panes \; split-window -h -c "#{pane_current_path}"
bind-key -n S-F2 display-panes \; split-window -v -c "#{pane_current_path}"
bind-key -n C-S-F2 new-session
bind-key -n F3 previous-window
bind-key -n F4 next-window
bind-key -n M-Left previous-window
bind-key -n M-Right next-window
bind-key -n M-Up switch-client -p
bind-key -n M-Down switch-client -n
bind-key -n S-F3 display-panes \; select-pane -t :.-
bind-key -n S-F4 display-panes \; select-pane -t :.+
bind-key -n S-Up display-panes \; select-pane -U
bind-key -n S-Down display-panes \; select-pane -D
bind-key -n S-Left display-panes \; select-pane -L
bind-key -n S-Right display-panes \; select-pane -R
bind-key -n C-F3 display-panes \; swap-pane -s :. -t :.- \; select-pane -t :.-
bind-key -n C-F4 display-panes \; swap-pane -s :. -t :.+ \; select-pane -t :.+
bind-key -n C-S-F3 swap-window -t :-1
bind-key -n C-S-F4 swap-window -t :+1
bind-key -n M-S-Up resize-pane -U
bind-key -n M-S-Down resize-pane -D
bind-key -n M-S-Left resize-pane -L
bind-key -n M-S-Right resize-pane -R
