{ pkgs }:
let
  it = pkgs.haskell.packages.ghc884;

  self = rec {
    cabal-install = it.cabal-install;
    haskell-language-server = it.haskell-language-server;
    stylish-haskell = it.stylish-haskell;
    hlint = it.hlint;
    ghc = pkgs.haskell.compiler.ghc884;

    mkShell = pkgs.mkShell {
      buildInputs = [
        self.ghc
        self.haskell-language-server
        self.stylish-haskell
        self.hlint
        self.cabal-install
      ];
    };
  };

in
  self
