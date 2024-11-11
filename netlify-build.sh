#!/usr/bin/env bash

# NOTE: this process is executed by netlify. The command is configured from:
# https://app.netlify.com/sites/mojodocs/configuration/deploys
# Netlify doesn't have a mdbook environment so we download and run the binary

set -eou pipefail

curl -L https://github.com/rust-lang/mdBook/releases/download/v0.4.45/mdbook-v0.4.45-x86_64-unknown-linux-gnu.tar.gz | tar xvz && ./mdbook build
