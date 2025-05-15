# GNU Stow managed dotfiles

1. Install [brew](https://brew.sh) (macOS)

2. `brew install git stow`

3. Make `dotfiles`-folder, `mkdir ~/dotfiles`

4. `git clone git@github.com/andrekanakis/.dotfiles.git ~/dotfiles`

5. `cd ~/dotfiles/` -> `stow . -t ~`.

For specific configs `stow nvim -t ~` as an example

</br>
<details>
<summary>Thanks</summary>
@johanwulf for letting me steal some of his configs
</details>
