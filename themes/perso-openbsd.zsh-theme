# ZSH Theme - Preview: http://gyazo.com/8becc8a7ed5ab54a0262a470555c3eed.png
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

local user_host='%{$terminfo[bold]$fg[green]%}%n%{$fg_bold[red]%}@%{$fg_bold[yellow]%}%m%{$reset_color%}'
local date_time='%{$terminfo[bold]$fg[grey]%}%*%{$reset_color%}'
local current_dir='%{$terminfo[bold]$fg[blue]%}%30<...<%~%<<%{$reset_color%}'

function ip_addr() {
#    echo $(ip addr  | grep eth0 | grep inet | cut -d ' ' -f 6 | cut -d '/' -f 1)
     echo 'FIXME :-p'
}

function ssh_connection() {
  if [[ -n $SSH_CONNECTION ]]; then
      echo "%{$fg_bold[blue]%}(%{$fg_bold[red]%}remote%{$fg_bold[grey]%}:%{$fg_bold[white]%} $(ip_addr) %{$fg_bold[blue]%})%{$reset_color%}"
  else
      echo "%{$fg_bold[blue]%}(%{$fg_bold[grey]%}local:%{$fg_bold[white]%} $(ip_addr) %{$fg_bold[blue]%})%{$reset_color%}"
 fi
}


PROMPT="╭─${user_host} $(ssh_connection) ${date_time} ${current_dir}
╰─%B$%b "
RPS1="${return_code}"
