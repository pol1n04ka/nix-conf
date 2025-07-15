{
  inputs, 
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    vscode
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";
}