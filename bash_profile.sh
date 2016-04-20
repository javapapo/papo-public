
#making Java8 as our default java for the system
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_HOME=$JAVA_8_HOME


#KUBERNETES
export KUBERNETES_PROVIDER=vagrant
export VAGRANT_DEFAULT_PROVIDER=virtualbox

#go
export GOPATH=~/go
export GOROOT=/usr/local/opt/go/libexec/bin

#PATH
export PATH=/usr/local/git/bin/:$KUBECTL:$GOROOT:$PATH


# -------- ALIASES ----------------------------- #
#git
alias gitlog='git log --oneline --graph'

#BREW
alias brewupdate='brew update;brew upgrade;brew cask update;brew cask cleanup'

#JAVA
alias java8='export JAVA_HOME=$JAVA_8_HOME'

#DOCKER
eval "$(docker-machine env default 2>/dev/null)"
alias dockerstart='docker-machine start default'
alias dockerstop='docker-machine stop default'
alias dockerstatus='docker-machine status default'
alias docker_remove_all_images='docker rmi $(docker images -q)'
alias docker_remove_all_untagged='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'

#VAGRANT
alias vagrantstatus='vagrant global-status'
