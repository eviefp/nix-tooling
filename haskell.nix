{ pkgs }:
let
  ghc86 = import ./haskell-8.6.nix { inherit pkgs; };
  ghc88 = import ./haskell-8.8.nix { inherit pkgs; };
in
  {
    ghc86 = ghc86;
    ghc88 = ghc88;
  }
