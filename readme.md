# `zsh-scoped-history` --- zsh shell configuration that maintains history scoped to the working directory

## Synopsis
`zsh-scoped-history` saves command history in `$PWD/.history`. This makes searches for commands local to the current directory, so your project-specific commands -- issued in the scope of a working directory -- don't spill over to other working context.

## Install

- Antigen users:
    - add the following line to `.antigenrc`:
    ```
    antigen bundle bigbearlabs/zsh-scoped-history
    ```
    - `antigen reset` and start a new shell.
    
- Raw zsh users:
    - clone repository:
    ```
    git clone https://github.com/bigbearlabs/zsh-scoped-history.git ~/.zsh/zsh-scoped-history
    ```
    - source entry point script in `.zshrc`:
    ```
    source ~/.zsh/zsh-scoped-history/zsh-scoped-history.zsh
    ```

## Misc
- You can add `.history` to your global git_ignore file if you use git in many directories:
```
$ cat >> ~/.gitignore_global
.history
^D
```
- based on discussion on: http://unix.stackexchange.com/questions/204833/keeping-history-per-working-directory-cf-per-shell-session

## Future directions
- prepend parent / project-root / global history, so interactive search searches in the order of 'dir-history' -> 'project-history' -> 'global-history'
- allow batching commands into an impromptu script that captures a project-specific workflow.
- link scope to an archetype, so e.g. an xcode project folder can use history from the 'xcode-project' archetype.
- allow promoting elements to a wider scope, so e.g. you can issue a useful command in project A, then use it again in other projects using the same archetype.
- iteratively build up a chunk of commands for a project.
