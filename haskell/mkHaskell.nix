{ pkgs, version }:
let
  packages = pkgs.haskell.packages."${version}";
  defInputs = [
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

  self = {
    inherit packages;
    compiler = pkgs.haskell.compiler."${version}";
    defaultInputs = defInputs;
    shell = pkgs.mkShell {
      buildInputs = defInputs;
    };
  };

in
  self
