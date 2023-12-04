abbr -a fsc nvim ~/.config/fish/config.fish
abbr -a c cargo
abbr -a g git
abbr -a e nvim

# start tmux
if command -v tmux > /dev/null
    function tx 
        tmux new -As0
    end
end

if command -v exa > /dev/null
	abbr -a l 'exa'
	abbr -a ls 'exa'
	abbr -a ll 'exa -l'
	abbr -a lll 'exa -la'
else
	abbr -a l 'ls'
	abbr -a ll 'ls -l'
	abbr -a lll 'ls -la'
end

pyenv init - | source
