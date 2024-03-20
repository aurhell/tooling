###########################################
##             MACOS
###########################################
alias brewup="brew update && brew upgrade && brew cleanup && brew doctor"
alias restartTouchBar="pkill 'Touch Bar agent';killall 'ControlStrip';"  

###########################################
##             DOCKER
###########################################
alias docker-del-dead='docker rm `docker ps -aqf  status=exited`'
alias docker-delete='docker stop `docker ps -aq` && docker rm `docker ps -aq`'
alias docker-del-images='docker rmi -f $(docker images -q)'
alias docker-del-volumes='docker volume prune'
alias docker-fclean='docker-delete && docker-del-images && docker-del-volumes'
alias dcupf='docker-compose up -d --force-recreate --build'
alias dcupd='docker-compose up -d'
alias dcd='docker-compose down'


###########################################
##             GIT
###########################################
alias grbia='git rebase -i --autosquash'
alias grbiad='git rebase -i --autosquash origin/develop'
alias commit="gitmoji -c"
alias fixup="git commit --fixup"
alias gclean-local-branch-lookup="git branch --merged | egrep -v '(^\*|master|dev|develop|main|release|staging|production|prod|preprod)'"
alias gclean-local-branch="git branch --merged | egrep -v '(^\*|master|dev|develop|main|release|staging|production|prod|preprod)' | xargs git branch -d"

###########################################
##           OTHER
###########################################
alias reset-vite-port='kill -9 $(lsof -ti:5173)'
