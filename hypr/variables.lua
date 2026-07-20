terminal         = "alacritty"
fileManager      = "dolphin"
browser          = "firefox"
virtManager      = "virt-manager"
audioManager     = "pavucontrol"
musicPlayer      = "alacritty --class spotify_player -e spotify_player"
discord          = "vesktop"
minecraft        = "minecraft-launcher"

_G.volume_notify = function(action)
  os.execute("pamixer " .. action)
  local handle = io.popen("pamixer --get-volume")
  local vol = handle:read("*a")
  handle:close()
  os.execute(string.format("dunstify -r 2593 -h int:value:%s 'Volume' 'Level: %s%%'", vol, vol))
end
