 { config, pkgs, ... }:

 {
 
 # Let Home Manager install and manage itself.
 programs.home-manager.enable = true;

 # paths it should manage.
  home.username = "feb14";
  home.homeDirectory = "/home/feb14";
  
 # Allow "unfree" licenced packages
 # nixpkgs.config = { allowUnfree = true; };

 # Printing
 # services.printing.enable = true;
 # programs.system-config-printer.enable = true;
 # services.printing.drivers = [ pkgs.gutenprint pkgs.gutenprintBin pkgs.hplip pkgs.hplipWithPlugin pkgs.samsung-unified-linux-driver pkgs.splix ];

 # Scanning
 # hardware.sane.enable = true;
 # hardware.sane.extraBackends = [ pkgs.hplipWithPlugin ];

 # System Sound
 # PipeWire
 # rtkit is optional but recommended
 # security.rtkit.enable = true;
 # services.pipewire = {
 # enable = true;
 # alsa.enable = true;
 # alsa.support32Bit = true;
 # pulse.enable = true;
 # If you want to use JACK applications, uncomment this
 # jack.enable = true; 
 # };
 
 # Virtualisation
 # virtualisation.libvirtd.enable = true;
 # programs.dconf.enable = true; 
  
 # ADB
 # programs.adb.enable = true;
  
 # Flatpak
 #services.flatpak.enable = true;
 #xdg.portal.enable = true;
 #xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
  
 # Syncthing (Device File Sync)
 # services.syncthing.enable = true;
  
 # Emacs
 # services.emacs.enable = true;
  
 # Neovim
 # programs.neovim.enable = true;
  
 # qt5
 # qt5.platformTheme = "qt5ct";
 # programs.qt5ct.enable = true;
  
 # Fish Shell 
 # programs.fish.enable = true;
 # users.users.feb14.shell = pkgs.fish;
 # users.defaultUserShell = pkgs.fish;
  
 # Zsh Shell
 # programs.zsh.enable = true;
 # users.defaultUserShell = pkgs.zsh;
 # programs.zsh.ohMyZsh.enable = true;
 # programs.zsh-autosuggestions.enable = true;
  
 # Configure keymap in X11
 # services.xserver = {
 # layout = "us";
 # xkbVariant = "";
 # };

 # Enable touchpad support (enabled default in most desktopManager).
 # services.xserver.libinput.enable = true;

 # Allow unfree packages
 # nixpkgs.config.allowUnfree = true;
 
 # Environment Variables
 # environment.variables = {
 # QT_QPA_PLATFORMTHEME = "qt5ct";
 # };

 # Main Packages-------------------------- 
 home.packages = with pkgs; [
 
 # Terminal--
 # alacritty
 # terminator
 # starship
 
 # System Theams and Icons-----
 arc-theme
 arc-icon-theme
 plata-theme
 bibata-cursors
 bibata-extra-cursors
 capitaine-cursors
 papirus-icon-theme
 hicolor-icon-theme
 # material-design-icons
 # material-icons
 # nerdfonts
 # paper-gtk-theme
 
 # Internet--
 # brave
 # firefox
 # youtube-dl
 # qbittorrent
 # ungoogled-chromium
 
 # Mail and Messengers----- 
 # tdesktop
 # thunderbird-bin
 
 # Utilities--
 # volctl
 # bitwarden
 # conky
 # ulauncher
 # flameshot
 # p7zip unzip zip
 # gnome.file-roller
 # picom
 # git
 # wget
 # curl
 # lm_sensors 
 # pfetch 
 # vim
 # piper
 
 # Audiuo and Video-----
 # kdenlive
 # obs-studio
 # blender 
 # simplescreenrecorder
 # vlc
 # nuclear
 # mpv
 # pavucontrol
 # tenacity
 # celluloid
 # spotify
 
 # Desktop Applications-----
 # libreoffice
 # onlyoffice-bin
 # gnome3.gnome-calculator
 # gnome.simple-scan
 # gimp
 # krita
 # okular
 # parcellite
 # joplin-desktop
 # gnome.gucharmap
 # shotwell
 
 # Stock Trading-----
 # zeroad

 # File and Folders-----
 # ripgrep 
 # pcmanfm
     
 # Virtualisation-----
 # virt-manager

 # XFCE Plugins-----
 # xfce.ristretto 
 # xfce.xfce4-whiskermenu-plugin
 
 ];
  
   
  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "20.09";
}
