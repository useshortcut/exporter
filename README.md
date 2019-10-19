# Clubhouse Data Exporter

This shell script will export all of your Clubhouse organization data to JSON files, which you can use to transfer your data to another system, to keep locally as a backup, or for data analysis.

### Instructions

You'll need a Clubhouse API token defined as an environment variable (see below). If you don't have a token already, you can create one by navigating to Settings > My Account > API Tokens.

```sh
$ export CLUBHOUSE_API_TOKEN="YOUR API TOKEN HERE"
$ ./exporter.sh
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
