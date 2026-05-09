#!/bin/bash
# Usar $HOME permite que funcione en cualquier PC
DIR="$HOME/.config/sway/wallpapers"

# Validar si la carpeta existe para evitar errores
if [ ! -d "$DIR" ]; then
    notify-send "Error" "No se encontró la carpeta de wallpapers en $DIR"
    exit 1
fi

WALLPAPER=$(find "$DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | shuf -n 1)
NOMBRE=$(basename "$WALLPAPER")

pkill swaybg
swaybg -i "$WALLPAPER" -m fill &

# Notificación con icono dinámico
notify-send "Amethyst Edition" "Wallpaper: $NOMBRE" -i "$WALLPAPER" -t 2000
