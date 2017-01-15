
#making Java8 as our default java for the system
export JAVA_8_HOME=$(/usr/libexec/java_home -v1.8)
export JAVA_7_HOME=$(/usr/libexec/java_home -v1.7)
export JAVA_6_HOME=$(/usr/libexec/java_home -v1.6)
export JAVA_HOME=$JAVA_8_HOME

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
alias java8='export JAVA_HOME=$JAVA_8_HOME'
alias java7='export JAVA_HOME=$JAVA_7_HOME'
alias java6='export JAVA_HOME=$JAVA_6_HOME'

#DOCKER
alias docker_remove_all_images='docker rmi $(docker images -q)'
alias docker_remove_all_untagged='docker rmi $(docker images | grep "^<none>" | awk "{print $3}")'

#VAGRANT
alias vagrantstatus='vagrant global-status'

#maven
alias java8project='mvn archetype:generate -B \
 -DarchetypeGroupId=pl.org.miki -DarchetypeArtifactId=java8-quickstart-archetype -DarchetypeVersion=1.0.0 \
 -DgroupId=com.javapapo -DartifactId=demoproj -Dversion=1.0 -Dpackage=com.javapapo.demoproj -DtestLibrary=junit'
