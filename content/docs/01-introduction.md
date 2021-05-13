---
title: Introduction
---

### Before we begin


> The following is a path forward to set up your development laptop. It is not **the** path. Asking your fellow mojos will offer many alternatives.
>
> Try it out. Experiment. Change what you don't like. Don't be afraid to invest time in your workflow.

Make sure you're connected to the following services before you begin:
* Mojotech GSuite
* Mojotech Slack
* BambooHR (use gauth)
* PivotalTracker (use gauth)
* Zeplin (use gauth)

These examples assume osx. Linux users will have to use a different package manager and find the corresponding names for packages e.g. - `apt install python3-pip`. Linux users should skip the brew, iTerm2, and bash steps.

### Brew (osx only)

Brew is package manager for mac osx. https://brew.sh/

```sh
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### iTerm2 (osx only)

Terminal replacement for mac os x. https://www.iterm2.com
```sh
brew cask install iterm2
```

### Bash (osx only)

The missing semester uses bash for its examples. A number of open source projects also assume bash for examples. If you have a preferred shell already, use that and disregard the bash related steps.

```sh
chsh - s /bin/bash
```

Set your default shell to bash in iterm2:
 * open Preferences
 * change the command on General tab on your default profile
 * enter /usr/local/bin/bash for the shell path

Opening iterm2 should now display the bash shell prompt

### Powerline fonts

* Download and install a patched powerline font from: https://github.com/powerline/fonts
* Select font from iTerm2

### Improved bash status line

The default bash status line does not offer much information about your current environment. This installs powerline-go to provide git status information directly in the shell status. If you have a different preferred powerline-like tool, use that instead. Configuration options for powerline-go can be found here:
https://github.com/justjanne/powerline-go#customization

```sh
mkdir -p ~/bin/
cd ~/bin/
wget https://github.com/justjanne/powerline-go/releases/download/v1.21.0/powerline-go-darwin-amd64
mv powerline-go-darwin-amd64 powerline-go
chmod +x powerline-go
```

Append the following to `~/.profile` (`~/.bashrc` on linux):
```sh
function _update_ps1() {
    PS1="$($HOME/bin/powerline-go -error $? -jobs $(jobs -p | wc -l))"
}

if [ "$TERM" != "linux" ] && [ -f "$HOME/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
```

Relogging should present a new shell status line for the current working directory and git status if you are in a git directory.

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
