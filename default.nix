let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  easy-ps = import sources.easy-purescript-nix { inherit pkgs; };
  haskell = import ./haskell.nix { inherit pkgs; };
  purescript = import ./purescript.nix { inherit pkgs easy-ps; };

  self = {
    inherit pkgs haskell purescript;
  };

in
  self
