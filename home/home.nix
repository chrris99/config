_:

{
  home.username = "christianconforti";
  home.homeDirectory = "/Users/christianconforti";

  home.stateVersion = "24.11";

  imports = [
    ./git.nix
    ./vscode.nix
  ];

  programs.home-manager.enable = true;
}
