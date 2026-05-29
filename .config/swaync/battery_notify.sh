#!/bin/bash

# Variables para que funcione con udev
export DISPLAY=:0
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/1000/bus"

# Detectar la batería automáticamente
BAT_PATH=$(ls /sys/class/power_supply/BAT* 2>/dev/null | head -n1)

if [ -z "$BAT_PATH" ]; then
    echo "No se encontró batería" > /tmp/battery_debug.log
    exit 1
fi

# Leer estado
STATUS=$(cat "$BAT_PATH/status")

ICON=""
MESSAGE=""

if [ "$STATUS" = "Charging" ]; then
    ICON="🔌"
    MESSAGE="Cargador conectado"
elif [ "$STATUS" = "Discharging" ]; then
    ICON="🔋"
    MESSAGE="Cargador desconectado"
else
    ICON="⚡"
    MESSAGE="Estado de batería: $STATUS"
fi

# Enviar notificación
notify-send --urgency="normal" --expire-time=3000 "🔋 Batería" "$MESSAGE"

# Guardar log para depuración
echo "$(date): $STATUS - $MESSAGE" >> /tmp/battery_notify.log
