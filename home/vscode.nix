{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-extensions; [
      "editorconfig.editorconfig"
      "bbenoist.nix"
      "pkief.material-icon-theme"
    ];

    userSettings = {
      "workbench.iconTheme" = "material-icon-theme";
      "workbench.startupEditor" = "none";

      "editor.tabSize" = 2;
      "editor.codeActionsOnSave" = {
        "source.fixAll" = "explicit";
      };

      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "nil";
    };
  };
}