{ pkgs }:
let
  self = rec {
    jdk = pkgs.jdk;
    metals = pkgs.metals;
    nodejs = pkgs.nodejs;
    yarn = pkgs.yarn;

    mkShell = pkgs.mkShell {
      buildInputs = [
        self.jdk
        self.metals
        self.nodejs
        self.yarn
      ];
    };
  };

in
  self
