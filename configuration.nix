# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Bootloader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  # Hostname
  networking.hostName = "FEBNIX"; 
  
  # Network Manager
  networking.networkmanager.enable = true;
  programs.nm-applet.enable = true;
    
  # Network Proxy
  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  
  # Time Zone
  time.timeZone = "Asia/kolkata";

  # Locale 
  i18n.defaultLocale = "en_US.UTF-8";
  
  # X11-Xorg
  services.xserver.enable = true;
  services.xserver.xautolock.enable = true;
  
  # Windomanagers and Desktop
  # XFCE
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;
  
  # KDE-Plasma
  #services.xserver.displayManager.sddm.enable = true;
  #services.xserver.desktopManager.plasma5.enable = true;
    
  # Printing
  #services.printing.enable = true;
  #programs.system-config-printer.enable = true;
  #services.printing.drivers = [ pkgs.gutenprint pkgs.gutenprintBin pkgs.hplip pkgs.hplipWithPlugin pkgs.samsung-unified-linux-driver pkgs.splix ];

  # Scanning
  #hardware.sane.enable = true;
  #hardware.sane.extraBackends = [ pkgs.hplipWithPlugin ];
  
  # System Sound
  
  # PipeWire
  # rtkit is optional but recommended
  #security.rtkit.enable = true;
  #services.pipewire = {
  #enable = true;
  #alsa.enable = true;
  #alsa.support32Bit = true;
  #pulse.enable = true;
  # If you want to use JACK applications, uncomment this
  #jack.enable = true; 
#};

  # Pulseaudio
  hardware.pulseaudio.enable = true;
  
  # GVFS
  services.gvfs.enable = true;
  
  # Bluetooth
  hardware.bluetooth.enable = true;
  
  # Virtualisation
  #virtualisation.libvirtd.enable = true;
  #programs.dconf.enable = true; 
  
  # ADB
  #programs.adb.enable = true;
  
  # Flatpak
  services.flatpak.enable = true;
  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  
  #Syncthing (Device File Sync)
  #services.syncthing.enable = true;
  
  # Emacs
  #services.emacs.enable = true;
  
  # Neovim
  programs.neovim.enable = true;
  
  # qt5
  qt5.platformTheme = "qt5ct";
  programs.qt5ct.enable = true;
  
  # Fish Shell 
  programs.fish.enable = true;
  users.users.feb14.shell = pkgs.fish;
  #users.defaultUserShell = pkgs.fish;
  
  #Zsh Shell
  #programs.zsh.enable = true;
  #users.defaultUserShell = pkgs.zsh;
  #programs.zsh.ohMyZsh.enable = true;
  #programs.zsh-autosuggestions.enable = true;
  
  # Configure keymap in X11
  services.xserver = {
  layout = "us";
  xkbVariant = "";
  };

 # Enable touchpad support (enabled default in most desktopManager).
 # services.xserver.libinput.enable = true;

 # User Account
  users.users.feb14 = {
    isNormalUser = true;
    description = "FEBNIX";
    extraGroups = [ "networkmanager" "wheel" "audio" "scanner" "lp" "libvirtd" ];
    packages = with pkgs; [
    ];
  };

 # Allow unfree packages
 nixpkgs.config.allowUnfree = true;
 
 # Environment Variables
 environment.variables = {
    QT_QPA_PLATFORMTHEME = "qt5ct";
  };

  
 # List packages installed in system profile. To search, run:
 # $ nix search wget
 environment.systemPackages = with pkgs; [
 
 # Terminal
 #alacritty
 terminator
 starship
 
 # Theams
 arc-theme
 bibata-cursors
 bibata-extra-cursors
 capitaine-cursors
 papirus-icon-theme
 xfce.ristretto 
 xfce.xfce4-whiskermenu-plugin
 hicolor-icon-theme
 
 # Internet
 #brave
 firefox
 #youtube-dl
 #qbittorrent
 #ungoogled-chromium
 
 # Utilities
 #volctl
 #bitwarden
 #conky
 #ulauncher
 #flameshot
 p7zip unzip zip
 gnome.file-roller
 picom
 git
 wget
 curl
 #neovim 
 lm_sensors 
 pfetch 
 vim
 piper
 
 # Audiuo and Video
 #kdenlive
 #obs-studio
 #blender 
 #simplescreenrecorder
 #vlc
 #nuclear
 #mpv
 #pavucontrol
 #tenacity
 #celluloid
 
 # Desktop Applications
 #libreoffice
 #onlyoffice-bin
 #gnome3.gnome-calculator
 #gnome.simple-scan
 #gimp
 #krita
 #okular
 #parcellite
 #joplin-desktop
 #gnome.gucharmap
 #shotwell
 

 # Stock Trading
 #zeroad

 # File and Folders
 ripgrep 
 pcmanfm
     
 # Virtualisation
 #virt-manager

 
];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Copy the NixOS configuration file and link it from the resulting system
  # (/run/current-system/configuration.nix). This is useful in case you
  # accidentally delete configuration.nix.
  # system.copySystemConfiguration = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "22.05"; # Did you read the comment?

}

