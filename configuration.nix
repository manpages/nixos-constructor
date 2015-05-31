{ config, pkgs, ... }:

{ imports = [ ./hardware-configuration.nix
              (import ./users.nix { wheel = { sweater = "sweater"; };
                                    users = { guest = "guest";     }; } )
              (import ./countries/croatia.nix {}                        )
              (import ./boot/windows.nix      {}                        )
              (import ./boot/grub2.nix        { device = "/dev/sda"; }  )
              (import ./xserver.nix           {}                        )
              (import ./networking.nix        { name = "chill"; }       ) ]; 
}
