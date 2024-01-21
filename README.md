## Dotfiles Management with Git Bare Repository
### Setting up the Git Bare Repository:
- Create a directory for your git bare repository:
    ```bash
    mkdir $HOME/dotfiles
    ```
    
- Initialize a bare git repository:
    ```bash
    git init --bare $HOME/dotfiles
    ```

    
### GitHub Integration:
- [Create a new repository on GitHub](https://github.com/):
    - Name: `dotfiles`
      
- Add an alias to your shell configuration file:
    ```bash
    echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"' >> $HOME/.zshrc
    ```
    
- Reload your shell configuration:
    ```bash
    source $HOME/.zshrc
    ```
    
- Configure local git repository:
    ```bash
    dotfiles config --local status.showUntrackedFiles no
    ```


### Basic Usage:
- Add and commit dotfiles:
    ```bash
    dotfiles add ~/.zshrc
    dotfiles commit -m "Add .zshrc"
    ```

- Set GitHub repository as the remote origin:
    ```bash
    dotfiles remote add origin https://github.com/MattAshford/dotfiles.git
    ```

- Push changes to GitHub:
    ```bash
    dotfiles push --set-upstream origin master
    ```


### Going Forward:
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

Adjust file paths, branch names, and GitHub repository URL based on your dotfiles and GitHub setup.
