{ inputs, pkgs, ... }:

{
  home.username = "christianconforti";
  home.homeDirectory = "/Users/christianconforti";

  home.stateVersion = "24.11";

  imports = [
    ./git.nix
    ./vscode.nix
  ];

  programs.git.extraConfig.user.signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFiFyUweLkvtaz2ZdXjlAuQw2FfWoUSfhdrljeh8WB3w";

  programs.home-manager.enable = true;
}
