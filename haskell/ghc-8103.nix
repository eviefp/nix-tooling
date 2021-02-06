{ pkgs }:
let
  version = "ghc8103";
  it = import ./mkHaskell.nix { inherit pkgs version; };
in
  it
