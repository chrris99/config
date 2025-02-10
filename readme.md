Install nix

`sh <(curl -L https://nixos.org/nix/install)`

Install nix-darewin

`nix run nix-darwin --extra-experimental-features "nix-command flakes" -- switch --flake .#{configuration}`

Upate flake

`nix flake update`

Build configuration

`darwin-rebuild switch --flake ~/nix#{configuration}`
