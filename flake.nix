{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations.antares = nixpkgs.lib.nixosSystem {
      modules = [ ./configuration.nix ];
    };
  };
}
