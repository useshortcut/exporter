# Clubhouse Data Exporter

This shell script will export all of your Clubhouse organization data to JSON files, which you can use to transfer your data to another system, to keep locally as a backup, or for data analysis.

### Instructions

You'll need a Clubhouse API token defined as an environment variable (see below). If you don't have a token already, you can create one by navigating to Settings > My Account > API Tokens.

```sh
$ CLUBHOUSE_API_TOKEN="YOUR API TOKEN HERE"
$ ./exporter.sh
> Saving all users to data/users.json
> Saving all projects to data/projects.json
> Saving all epics to data/epics.json
> Saving workflow states to data/workflow.json
> Saving all labels to data/labels.json
> Saving all features to data/story.features.json
> Saving all bugs to data/story.bugs.json
> Saving all chores to data/story.chores.json
> Done!
```

## Development

Install shellcheck

```shell
brew install shellcheck
```

And run the linter

```shell
make lint
```
