
## Apps to install
- [iTerm2](https://iterm2.com/)
- [homebrew](https://zhttps://brew.sh/) 
- [tmux](https://formulae.brew.sh/formula/tmux)
- [vim](https://www.vim.org/download.php) (if not installed with homebrew)

### Dependencies
- [tmux-plugins/tpm](https://https://github.com/tmux-plugins/tpm)
- [reattach-to-user-namespace](https://formulae.brew.sh/formula/reattach-to-user-namespace)

### Settings
- tmux automatically runs when opening iterm:
    - iTerm2 --> Preferences --> Profiles --> General --> Command (select "Command" in dropdown) --> "/usr/local/bin/tmux" or location of tmux

- tmux ctrl + opt bindings work:
    - iTerm2 --> Preferences --> Profiles --> Keys --> Left Option Key & Right Option Key are "Esc+"

- remap keys to use use mechanical keyboard with mac
	- System Preferences --> Keyboard --> Modifier Keys --> Select Keyboard "USB KEYBOARD" --> Option Key = Command, Command Key = Option
