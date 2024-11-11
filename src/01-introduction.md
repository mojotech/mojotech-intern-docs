# Introduction

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
brew install --cask iterm2
```

### Bash (osx only)

The missing semester uses bash for its examples. A number of open source projects also assume bash for examples. If you have a preferred shell already, use that and disregard the bash related steps.

```sh
chsh -s /bin/bash
```

Opening iterm2 should now display the bash shell prompt. You can check that this is working correctly by entering this command:

```sh
echo $SHELL
```
It should return `/bin/bash`.

if you see a message that says `The default interactive shell is now zsh.`, you can surpress it by adding this line to your `~/.bash_profile` file:


```sh
export BASH_SILENCE_DEPRECATION_WARNING=1
```

### Improved bash status line
The default statusline for `bash` is far from helpful. We can remedy that quickly by following a few simple steps.

Start by running this to install the [starship statusline](https://starship.rs/):

```sh
brew install starship
```


After that finishes, append the following to the end of your `~/.bash_profile` (`~/.bashrc` on linux):
```sh
eval "$(starship init bash)"
```

If you're on linux or dont have access to brew, you can run this command
```sh
sh -c "$(curl -fsSL https://starship.rs/install.sh)"
```

other install methods can be found [here](https://starship.rs/guide/#%F0%9F%9A%80-installation)
You can run `starship --help` to get a quick overview of the statusline functionality or visit the website for more in-depth docs.

The final step to set up your new statusline is to get a font with support for
icons, these are called NerdFonts, installing them is simple:

```sh
brew tap homebrew/cask-fonts
brew install --cask font-blex-mono-nerd-font
```

if you are on linux or dont have access to brew, you can download the font
directly [here](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/IBMPlexMono.zip). Once downloaded, open the unzip the package, select all of the `.otf` files and double click them. This will launch the installation prompt.

Once you finish downloading and installing your NerdFont, use it by opening your iTerm preferences, going to the `Profile` section, and selecting the `Text` tab.

Relogging should present a new shell statusline for the current working directory and git status if you are in a git directory.

### fzf

https://github.com/junegunn/fzf

fzf is a fuzzy file finder with shell integration (CTRL-T, CTRL-R, and ALT-C)
```sh
brew install fzf
/usr/local/opt/fzf/install
```

The shell integration commands should present the fuzzy finder for:
* files: CTRL-T
* shell history: CTRL-R
* cd directory: ALT-C

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
asdf plugin add ruby
asdf plugin add nodejs
asdf plugin add yarn
```

You can also install the appropriate versions if the project has a `.tool-versions` file.

```sh
cd helios2 # or whether helios2 is checked out for you
asdf install
```

If `asdf install` fails, you are likely missing some system dependencies. The asdf output will likely include instructions to install them like:
```sh
The Ruby readline extension was not compiled.
ERROR: Ruby install aborted due to missing extensions
Try running `apt-get install -y libreadline-dev` to fetch missing dependencies.
```

### Useful Chrome Extensions

React Dev Tools

Inspect the react components in the browser similiar to the element inspector

https://chrome.google.com/webstore/detail/react-developer-tools/fmkadmapgofadopljbjfkapdkoienihi?hl=en

Apollo Client Developer Tools

Inspect and run graphql queries

https://chrome.google.com/webstore/detail/apollo-client-developer-t/jdkknkkbebbapilgoeccciglkfbmbnfm?hl=en-US
