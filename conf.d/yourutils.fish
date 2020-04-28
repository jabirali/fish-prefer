#!/usr/bin/env fish

if type -q fdfind
	alias 'fd' 'fdfind'
	abbr -ga 'find'   'fd'
	abbr -ga 'fdfind' 'fd'
else if type -q fd
	abbr -ga 'find'   'fd'
	abbr -ga 'fdfind' 'fd'
else
	abbr -ga 'fd'     'find'
	abbr -ga 'fdfind' 'find'
end

if type -q rg
	abbr -ga 'grep' 'rg'
else
	abbr -ga 'rg'   'grep'
end

if type -q exa
	abbr -ga 'ls'   'exa'
	abbr -ga 'll'   'exa -l'
	abbr -ga 'la'   'exa -la'
	abbr -ga 'tree' 'exa -T'
else if type -q lsd
	abbr -ga 'ls'   'lsd'
	abbr -ga 'll'   'lsd -l'
	abbr -ga 'la'   'lsd -la'
	abbr -ga 'tree' 'lsd --tree'
else
	abbr -ga 'll'   'ls -l'
	abbr -ga 'la'   'ls -la'
	abbr -ga 'exa'  'ls'
end

if type -q batcat
	alias 'bat' 'batcat -p'
	abbr -ga 'cat' 'bat'
else if type -q bat
	alias 'bat' 'bat -p'
	abbr -ga 'cat' 'bat'
else
	abbr -ga 'bat' 'cat'
end

if type -q htop
	abbr -ga 'top' 'htop'
else
	abbr -ga 'htop' 'top'
end

if type -q parallel
	abbr -ga 'xargs' 'parallel'
else
	abbr -ga 'parallel' 'xargs'
end
