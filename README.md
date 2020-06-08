# .dotfiles

My personal dotfiles.

They're rather barren at the moment, but it is a work in progress.

Roughly based on https://www.atlassian.com/git/tutorials/dotfiles.

## Deploying

### Linux

Follow the instructions in [this link](https://www.atlassian.com/git/tutorials/dotfiles), they pretty much work as is without any significant modifications.

### Windows

If you're unfortunate enough to be forced to develop in a Windows environment, do the following. This assumes you have a working cygwin configuration, or can otherwise run basic bash commands.

#### Mainline:
1. Commit the following alias to your .bashrc or .zsh:
    * `alias win_config='git --git-dir="$HOME/.cfg/" --work-tree="$HOME"'`
2. Add ".cfg" to your .gitignore to your home directory
    * `echo ".cfg" >> .gitignore`
3. Clone these dotfiles into a bare repository in a "dot" file of your $HOME:
    * `git clone --bare https://github.com/IllIIIllI/.dotfiles "$HOME/.cfg"`
4. Double check that Step 1 was successful.
5. Checkout the actual content from the bare repository to your $HOME:
    * `win_config checkout`
    * Note: this only works if there aren't any conflicts.
6. Set the flag showUntrackedFiles to no on this specific (local) repository:
    * `win_config config --local status.showUntrackedFiles no`
7. Deployment successful, use as described with [this link](https://www.atlassian.com/git/tutorials/dotfiles).

#### Vim specific:
1. Move the batch file at ~/.vim/win_vim_config.bat to ~.
2. Run said batch file as admin.
    * Sets up the necessary symlinks.
3. Run the PowerShell script at ~/.vim/win_install_vim_plug.ps1.
    * Installs vim_plug
