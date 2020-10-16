{ pkgs, version }:
let
  packages = pkgs.haskell.packages."${version}";

  self = rec {
    inherit packages;
    compiler = pkgs.haskell.compiler."${version}";
    defaultInputs = [
        self.compiler
        packages.haskell-language-server
        packages.stylish-haskell
        packages.hlint
        packages.cabal-install
        packages.cabal2nix
        packages.hpack
        packages.implicit-hie
        # packages.hpack-dhall broken
        # packages.hpack-convert
    ];

    shell = pkgs.mkShell {
      buildInputs = self.defaultInputs;
    };
  };

in
  self
