{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.dhall
    pkgs.dhall-json
    pkgs.dhall-lsp-server

    # keep this line if you use bash
    pkgs.bashInteractive
  ];
}
