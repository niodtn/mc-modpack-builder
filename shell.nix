{ pkgs, ... }:

let
  buildScript = pkgs.writeShellScriptBin "build" ''
    nix build .#"$1"
  '';
in
pkgs.mkShell {
  name = "modpack-dev-shell";

  packages = [ buildScript ];
}
