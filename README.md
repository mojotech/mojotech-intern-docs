# mojodocs

Documentation for mojo in a [mdBook](https://github.com/rust-lang/mdBook)

## Getting started

### Dependencies

1. <https://nixos.org/download/>
2. [Install direnv](https://direnv.net/docs/installation.html#from-binary-builds). Make sure to then follow the [hook installation](https://direnv.net/docs/hook.html) step.
3. (osx only) `nix-env -iA bash -f https://github.com/NixOS/nixpkgs/tarball/nixpkgs-unstable`
4. `cd` into project directory

- You should be prompted for run `direnv allow`
- run `direnv allow`

### Running locally

`mdbook serve`

Content is markdown in: `src/`

### Production Deployment

<https://mojodocs.netlify.app/>
