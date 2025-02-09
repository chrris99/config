Install nix

`sh <(curl -L https://nixos.org/nix/install)`

`nix flake update`

`darwin-rebuild switch --flake ~/nix#mbp`

To install home-manager

`nix run home-manager/master -- init --switch`
