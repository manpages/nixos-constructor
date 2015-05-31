{ name, fw ? false, ssh ? false, ... }:
{ ... }:
{
  networking.hostName = name;
  networking.firewall.enable = fw;
  services.openssh.enable = ssh;
}
