
### Pre-reqs
Install these tools
- [iTerm2](https://iterm2.com/)
- [homebrew](https://zhttps://brew.sh/) 

### Setting up workspace
After installing the pre-reqs, run `initial-setup.sh` in this directory. Following a successful run of this script,
install your vim plugins.

1. `nvim ~/.config/nvim/init.vim`
2. `:PlugInstall`
3. `:wq`
4. Restart your terminal

Now, your environment should be set up.

### iTerm and Mac keyboard settings
Edit the following settings in iTerm and Mac preferences to make sure your tools work efficiently

- tmux automatically runs when opening iterm:
    - iTerm2 --> Preferences --> Profiles --> General --> Command (select "Command" in dropdown) --> "/usr/local/bin/tmux" or location of tmux

- tmux ctrl + opt bindings work:
    - iTerm2 --> Preferences --> Profiles --> Keys --> Left Option Key & Right Option Key are "Esc+"

- remap keys to use use mechanical keyboard with mac
	- System Preferences --> Keyboard --> Modifier Keys --> Select Keyboard "USB KEYBOARD" --> Option Key = Command, Command Key = Option

### Testing changes
Test changes by running this script on a Docker container

### Installed packages
- tmux
- nvim
- reattach-to-user-namespace
- httpie
- pyenv
- rbenv
- the silver searcher
