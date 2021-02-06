{ pkgs }:
let
  version = "ghc901";
  it = import ./mkHaskell.nix { inherit pkgs version; };
in
  it
