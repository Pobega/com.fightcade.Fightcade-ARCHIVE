#!/bin/sh

# Silently create/update Wine prefix
WINEDEBUG=-all DISPLAY=:invalid wineboot -u

# Boot Fightcade frontend
/app/bin/zypak-wrapper /app/extra/Fightcade/fc2-electron/fc2-electron
