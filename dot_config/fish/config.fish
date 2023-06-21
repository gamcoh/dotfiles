if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g EDITOR nvim

# Aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME/'
alias l='exa -al --color=always --group-directories-first --icons'
alias lt='exa -aT --color=always --group-directories-first --icons'


# Set vi mode
fish_vi_key_bindings


# Keybindings
bind -M insert \el 'echo "" && exa -al --color=always --group-directories-first --icons'


# Launch Mcfly
#source $HOME/.config/fish/mcfly.fish

# Functions needed for !! and !$ https://github.com/oh-my-fish/plugin-bang-bang
function __history_previous_command
  switch (commandline -t)
  case "!"
    commandline -t $history[1]; commandline -f repaint
  case "*"
    commandline -i !
  end
end

function __history_previous_command_arguments
  switch (commandline -t)
  case "!"
    commandline -t ""
    commandline -f history-token-search-backward
  case "*"
    commandline -i '$'
  end
end

if [ "$fish_key_bindings" = fish_vi_key_bindings ];
  bind -Minsert ! __history_previous_command
  bind -Minsert '$' __history_previous_command_arguments
else
  bind ! __history_previous_command
  bind '$' __history_previous_command_arguments
end

set ANDROID_SDK_ROOT /home/gamzer/Android/Sdk
set PATH $PATH:/home/gamzer/.cargo/bin
