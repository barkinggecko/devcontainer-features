# Dev Container Features by @barkinggecko (devcontainer-features)

This repo contains 'features' that may be referenced in a `devcontainer.json` file to extend the utility of your dev containers (see [Dev Container Features Reference](https://containers.dev/implementors/features/)). It follows the self-authoring template provided by the [Feature Starter Repo](https://github.com/devcontainers/feature-starter).

# aws-cli-autocompletion

Adds autocompletion support for the AWS CLI in your container's shell (see https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-completion.html).

Don't care about how the feature is made and just want to use it? Add the following to your project's `.devcontainer/devcontainer.json`:
```
	"features": {
		"ghcr.io/barkinggecko/devcontainer-features/aws-cli-autocompletion:latest": {}
	}
```
