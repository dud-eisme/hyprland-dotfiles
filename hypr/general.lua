------------------
---- MONITORS ----
------------------

hl.monitor({
  output   = "eDP-1",
  mode     = "2560x1600@240",
  position = "0x0",
  scale    = 1,
})

hl.monitor({
  output   = "VNC-1",
  mode     = "1920x1080@60",
  position = "2560x0",
  scale    = 1,
  transform= 1,
})


-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
  general = {
    gaps_in           = 5,
    gaps_out          = 5,

    border_size       = 4,

    col               = {
      active_border   = "rgba(9067C6CC)",
      inactive_border = "rgba(000000FF)",
    },

    no_focus_fallback = true,
    resize_on_border  = false,
    allow_tearing     = false,
    layout            = "dwindle",
  },

  decoration = {
    rounding         = 10,
    rounding_power   = 2,

    active_opacity   = 0.99,
    inactive_opacity = 0.9,

    shadow           = {
      enabled      = true,
      range        = 4,
      render_power = 3,
      color        = 0x331a1a1a,
    },

    blur             = {
      enabled  = true,
      size     = 3,
      passes   = 1,
      vibrancy = 0.1696,
    },
  },

  animations = {
    enabled = true,
  },
})


hl.config({
  xwayland = {
    force_zero_scaling = true,
  },
})



----------------
----  MISC  ----
----------------

hl.config({
  misc = {
    force_default_wallpaper = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
    disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
  },
})
