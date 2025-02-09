_:

{
  home.username = "christianconforti";
  home.homeDirectory = "/Users/christianconforti";

  home.stateVersion = "24.11";

  programs.git = {
    enable = true;
    userName = "chrris99";
    userEmail = "conforti.christian@gmail.com";
    aliases = {
      co = "checkout";
      ci = "commit";
      st = "status";
    };
  };

  programs.home-manager.enable = true;
}
