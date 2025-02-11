{ pkgs, ... }: 

let 
    vars = {
        defaultbrowser = "chrome";
    };
in 
{
    environment.systemPackages = [
        pkgs.defaultbrowser
    ];

    users.users.christianconforti.home = "/Users/christianconforti";

    homebrew = {
        enable = true;
        casks = [
            "1password-cli"
            "google-chrome"
        ];

        onActivation.cleanup = "zap";
        onActivation.autoUpdate = true;
        onActivation.upgrade = true;
    };

    # Necessary for using flakes on this system.
    nix.settings.experimental-features = "nix-command flakes";

    # Used for backwards compatibility, please read the changelog before changing.
    # $ darwin-rebuild changelog
    system.stateVersion = 6;

    system.defaults = {
        screencapture = {
            location = "~/Downloads";
            show-thumbnail = true;
            type = "png";
            target = "file";
        };
    };

    system.activationScripts = (if (vars ? "defaultbrowser" && builtins.isString vars.defaultbrowser) then {
        postUserActivation.text = "defaultbrowser ${vars.defaultbrowser}";
    } else { });

    # The platform the configuration will be used on.
    nixpkgs.hostPlatform = "aarch64-darwin";

    security.pam.enableSudoTouchIdAuth = true;
}