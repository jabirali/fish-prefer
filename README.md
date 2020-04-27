# Fish Yourutils

There are a lot of shiny new console programs available for Linux/Unix systems
these days, many of them written in Rust or Go. For instance, the classic Unix
commands `ls`, `find`, `grep`, and `cat` have modern replacements known as
[`exa`][1], [`fd`][2], [`rg`][3], and [`bat`][4]. These modern utilities tend
to be faster, smarter, and more user-friendly than their classic counterparts.
For example, `exa` and `fd` understand `git`, and `bat` has syntax highlighting.

However, there are some challenges with using these modern utilities, which
this plugin tries to address. Firstly, they are not available on every computer.
Manually typing `find` on some computers and `fd` on others is tiring. This 
plugin "autocorrects" `find` to `fd` when it is available, and `fd` to `find`
when not available, helping you use the best tool available on each machine.
Secondly, some tools like `fd` and `bat` are renamed to `fdfind` and `batcat`
on e.g. Ubuntu. This plugin helps you alias these back to `fd` and `bat`, 
making the command-line experience more consistent across distributions. 

Long story short, this plugin switches between `coreutils` and "your utils",
depending on what is available on each machine. To install the plugin using
[fisher][5], just use this command:

    fisher add jabirali/fish-yourutils

[1]: https://the.exa.website/
[2]: https://github.com/sharkdp/fd
[3]: https://github.com/BurntSushi/ripgrep
[4]: https://github.com/sharkdp/bat
[5]: https://github.com/jorgebucaran/fisher
