{ pkgs }:
let
  version = "ghc884";
  it = import ./mkHaskell.nix { inherit pkgs version; };
in
  it
