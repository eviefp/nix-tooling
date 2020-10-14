{ pkgs }:
let
  version = "ghc865";
  it = import ./mkHaskell.nix { inherit pkgs version; };
in
  it
