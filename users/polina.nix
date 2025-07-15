{
  inputs,
  pkgs,
  ...
}: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.polina = {
    isNormalUser = true;
    description = "Polina Prokopenko";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      telegram-desktop
    ];
  };
}