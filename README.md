## My dotfiles backed up using git bare repo 
### Below is steps on how i setup git bare repo and how to manage going forward:
- Create a directory for git bare repo:
    ```bash
    mkdir $HOME/dotfiles
    ```
    
- Initialize a bare git repo:
    ```bash
    git init --bare $HOME/dotfiles
    ```
    
- [Create a new repository on GitHub](https://github.com/akus0/dotfiles):
      
- Add an alias to your shell configuration file:
    ```bash
    echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"' >> $HOME/.zshrc
    ```
    
- Reload shell configuration:
    ```bash
    source $HOME/.zshrc
    ```
    
- Configure local git repo:
    ```bash
    dotfiles config --local status.showUntrackedFiles no
    ```
    
- Add and commit dotfiles:
    ```bash
    dotfiles add ~/.zshrc
    dotfiles commit -m "Add .zshrc"
    ```

- Set GitHub repo as the remote origin:
    ```bash
    dotfiles remote add origin https://github.com/MattAshford/dotfiles.git
    ```

- Push changes to GitHub:
    ```bash
    dotfiles push --set-upstream origin master
    ```


### Managing dotfiles going forward:
- Add new dotfiles:
    ```bash
    dotfiles add ~/newdotfile
    ```

- Commit changes:
    ```bash
    dotfiles commit -m "Add newdotfile"
    ```

- Push changes to GitHub:
    ```bash
    dotfiles push
    ```
