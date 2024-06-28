{builtins, ...}:
builtins.fetchGit {
  name = "nixpkgs";
  url = "https://github.com/nixos/nixpkgs/";
  rev = "98f7ef75d37196e7aaa8ffb848987943221b48a0";
  ref = "master";
}
