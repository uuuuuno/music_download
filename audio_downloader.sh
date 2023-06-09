#!/bin/bash

path=$(zenity --entry --title="Ввод" --text="Введите путь для перехода (cd):" --width=400)

mkdir -p "$path" || { zenity --error --title="Ошибка" --text="Ошибка при создании директории."; exit 1; }

cd "$path" || { zenity --error --title="Ошибка" --text="Ошибка при переходе в директорию."; exit 1; }

link=$(zenity --entry --title="Ввод" --text="Введите ссылку для загрузки аудио:" --width=400)

(
    echo "40" ; sleep 1
    echo "# Выполняется загрузка аудио..." ; sleep 1
    yt-dlp -f 'bestaudio' --extract-audio --audio-format mp3 --add-metadata "$link" || { echo "100" ; sleep 1 ; echo "# Ошибка при загрузке аудио."; exit 1; }

    echo "70" ; sleep 1
    echo "# Добавляем обложки..." ; sleep 1
    sacad_r -f . 600 + -s 'itunes' -a 'ca' || { echo "100" ; sleep 1 ; echo "# Ошибка при добавлении обложки."; exit 1; }

    echo "100"
) | zenity --progress \
    --title="Прогресс загрузки" \
    --text="Выполняется загрузка..." \
    --percentage=0 \
    --width=400 \
    --auto-close

if [ "$?" = -1 ] ; then
    zenity --error --title="Ошибка" --text="Загрузка отменена." --width=400
else
    zenity --info --title="Информация" --text="Загрузка удалась!" --width=400

    xdg-open . &
fi
