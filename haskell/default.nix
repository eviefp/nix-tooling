{ pkgs }:
let
  ghc901  = import ./ghc-901.nix  { inherit pkgs; };
  ghc8104 = import ./ghc-8104.nix { inherit pkgs; };
  ghc8102 = import ./ghc-8102.nix { inherit pkgs; };
  ghc884  = import ./ghc-884.nix  { inherit pkgs; };
  ghc865  = import ./ghc-865.nix  { inherit pkgs; };
in
  {
    inherit ghc901 ghc8104 ghc8102 ghc884 ghc865;
  }
