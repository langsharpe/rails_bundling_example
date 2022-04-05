let
  sources = import ./nix/sources.nix;
  pkgs = import sources.nixpkgs {};
  mkBundlerAppDevShell = pkgs.callPackage (import sources.bundler-app-dev-shell) {};
in
  mkBundlerAppDevShell {
    buildInputs = with pkgs; [
      openssl
      postgresql_12
      ruby
    ];
  }
