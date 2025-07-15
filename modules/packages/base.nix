{
  inputs,
  pkgs,
  ...
}: { 
  environment.systemPackages = with pkgs; [
    kitty
    tmux
    nerd-fonts.jetbrains-mono

    neovim

    wget
    btop
    git
    bat
    nodejs_24
  ];
}