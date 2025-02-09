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
    };
}