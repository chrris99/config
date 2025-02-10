_:

{
  home.username = "christianconforti";
  home.homeDirectory = "/Users/christianconforti";

  home.stateVersion = "24.11";

  imports = [
    ./git.nix
    ./vscode.nix
    ./ssh.nix
  ];

  programs.git.extraConfig.user.signingkey = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHQ/RcIdnaWlO/CqqVqCnT1KfQByJFXMgbOZz99QnSxx";

  programs.home-manager.enable = true;
}
