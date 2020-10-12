{ pkgs, easy-ps }:
let
  self = rec {
    # for npx to install purescript-language-server
    nodejs = pkgs.nodejs;
    purs = easy-ps.purs;
    spago = easy-ps.spago;
    pscid = easy-ps.pscid;
    spago2nix = easy-ps.spago2nix;
    pulp = easy-ps.pulp;

    mkShell = pkgs.mkShell {
      buildInputs = [
        self.nodejs
        self.purs
        self.spago
        self.pscid
        self.spago2nix
        easy-ps.pulp
      ];
    };
  };

in
  self
