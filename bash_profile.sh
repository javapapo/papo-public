#set my main path for things so I dont have to change (work/home)
MAIN_PATH=/Volumes/ssd
KUBE_PATH=$MAIN_PATH/kubernetes/102



#making Java8 as our default java for the system

export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_HOME=$JAVA_8_HOME

#VAGRANT
export VAGRANT_HOME=$MAIN_PATH/vagrant-images/vagrant_home

#KUBERNETES
export KUBERNETES_PROVIDER=vagrant
export VAGRANT_DEFAULT_PROVIDER=virtualbox
#KUBECTL_PATH
export KUBECTL=$KUBE_PATH/platforms/darwin/amd64/

#go
export GOPATH=~/go
#set docker env 
eval "$(docker-machine env default 2>/dev/null)"


#PATH
export PATH=/usr/local/git/bin/:$KUBECTL:$PATH




#ALIASES

alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java7='export JAVA_HOME=$JAVA_7_HOME'

#docker machine
alias dockerstart='docker-machine start DOCKER'
alias dockerstop='docker-machine stop DOCKER'
alias dockerstatus='docker-machine status DOCKER'

#BREW
alias brewupgrade='brew upgrade '
alias brewupdate='brew update '
alias brewsearch='brew search '
alias brewallupdate='brew update && brew cask update'
alias brewinstall='brew install '

#BREW CASK
alias caskupdate='brew cask update '
alias casksearch='brew cask search '
alias caskinstall='brew cask install '
alias casklist='brew cask list '
alias caskinfo='brew cask info '
alias caskdoctor='brew cask doctor '

#DOCKER
alias docker_remove_all_images='docker rmi $(docker images -q)'
alias docker_remove_all_untagged='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'

#VAGRANT
alias vagrantstatus='vagrant global-status'
