# Defined in - @ line 1
function sj --wraps='sudo journalctl' --description 'alias sj sudo journalctl'
  sudo journalctl $argv;
end
