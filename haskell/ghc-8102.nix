{ pkgs }:
let
  version = "ghc8102Binary";
  it = import ./mkHaskell.nix { inherit pkgs version; };
in
  it
