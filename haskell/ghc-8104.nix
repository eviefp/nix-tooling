{ pkgs }:
let
  version = "ghc8104";
  it = import ./mkHaskell.nix { inherit pkgs version; };
in
  it
