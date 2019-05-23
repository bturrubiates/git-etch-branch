# git-etch-branch

Tool that I use to store descriptions of branches. Sometimes, if you're working
on a lot of branches at a given time and tend to forget about them, it's useful
to be able to store a description for each branch. A description that's longer
than the branch name.

## Installing

This is a single Python script. Throw it somewhere on `$PATH`.

##  Usage

* Etch a description into a branch:

  ```sh
  git etch-branch etch <branch> <description>
  ```

  I like to Git alias this to `git ebe <branch> <description>`

* Describe branches:

  ```sh
  git etch-branch describe
  ```

  I like to Git alias this to `git ebd`

* Clear branch description:

  ```sh
  git etch-branch clear <branch>
  ```

  I like to Git alias this to `git ebc <branch>`

## Completions

A completion script is available in `shell/completion` that can be used with
`zsh` to provide autocompletion.

Download the `shell/completion/git-etch-branch.zsh` script and source it in
your `~/.zshrc`.
