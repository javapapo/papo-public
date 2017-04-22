
#making Java8 as our default java for the system
export VAGRANT_DEFAULT_PROVIDER=virtualbox

#go
export GOPATH=~/go
export GOROOT=/usr/local/opt/go/libexec/bin

#PATH
export PATH=/usr/local/git/bin/:$GOROOT:$PATH


# -------- ALIASES ----------------------------- #
#git
alias gitlog='git log --oneline --graph'
alias gitgc='git gc --agreesive'
alias gitprune='git prune'

#BREW
alias brewupdateall='brew update;brew upgrade;brew cask update;brew cask cleanup;brew doctor'

#JAVA
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

#DOCKER
alias docker_remove_all_images='docker rmi $(docker images -q)'
alias docker_remove_all_untagged='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'

#VAGRANT
alias vagrantstatus='vagrant global-status'

#maven
alias java8project='mvn archetype:generate -B \
 -DarchetypeGroupId=pl.org.miki -DarchetypeArtifactId=java8-quickstart-archetype -DarchetypeVersion=1.0.0 \
 -DgroupId=com.javapapo -DartifactId=demoproj -Dversion=1.0 -Dpackage=com.javapapo.demoproj -DtestLibrary=junit'
