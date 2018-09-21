# fly-helper

Repo that store all the helpers for cli `fly`

# Install

```sh
if [ ! -d $GOPATH/src/github.com/lubronzhan/fly-helper ]; then
  mkdir -p $GOPATH/src/github.com/lubronzhan/ && \
  git clone git@github.com:lubronzhan/fly-helper.git $GOPATH/src/github.com/lubronzhan/fly-helper
fi

cd $GOPATH/src/github.com/lubronzhan/fly-helper

./install.sh

```

# Avaialble command
`login_concourse`
- login to concourse with credentials stored in lastpass

`open_pipeline <pipeline-name>`
- open pipeline in browser

`open_cleanup_pipeline <lock-name>`
- open the cleanup pipeline of a specific lock

`flyhijack <job-build-url>`
- hijack a job with url

`destroy_pipeline <pipeline-name>`
- destroy a pipeline

`cleanup_lock <lock-name>`
- trigger a cleanup for a lock

`check_ship_tile <branch> <build-num>`
- check the ship tile status

`get_pipelines_with_pattern <pattern>`
- get all pipeline name with a string filter
