# Setup Procedures

1. Copy the following files to your $HOME directory

    ```
    .git-completion.bash
    .git-prompt.sh
    .gitignore_global
    ```

2. Run the following commands to setup git config

    ```
    git config --global credential.helper cache
    git config --global core.excludesfile ~/.gitignore_global
    git config --global core.autocrlf input
    git config --global color.ui auto
    git config --global alias.st status
    git config --global alias.co checkout
    git config --global alias.ci commit
    git config --global alias.br branch
    git config --global alias.ll "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    git config --global alias.la "log --graph --full-history --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
    ```

3. Add the following script to $HOME/.bashrc

    ```
    if [[ -f $HOME/.git-prompt.sh ]]; then
        source $HOME/.git-prompt.sh
        export GIT_PS1_SHOWDIRTYSTATE=true
        export PS1='\[\033[0;36m\][\u] \w\[\e[0m\]\[\e[0;31m\]$(__git_ps1 " (%s)")\[\e[0m\] \[\033[0;35m\]$\[\e[0m\] '
    else
        export PS1='\[\033[0;36m\][\u] \w\[\e[0m\] \[\033[0;35m\]$\[\e[0m\] '
    fi

    if [ -f ~/.git-completion.bash ]; then
        . ~/.git-completion.bash
    fi
    ```

4. Run the following command

    `source ~/.bashrc`

5. Setup your git username and email

    ```
    git config --global user.name <your-name>
    git config --global user.email <your-email>
    ```


# Git References

- First:            http://rogerdudler.github.io/git-guide
- Or:               http://try.github.io/levels/1/challenges/1
- More:             https://www.atlassian.com/git/tutorial
- Cheatsheet:       http://ndpsoftware.com/git-cheatsheet.html
- Full Reference:   http://git-scm.com/documentation


