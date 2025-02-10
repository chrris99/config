{ pgks, ... }:

{
    programs.git = {
        enable = true;
        userName = "chrris99";
        userEmail = "conforti.christian@gmail.com";
        aliases = {
            co = "checkout";
            ci = "commit";
            st = "status";
        };

        extraConfig = {
            push = {
                autoSetupRemote = true;
            };

            # Sign all commits using ssh key
            commit.gpgsign = true;
            gpg.format = "ssh";
            gpg.ssh.program = "/Applications/1Password.app/Contents/MacOS/op-ssh-sign";
        };
    };
}