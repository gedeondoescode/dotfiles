function killyourself --wraps='systemctl poweroff' --description 'alias killyourself systemctl poweroff'
  systemctl poweroff $argv
        
end
