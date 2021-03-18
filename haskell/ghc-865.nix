{ pkgs }:
let
  version = "ghc865Binary";
  it = import ./mkHaskell.nix { inherit pkgs version; };
in
  it
