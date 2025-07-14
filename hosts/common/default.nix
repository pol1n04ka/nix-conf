{
  inputs,
  outputs,
  pkgs,
  ...
}: { 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Install firefox.
  programs.firefox.enable = true;

    # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # terminal
    kitty
    tmux
    nerd-fonts.jetbrains-mono

    neovim
    vscode

    wget
    btop
    git
    bat
    nodejs_24
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "Europe/Rome";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "it_IT.UTF-8";
    LC_IDENTIFICATION = "it_IT.UTF-8";
    LC_MEASUREMENT = "it_IT.UTF-8";
    LC_MONETARY = "it_IT.UTF-8";
    LC_NAME = "it_IT.UTF-8";
    LC_NUMERIC = "it_IT.UTF-8";
    LC_PAPER = "it_IT.UTF-8";
    LC_TELEPHONE = "it_IT.UTF-8";
    LC_TIME = "it_IT.UTF-8";
  };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}