{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.ruby_3_2
    pkgs.bundler
  ];

  shellHook = ''
    echo "Ruby environment with version 3.2 is ready!"
  '';
}

