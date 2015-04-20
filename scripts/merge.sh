#!/bin/sh
log (){
	echo -e "\033[32m$1 \033[0m"
}

log "CHECKOUT AND PULL DEVEL"
git co devel;
git pull origin devel;
git fetch --all;

log "SWITCH TO $1"
git co $1;

log "REBASE AND PUSH"
git rebase devel;
git push -f origin $1;
