-- Hyprland default apps

TERMINAL     = "kitty"
FILE_MANAGER = "dolphin"
BROWSER      = "brave"
EDITOR       = "kate"
CALCULATOR   = "kcalc"

-- Monitors
-- El Samsung se identifica por su modelo ("desc:"), así funciona igual aunque cambie el puerto
-- (HDMI, USB-C, un dock...). Los nombres salen de: hyprctl monitors
MONITOR1 = "desc:Samsung Electric Company LC27G5xT HK7W704168" -- Odyssey G5 27": principal, en casa
MONITOR2 = "eDP-1"                                               -- pantalla del portátil
MONITOR3 = ""
PRIMARY_MONITOR = MONITOR1

-- Workspaces
NUM_WPM = 3 -- Number of workspaces per monitor (Max 10)
