{ pkgs, ... }:

{
  programs.vscode = {
    enable = true;

    extensions = with pkgs.vscode-extensions; [
      editorconfig.editorconfig
      bbenoist.nix
      pkief.material-icon-theme
      zhuangtongfa.material-theme
    ];

    userSettings = {
      "workbench.iconTheme" = "material-icon-theme";
      "workbench.colorTheme" = "One Dark Pro Darker";
      "workbench.startupEditor" = "none";

      # editor
      "editor.tabSize" = 2;
      "editor.formatOnSave" = true;
      "editor.codeActionsOnSave" = {
        "source.fixAll" = "explicit";
      };
      "editor.rulers" = [ 120 ];

      # nix
      "nix.enableLanguageServer" = true;
      "nix.serverPath" = "nil";

      # typescript
      "typescript.preferences.importModuleSpecifier" = "relative";
    };
  };
}