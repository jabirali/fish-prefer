# Fish Prefer

NOTE: This plugin is being retired as its core functionality has now been
integrated into [fish-abbrfile](https://github.com/jabirali/fish-abbrfile).

There are a lot of shiny new console programs available for Linux/Unix systems
these days. For instance, the classic Unix commands `ls`, `find`, `grep`, and `cat`
have the modern replacements [`exa`][1], [`fd`][2], [`rg`][3], and [`bat`][4]. 
These modern utilities tend to be faster, smarter, and more user-friendly than
their classic counterparts. For example, `exa` and `fd` understand `git`, `rg` can be
over an order of magnitude faster than `grep`, and `bat` has syntax highlighting.

However, these utilities are not consistently available on every platform. Some
only have the traditional Unix tools available (e.g. `find`), and others have
inconsistent command names (Ubuntu e.g. renames `fd` to `fdfind`). This plugin
tries to address this problem, by using Fish abbreviations to "autocorrect" 
`find` to `fd` or `fdfind` when these are available, and similarly autocorrecting
`fd` and `fdfind` back to `find` on platforms where these are not available.
This is done by simply specifying a chain of commands, where the ones to
the left are preferred when available. In your `config.fish`, you simply add:

	prefer fd fdfind find

This also works for commands that take arguments, for instance:

	prefer 'exa -l'  'ls -l'  'll'
	prefer 'exa -la' 'ls -la' 'la'
	prefer 'exa'     'ls'     'l'

Long story short, this plugin switches between `coreutils` and "your utils",
depending on what is available on each machine. To install it via [`fisher`][5]:

    fisher add jabirali/fish-prefer


[1]: https://the.exa.website/
[2]: https://github.com/sharkdp/fd
[3]: https://github.com/BurntSushi/ripgrep
[4]: https://github.com/sharkdp/bat
[5]: https://github.com/jorgebucaran/fisher

## Related projects

- [Fish-virtuoso](https://github.com/jabirali/fish-virtuoso)
