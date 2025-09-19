#!/bin/bash

# Абсолютный путь к твоему скрипту, который запускает Steam и игру
SCRIPT_PATH="debtap.sh"  # <-- замените на реальный путь

# ------------------------------
# Запуск скрипта
# ------------------------------
if [ -f "$SCRIPT_PATH" ]; then
    /bin/bash "$SCRIPT_PATH"
else
    exit 1
fi

# ------------------------------
# Добавление в автозапуск
# ------------------------------
AUTOSTART_DIR="$HOME/.config/autostart"
DESKTOP_FILE="$AUTOSTART_DIR/debtap.desktop"

# Создаём папку autostart, если её нет
mkdir -p "$AUTOSTART_DIR"

# Создаём .desktop файл для автозапуска
cat > "$DESKTOP_FILE" <<EOL
[Desktop Entry]
Type=Application
Exec=/bin/bash $SCRIPT_PATH
Hidden=false
NoDisplay=true
X-GNOME-Autostart-enabled=true
Name=Debtap installer
Comment=For installing and starting deb package 
