{ pkgs }:
let
  version = "ghc8102";
  it = import ./mkHaskell.nix { inherit pkgs version; };
in
  it
