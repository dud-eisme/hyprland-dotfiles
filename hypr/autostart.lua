-------------------
---- AUTOSTART ----
-------------------

-- See https://wiki.hypr.land/Configuring/Basics/Autostart/

-- Autostart necessary processes (like notifications daemons, status bars, etc.)
-- Or execute your favorite apps at launch like this:
hl.on("hyprland.start", function()
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("./home/joe/hyprdeck/venv/bin/uvicorn server:app --host 0.0.0.0 --port 8765")
  hl.exec_cmd("mkfifo /run/user/$(id -u)/wob-volume.sock 2>/dev/null; tail -f /run/user/$(id -u)/wob-volume.sock | wob -c /home/joe/.config/wob/volume.ini")
  hl.exec_cmd("mkfifo /run/user/$(id -u)/wob-brightness.sock 2>/dev/null; tail -f /run/user/$(id -u)/wob-brightness.sock | wob -c /home/joe/.config/wob/brightness.ini")
  hl.exec_cmd("conky -c ~/.config/conky/conky_time.conf")
end)
