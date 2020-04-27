#!/usr/bin/env fish

# Better replacement for `find`.
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

# Better replacement for `grep`.
if type -q rg
	abbr -ga 'grep' 'rg'
else
	abbr -ga 'rg'   'grep'
end

# Better replacement for `ls`.
if type -q exa
	abbr -ga 'ls'   'exa'
	abbr -ga 'll'   'exa -l'
	abbr -ga 'la'   'exa -a'
	abbr -ga 'tree' 'exa -T'
else
	abbr -ga 'll'   'ls -l'
	abbr -ga 'la'   'ls -a'
	abbr -ga 'exa'  'ls'
end

# Better replacement for `cat`.
if type -q batcat
	alias 'bat' 'batcat -p'
	abbr -ga 'cat' 'bat'
else if type -q bat
	alias 'bat' 'bat -p'
	abbr -ga 'cat' 'bat'
else
	abbr -ga 'bat' 'cat'
end
