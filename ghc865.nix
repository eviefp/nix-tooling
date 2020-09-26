{ pkgs }:
let
  ghc = pkgs.haskell.packages.ghc865;


  self = rec {
    inherit ghc;
    cabal-install = ghc.cabal-install;
    haskell-language-server = ghc.haskell-language-server;
    stylish-haskell = ghc.stylish-haskell;
    hlint = ghc.hlint;
    ghc865 = pkgs.haskell.compiler.ghc865;

    mkShell = pkgs.mkShell {
      buildInputs = [
        self.ghc865
        self.haskell-language-server
        self.stylish-haskell
        self.hlint
        self.cabal-install
      ];
    };
  };

in
  self
