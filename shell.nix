{ sources ? import ./nix/sources.nix
, pkgs ? import sources.nixpkgs { }
}:
pkgs.mkShell {
  buildInputs = with pkgs; [
    python311
    jq
  ];
}
