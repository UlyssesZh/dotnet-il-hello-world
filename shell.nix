{ pkgs ? import <nixpkgs> {} }:

(pkgs.buildFHSEnv {
  name = "simple-env";
  targetPkgs = pkgs: with pkgs; [
    dotnet-sdk
  ];
  multiPkgs = pkgs: with pkgs; [
    icu
  ];
}).env
