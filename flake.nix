{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.05";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.laptop = nixpkgs.lib.nixosSystem { 
      system = "x86_64-linux";
      modules = [
        ./hosts/laptop/default.nix
      ];
    };
  };
}
