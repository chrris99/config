{ pkgs, ... }: 

let 
    vars = {
        defaultbrowser = "chrome";
    };
in 
{
    environment.systemPackages = [
        pkgs.defaultbrowser
        pkgs.zoom-us
        pkgs.fastlane
    ];

    users.users.christianconforti.home = "/Users/christianconforti";

    homebrew = {
        enable = true;

        brews = [
            "awscli"
            "serverless"
            "typescript"
            "nvm"
        ];

        casks = [
            "1password"
            "1password-cli"
            "google-chrome"
            "postman"
            "slack"
            "pgadmin4"
            "raycast"
        ];

        masApps = {
            Craft = 1487937127;
            Testflight = 899247664;
        };

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

        dock = {
            persistent-apps = [
                "/System/Applications/Launchpad.app"
                "/System/Applications/App Store.app"
                "/Applications/Google Chrome.app"
                "/Applications/1Password.app"
                "/System/Applications/Messages.app"
                "/System/Applications/Mail.app"
                "/Applications/zoom.us.app"
                "/System/Applications/Calendar.app"
                "/System/Applications/System Settings.app"
                "/Applications/Slack.app"
                "/Applications/Postman.app"
                "/Applications/Craft.app"
                "/Applications/Linear.app"
                "/System/Applications/Utilities/Terminal.app"
            ];
        };
    };

    system.activationScripts = (if (vars ? "defaultbrowser" && builtins.isString vars.defaultbrowser) then {
        postUserActivation.text = "defaultbrowser ${vars.defaultbrowser}";
    } else { });

    # The platform the configuration will be used on.
    nixpkgs.hostPlatform = "aarch64-darwin";

    security.pam.enableSudoTouchIdAuth = true;
}