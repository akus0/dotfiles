## Dotfiles Management with Git Bare Repository

### Setting up the Git Bare Repository:

1. Create a directory for your git bare repository:

    ```bash
    mkdir $HOME/dotfiles
    ```

2. Initialize a bare git repository:

    ```bash
    git init --bare $HOME/dotfiles
    ```

### GitHub Integration:

3. Create a new repository on [GitHub](https://github.com/):

    - Name: `dotfiles`
    - Description: (Optional)

4. Add an alias to your shell configuration file (e.g., `.bashrc`, `.zshrc`):

    ```bash
    echo 'alias dotfiles="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"' >> $HOME/.zshrc
    ```

5. Reload your shell configuration:

    ```bash
    source $HOME/.zshrc
    ```

6. Configure local git repository:

    ```bash
    dotfiles config --local status.showUntrackedFiles no
    ```

### Basic Usage:

7. Add dotfiles to the repository:

    ```bash
    dotfiles add ~/.zshrc
    ```

8. Commit changes:

    ```bash
    dotfiles commit -m "Add .zshrc"
    ```

9. Set GitHub repository as the remote origin:

    ```bash
    dotfiles remote add origin https://github.com/yourusername/dotfiles.git
    ```

    Replace `yourusername` with your GitHub username.

10. Push changes to GitHub:

    ```bash
    dotfiles push --set-upstream origin main
    ```

Adjust file paths, branch names, and GitHub repository URL based on your dotfiles and GitHub setup.
