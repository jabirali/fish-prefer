function prefer --description 'Abbreviations that check what commands are installed'
	for rhs in $argv
		set rhs (string split --no-empty ' ' $rhs)
		if [ (command -v $rhs[1]) ]
			for lhs in $argv
				set lhs (string split --no-empty ' ' $lhs)
				if [ $rhs[1] != $lhs[1] ]
					abbr -ga $lhs[1] $rhs
				end
			end
			return
		end
	end
end
