## Install on a new system

1. Add alias to bashrc/zshrc
  ```bash
  alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
  ```

2. Clone the repo
  ```bash
  git clone --bare <git-repo-url> $HOME/.dotfiles
  ```

3. Define the alias in the current shell scope:
  ```bash
  alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
  ```

4. Checkout the actual content from the bare repository to your $HOME:
  ```bash
  config checkout
  ```
  The step above might fail with a message like:
  ```bash
  error: The following untracked working tree files would be overwritten by checkout:
  .bashrc
  .gitignore
  ```
  Please move or remove them before you can switch branches.
  Re-run the check out if you had problems
  ```bash
  config checkout
  ```

5. Set the flag showUntrackedFiles to no on this specific (local) repository:
  ```bash
  config config --local status.showUntrackedFiles no
  ```
  
#### You're done, from now on you can now type config commands to add and update your dotfiles!
