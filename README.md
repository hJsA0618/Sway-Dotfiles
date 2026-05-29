
# Javier dotfiles
Mi primer configuración basica de mi Swa aprender a configurar un entorno desde 0. Un entorno de ventanas tipo "tiling" con el resalto de usar colores en azul, enfoque en la productividad y acomodo automático.

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

### 4 
tenemos que se usa punteros para amyor facilidad. que quiere decir es que tu al copiar los dotfiles en tu carpeta personal esta apunta a los ~.config para mayor portabilidad sin tener que estar copiando tus archivos manualmente.
