# Nix tooling

Nix-tooling aims to provide simple easy-to-use tooling for working with
Purescript and Haskell.

The Purescript part is entirely reliant on the excellent
[easy-purescript-nix](https://github.com/justinwoo/easy-purescript-nix) library.

## Prerequisites
[niv](https://github.com/nmattia/niv)

## Setup
How to set up:

1. In the directory for your project, run `niv init`.
2. Add this repository as a source: `niv add vladciobanu/nix-tooling`
3. Create a `default.nix`:
```nix
let
  sources = import ./nix/sources.nix;
  tooling = import sources.nix-tooling;
in
  tooling
```

For Purescript projects, you can create a `shell.nix` file as:
```nix
let
  tooling = import ./default.nix;
in
  tooling.purescript.mkShell
```

For Haskell projects, you can create a `shell.nix` file as:
```nix
let
  tooling = import ./default.nix;
in
  tooling.haskell.mkShell
```

You should now be able to run `nix-shell` and have access to my
choice of development tools for the language.
