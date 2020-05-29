---
title: Introduction
---

### Before we begin


> The following is a path forward to set up your development laptop. It is not **the** path. Asking your fellow mojos will offer many alternatives.
>
> Try it out. Experiment. Change what you don't like. Don't be afraid to invest time in your workflow.


### Brew

Brew is package manager for mac osx. https://brew.sh/

```sh
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### iTerm2

Terminal replacement for mac os x. https://www.iterm2.com
```sh
brew cask install iterm2
```

### Powerline fonts

* Download and install a patched powerline font from: https://github.com/powerline/fonts
* Select font from iTerm2

### Shell

Bash is a little lackluster and switching to fish/zsh can greatly improve functionality. fish is a pretty easy shell to start with.  https://fishshell.com/
```sh
brew install fish
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh - s /usr/local/bin/fish
```

#### oh-my-fish
```sh
curl -L https://get.oh-my.fish | fish
```

Set your default shell to fish in iterm2:
 * open Preferences
 * change the command on General tab on your default profile
 * enter /usr/local/bin/fish for the shell path

Opening iterm2 should now display the fish shell prompt

#### bob-the-fish
```sh
omf install bobthefish
```

### fzf

fzf is a fuzzy file finder with shell integration (CTRL-T, CTRL-R, and ALT-C)
```sh
brew install fzf
/usr/local/opt/fzf/install
```

### git
```sh
brew install git
```

Send your github handle to @craig (Craig Jolicoeur) on slack.

Set up your ssh key for authentication

```sh
ssh-keygen -t rsa -b 4096
cat ~/.ssh/id_rsa.pub | pbcopy
```

pbcopy will copy STDOUT into your clipboard. You can then paste into your account ssh key on github.com.

### docker

https://hub.docker.com/editions/community/docker-ce-desktop-mac/

https://download.docker.com/mac/stable/Docker.dmg

* Install the dmg image.
 * A Docker whale icon appears in the status menu. As soon as the whale icon appears, the symbolic links for docker, docker-compose, docker-credential-osxkeychain and docker-machine are created in /usr/local/bin.
* Test docker

```sh
docker run hello-world
```

### asdf

Version manager tool. Allows running multiple versions of language runtimes that can be controlled per project.

https://asdf-vm.com/#/core-manage-asdf-vm

```sh
brew install asdf
```

Add the following to ~/.config/fish/config.fish:

```sh
source (brew --prefix asdf)/asdf.fish
```

Restart your terminal.

```sh
asdf plugin add elixir
asdf install elixir 1.9.1
asdf plugin add nodejs
asdf install nodejs 14.3.0
asdf plugin add yarn
asdf install yarn 1.22.4
```

You can also install the appropriate versions if the project has a `.tool-versions` file.

```sh
cd some-project
asdf install
```

### Useful Chrome Extensions

React Dev Tools

Inspect the react components in the browser similiar to the element inspector

https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en

Apollo Client Developer Tools

Inspect and run graphql queries

https://chrome.google.com/webstore/detail/apollo-client-developer-t/jdkknkkbebbapilgoeccciglkfbmbnfm?hl=en-US
