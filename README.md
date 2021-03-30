# dotfiles

(Opt) Execute [the boot script](https://gist.github.com/ksoda/3e54c308da7176258c80)

## Requirements

Set fish as your login shell:

    chsh -s $(which fish)

## Install

Clone onto your laptop:

    gh repo clone ksoda/dotfiles

(Or, [fork and keep your fork
updated](http://robots.thoughtbot.com/keeping-a-github-fork-updated)).

Install [rcm](https://github.com/thoughtbot/rcm):

    brew tap thoughtbot/formulae
    brew install rcm

Install the dotfiles:

    env RCRC=$HOME/dotfiles/rcrc rcup

After the initial installation, you can run `rcup` without the one-time variable
`RCRC` being set (`rcup` will symlink the repo's `rcrc` to `~/.rcrc` for future
runs of `rcup`). [See
example](https://github.com/thoughtbot/dotfiles/blob/master/rcrc).

This command will create symlinks for config files in your home directory.
Setting the `RCRC` environment variable tells `rcup` to use standard
configuration options:

- Exclude the `README.md`, `README-ES.md` and `LICENSE` files, which are part of
  the `dotfiles` repository but do not need to be symlinked in.
- Give precedence to personal overrides which by default are placed in
  `~/dotfiles-local`
- Please configure the `rcrc` file if you'd like to make personal
  overrides in a different directory

## Update

From time to time you should pull down any updates to these dotfiles, and run

    rcup

to link any new files and install new vim plugins. **Note** You _must_ run
`rcup` after pulling to ensure that all files in plugins are properly installed,
but you can safely run `rcup` multiple times so update early and update often!

## Make your own customizations

Create a directory for your personal customizations:

    mkdir ~/dotfiles-local

Put your customizations in `~/dotfiles-local` appended with `.local`:

- `aliases.local`
- `git_template.local/*`
- `gitconfig.local`
- `psqlrc.local` (blank `.psqlrc.local` to prevent `psql` from
  throwing an error)
- `tmux.conf.local`
- `vimrc.local`
- `vimrc.bundles.local`

If you don't wish to install a vim plugin from the default set of vim plugins in
`.vimrc.bundles`, you can ignore the plugin by calling it out with `UnPlug` in
your `~/.vimrc.bundles.local`.

    " Don't install vim-scripts/tComment
    UnPlug 'tComment'

To extend your `git` hooks, create executable scripts in
`~/dotfiles-local/git_template.local/hooks/*` files.

Your `~/dotfiles-local/vimrc.bundles.local` might look like this:

    Plug 'Lokaltog/vim-powerline'
    Plug 'stephenmckinney/vim-solarized-powerline'

## Thanks

Thank you, [contributors](https://github.com/thoughtbot/dotfiles/contributors)!
Also, thank you to Corey Haines, Gary Bernhardt, and others for sharing your
dotfiles and other shell scripts from which we derived inspiration for items
in this project.

## License

dotfiles is copyright © 2009-2018 thoughtbot. It is free software, and may be
redistributed under the terms specified in the [`LICENSE`] file.

[`license`]: /LICENSE
