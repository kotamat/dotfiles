
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(brew bundler capistrano coffee command-not-found extract gem git git-flow github heroku history history-substring-search lein mvn node npm yarn pip python rails rake rbenv redis-cli rsync ruby svn thor urltools vagrant vi-mode vundle yum laravel5 composer)
source $ZSH/oh-my-zsh.sh

# Customize to your needs...
source $HOME/.zshrc.custom

# added by travis gem
[ -f /Users/matsumotokouta/.travis/travis.sh ] && source /Users/matsumotokouta/.travis/travis.sh
export PATH="/usr/local/opt/mysql-client/bin:$PATH"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/matsumotokouta/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/matsumotokouta/.config/yarn/global/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/matsumotokouta/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/matsumotokouta/.config/yarn/global/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/matsumotokouta/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/matsumotokouta/.config/yarn/global/node_modules/tabtab/.completions/slss.zsh

export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/bison/bin:$PATH"
