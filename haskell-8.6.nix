{ pkgs }:
let
  it = pkgs.haskell.packages.ghc865;

  self = rec {
    cabal-install = it.cabal-install;
    cabal2nix = it.cabal2nix;
    haskell-language-server = it.haskell-language-server;
    stylish-haskell = it.stylish-haskell;
    hlint = it.hlint;
    ghc = pkgs.haskell.compiler.ghc865;

    mkShell = pkgs.mkShell {
      buildInputs = [
        self.ghc
        self.haskell-language-server
        self.stylish-haskell
        self.hlint
        self.cabal-install
        self.cabal2nix
      ];
    };
  };

in
  self
