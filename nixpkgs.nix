{ rev, sha, ... }:
(import (fetchTarball {
  url = "https://github.com/NixOS/nixpkgs/archive/${rev}.tar.gz";
  sha256 = sha;
}) {})
# builtins.fetchGit {
#   name = "nixpkgs";
#   url = "https://github.com/nixos/nixpkgs/";
#   rev = "98f7ef75d37196e7aaa8ffb848987943221b48a0";
#   ref = "master";
# }
