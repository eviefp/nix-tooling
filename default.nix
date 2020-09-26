let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  easy-ps = import sources.easy-purescript-nix { inherit pkgs; };
  haskell = import ./haskell.nix { inherit pkgs; };
  ghc865 = import ./ghc865.nix { inherit pkgs; };
  purescript = import ./purescript.nix { inherit pkgs easy-ps; };
  scala = import ./scala.nix { inherit pkgs; };

  self = {
    inherit pkgs haskell purescript scala ghc865;
  };

in
  self
