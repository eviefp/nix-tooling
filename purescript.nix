{ pkgs, easy-ps }:
let
  self = {
    # for npx to install purescript-language-server
    nodejs = pkgs.nodejs;
    purs = easy-ps.purs;
    spago = easy-ps.spago;
    pscid = easy-ps.pscid;
    spago2nix = easy-ps.spago2nix;
  };

in
  self
