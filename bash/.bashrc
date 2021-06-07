#!/usr/bin/env bash

# JAVA_HOME
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

# GOPATH
#export GOPATH=~/Code/go 
#export PATH=$PATH:$(go env GOPATH)/bin

# RUST
export PATH="$HOME/.cargo/bin:$PATH"

# NODEJS
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

# Python env
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# setup rbenv
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
eval "$(rbenv init -)"

# Make visualstudio code default editor
export EDITOR="code -w"

# local bin and scripts
export PATH="$HOME/.local/bin:$PATH"

# git prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="$(brew --prefix)/opt/bash-git-prompt/share"
    source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Aliases
alias ls='ls -FG'
alias ll='ls -lh'
alias la='ls -a'
alias df='df -H'

alias podman='podman-remote'

# working with AWS profiles
function _aws_list_all {
    credentialFileLocation=${AWS_SHARED_CREDENTIALS_FILE};
    if [ -z $credentialFileLocation ]; then
        credentialFileLocation=~/.aws/credentials
    fi

    while read line; do
        if [[ $line == "["* ]]; then echo "$line"; fi;
    done < $credentialFileLocation;
};

function _aws_switch_profile() {
   if [ -z $1 ]; then  echo "Usage: awsp profilename"; return; fi
   
   exists="$(aws configure get aws_access_key_id --profile $1)"
   if [[ -n $exists ]]; then
       export AWS_DEFAULT_PROFILE=$1;
       export AWS_PROFILE=$1;
       export AWS_REGION=$(aws configure get region --profile $1);
       echo "Switched to AWS Profile: $1";
       aws configure list
   fi
};

alias awsall="_aws_list_all"
alias awsp="_aws_switch_profile"
alias awswhoami="aws configure list"

# added by travis gem
[ ! -s /Users/bookian/.travis/travis.sh ] || source /Users/bookian/.travis/travis.sh
