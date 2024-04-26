# Shortcut Data Exporter

This shell script will export all of your Shortcut organization data to JSON files, which you can use to transfer your data to another system, to keep locally as a backup, or for data analysis.

## Instructions

Download the latest version of this exporter:

```shell
curl -L -o "exporter.sh" "https://github.com/useshortcut/exporter/raw/main/exporter.sh"
chmod u+x ./exporter.sh
```

Then you'll need a Shortcut API token defined as an environment variable (see below). If you don't have a token already, you can create one by navigating to Settings > My Account > API Tokens.

``` shell
SHORTCUT_API_TOKEN="YOUR API TOKEN HERE" ./exporter.sh
```

## Development

Install dependencies:

- jq (used for testing)
- shellcheck (used for linting)

If on macOS, you can use Homebrew to install them:

```shell
brew install jq shellcheck
```

The following Makefile targets are available:

- `make lint` runs the `shellcheck` command to lint the exporter script
- `make run` runs the exporter script
- `make test` should be used after `make run` and checks the contents of each exported JSON file

The `test` target is not made to depend on the `run` target because of how long the `run` target takes to execute.
