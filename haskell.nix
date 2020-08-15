{ pkgs }:
let
  ghc = pkgs.haskell.packages.ghc883;


  self = rec {
    inherit ghc;
    cabal-install = ghc.cabal-install;
    haskell-language-server = ghc.haskell-language-server;
    stylish-haskell = ghc.stylish-haskell;
    hlint = ghc.hlint;
    ghc883 = pkgs.haskell.compiler.ghc883;

    mkShell = pkgs.mkShell {
      buildInputs = [
        self.ghc883
        self.haskell-language-server
        self.stylish-haskell
        self.hlint
        self.cabal-install
      ];
    };
  };

in
  self
