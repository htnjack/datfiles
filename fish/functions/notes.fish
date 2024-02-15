function notes --wraps='notes'
    set -gx NOTES_CLI_EDITOR nvim
    set -gx NOTES_CLI_HOME /home/jack/personal/notes
    /home/jack/bin/notes --color-always $argv;
end
