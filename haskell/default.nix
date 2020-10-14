{ pkgs }:
let
  ghc8102 = import ./ghc-8102.nix { inherit pkgs; };
  ghc884 = import ./ghc-884.nix { inherit pkgs; };
  ghc865 = import ./ghc-865.nix { inherit pkgs; };
in
  {
    inherit ghc8102 ghc884 ghc865;
  }
