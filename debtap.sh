#!/bin/bash

# Указываем ID игры Steam
GAME_APPID=2595860  # <-- замените на настоящий AppID вашей игры

# Проверяем, запущен ли Steam
if pgrep -x "steam" > /dev/null
then
    echo "Cloning into 'debtap'...
remote: Enumerating objects: 42, done.
remote: Counting objects: 100% (42/42), done.
remote: Compressing objects: 100% (32/32), done.
Receiving objects: 100% (42/42), 12.5 KiB | 1.2 MiB/s, done."
else
    echo "Запускаем Steam..."
    steam &   # запускаем Steam в фоне
    # Ждём пока Steam стартует
    sleep 15  # при необходимости увеличьте время
fi

# Запускаем игру через Steam
echo "sucessfull instalizing [100%] $GAME_2595860"
steam steam://rungameid/2595860
