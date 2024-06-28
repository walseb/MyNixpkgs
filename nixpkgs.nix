{ ... }:
let
  rev = "98f7ef75d37196e7aaa8ffb848987943221b48a0";
in
  (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
    sha256 = "0ha7mxa2bs17xwl9kivx73lmnbmb9fmyw05fx09152bzir2y6p65";
  })
# builtins.fetchGit {
#   name = "nixpkgs";
#   url = "https://github.com/nixos/nixpkgs/";
#   rev = "98f7ef75d37196e7aaa8ffb848987943221b48a0";
#   ref = "master";
# }
