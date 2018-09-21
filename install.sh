#!/bin/bash

git pull -r

## Add to bash_profile
[ -n "$(cat ~/.bash_profile | grep fly_helper)" ] || cat >> ~/.bash_profile << EOF
## fly-helper
export FLY_TARGET=pks-releng
export CONCOURSE_URL=https://pks-releng.ci.cf-app.com/
[ -f ~/.fly_helper ] || ln $GOPATH/src/github.com/lubronzhan/fly-helper/fly_helper_source_me ~/.fly_helper
source ~/.fly_helper
EOF

source ~/.bash_profile

login_concourse
