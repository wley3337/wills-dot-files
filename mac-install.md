## global system installs

- Install Homebrew
  - git `brew install git`
    - add ssh key to github
    - `git config --global --edit` to set your commit name and email
  - python `brew install python` ( also installs pip )
  - nvim `brew install nvim`
  - yarn `brew install yarn`
  
- prettier `yarn global add prettier`

- Install Iterm2 ( this will also install `zsh` )
  - copy zsh aliases to `~/.zshrc` ( only bring alliases because the pathing may be different on different OS)
- Install [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts#glyph-sets)
- Install [Powerline Fonts](https://github.com/powerline/fonts)
- [oh-my-zsh](https://ohmyz.sh/#install)
  - copy the custom-agnoster setup to `~/.oh-my-zsh/custom/themes`
  - you'll also need Powerline fonts to make that them work

- install language servers
  Python server
  - `pip install 'python-lsp-server[all]`
    TS server follow [this blog](https://jose-elias-alvarez.medium.com/configuring-neovims-lsp-client-for-typescript-development-5789d58ea9c)
  - `yarn global add typescript`
  - `yarn global add typescript-language-server`
    ES Lint diagnostic server
  - `yarn global add eslint_d` <-- blog said this was faster than eslint :shrug:
  - `yarn global add diagnostic-languageserver`
    C++ server
  - [Github link for ccls C++](https://github.com/MaskRay/ccls/wiki/Install) You can install this with `brew install ccls`
  - clangd add `/usr/local/opt/llvm/bin/` to your path and this will bring the native version in.
- brew install nvim ( language servers require at least nvim='^=.50')

## Nvim currently in use is `/nvim3` all in one file and annotated

- May need to create an undo dir. file path in current `init.vim` is: `~/.config/nvim/undodir`
- `:checkhealth` is great to run after first installing nvim and after each mod to the init file.
- need to run `yarn global add neovim` and `pip3 install pynvim` to connect your node version and your python version to NeoVim

- I like to keep the init file in a repo and source the file from `./config/nvim/init.vim`. I can keep the file in a repo and push/pull changes across machines. The command for this usually is the following however your path to the repo may very: `source $HOME/.config/wills-dot-files/nvim3/init.vim`

## Post Install

### Python
- Install `pip install virtualenv`
- Install zsh plugin [auto-switch-virtual-env](https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv)
**Note: When you're in a virtual env you'll need to also `pip install nvim` if you don't want to add it to your requirements.txt. If you don't you'll get an error vim-spectore requires vim compiled with python 3.^**

### Postgres
- `brew install postgresql`
- Down load view ( opt ) [sequal pro](https://sequelpro.com/)

### Heroku CLI

