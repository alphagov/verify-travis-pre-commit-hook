# verify-travis-pre-commit-hook

A [pre-commit](http://pre-commit.com/) hook in the form of a rubygem. Not published to rubgems.org.

Looks for a Travis yaml file and lints it, to protect against yaml errors or bad Travis configuration.

The linting logic itself uses the [travis-yaml](https://github.com/travis-ci/travis-yaml) gem.

This gem is simply wiring between pre-commit and travis-yaml.

# To use this hook in your codebase

If your codebase builds on Travis, you can use this linting hook to make sure you don't commit a bad `.travis.yml`.

Follow the instructions on [http://pre-commit.com/](http://pre-commit.com/). You will end up with a
`.pre-commit-config.yaml` file something like:

```yaml
repos:
-   repo: git://github.com/alphagov/verify-travis-pre-commit-hook
    sha: master
    hooks:
    -   id: travis-yml-lint
```

Then you can do `pre-commit install`.

# To develop this hook

Install `rbenv` to make sure you are using the [suggested ruby version](.ruby-version).

Install bundler and the required gems:

```bash
gem install bundler
bundle install
```

To run the tests just use `rake`.

To test the hook against a local codebase, use the [try-repo](http://pre-commit.com/#pre-commit-try-repo) command provided by pre-commit to run the hook from your
local checkout:

```bash
pre-commit try-repo ../verify-travis-pre-commit-hook travis-yml-lint --verbose --all-files
```
