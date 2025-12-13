{ config, lib, pkgs, inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix

    inputs.self.nixosModules.flatpak
    inputs.self.nixosModules.gdm
    inputs.self.nixosModules.gnome
    inputs.self.nixosModules.networkmanager
    inputs.self.nixosModules.nix
    inputs.self.nixosModules.nixpkgs
    inputs.self.nixosModules.nvidia
    inputs.self.nixosModules.plymouth
    inputs.self.nixosModules.printing
    inputs.self.nixosModules.systemd-boot
    inputs.self.nixosModules.zsh
  ];

  networking.hostName = "antares";

  time.timeZone = "Asia/Jakarta";

  users.users.deorbil = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
  };

  system.stateVersion = "25.11";
}
