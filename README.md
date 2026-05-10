
# 💜 Javier's Sway Dotfiles (Amethyst Edition)

Configuración personalizada para **SwayWM** optimizada para **Fedora** (específicamente Fedora Sway Spin). Un entorno de ventanas tipo "tiling" con estética violeta vibrante, enfoque en la productividad y acomodo automático.

---

## 🛠️ Instalación rápida

### 1. Clonar el repositorio

```bash
git clone https://github.com/tu-usuario/dotfiles.git
cd dotfiles

```

### 2. Instalar dependencias (Fedora)

Este comando instala el gestor de ventanas, utilidades de imagen y el sistema de notificaciones necesario:

```bash
sudo dnf install sway kitty rofi thunar brave-browser swaync wlogout \
swaylock grim slurp jq gsettings-desktop-schemas papirus-icon-theme \
waybar ranger python3-pip swaybg libnotify \
poppler-utils ffmpegthumbnailer ImageMagick \
brightnessctl wireplumber network-manager-applet polkit-gnome \
wl-clipboard xdg-desktop-portal-wlr

```

### 3. Instalar Autotiling (Acomodo inteligente)

Indispensable para que las ventanas se organicen automáticamente:

```bash
pip install autotiling

```

### 4. Desplegar configuración

Copia los archivos y otorga permisos de ejecución al script de wallpapers:

```bash
cp -r .config/* ~/.config/
cp -r .icons ~/.icons
cp -r .themes ~/.themes
chmod +x ~/.config/sway/cambiar_fondo.sh

```

---

## 🎨 Apariencia

| Componente | Detalle |
| --- | --- |
| **Tema GTK** | `Dream-Violet-Dark-GTK` |
| **Iconos** | `Papirus-Dark` |
| **Cursor** | `KayokoCursor (64px)` |
| **Terminal** | `Kitty` |
| **Notificaciones** | `SwayNC` |

---

## ⌨️ Atajos de Teclado Principales

La tecla **Super** (Windows) es `$mod`.

### Aplicaciones

* `$mod + Enter` → Abrir Terminal (Kitty)
* `$mod + d` → Lanzador Rofi (Apps y Combi)
* `$mod + t` → Gestor de archivos (Thunar)
* `$mod + b` → Navegador (Brave)
* `$mod + Shift + n` → Panel de notificaciones

### Sistema y Sesión

* `$mod + Shift + c` → Recargar configuración
* `$mod + Shift + q` → Cerrar ventana enfocada
* `$mod + Shift + w` → Menú de apagado (wlogout)
* `$mod + Alt + w` → **Cambiar Wallpaper (Aleatorio)** 🚀
* `$mod + Escape` → Bloquear pantalla (swaylock)
* `$mod + Control + k` → Cambiar idioma del teclado (ES / Latam)
* `$mod + Shift + Print` → Captura de pantalla (seleccionar zona)

### Ventanas

* `$mod + h/j/k/l` → Mover foco (estilo Vim)
* `$mod + flechas` → Mover foco
* `$mod + f` → Pantalla completa
* `$mod + r` → Modo Redimensionar (Esc para salir)
* `$mod + Shift + Espacio` → Alternar modo flotante

---

## 🚀 Notas adicionales

* **Wallpaper Dinámico:** El sistema busca imágenes automáticamente en `~/.config/sway/wallpapers/`. Al cambiar el fondo, recibirás una notificación con la miniatura de la imagen.
* **Barra:** Se incluye configuración optimizada para `waybar` en `.config/waybar`.
