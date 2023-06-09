# Автоматическая загрузка и обработка аудио на основе `yt-dlp`

Этот скрипт предоставляет простой способ автоматической загрузки аудио албомов из YoutubeMusic с использованием утилиты `yt-dlp`. Он также добавляет обложки к загруженным аудиофайлам с помощью утилиты `sacad`. Для взаимодействия с пользователем и отображения прогресса скрипт использует графическую оболочку Zenity.

## Использование:

1. Сохраните скрипт в исполняемый файл, например, `audio_downloader.sh`.
2. Запустите скрипт, выполните команду: `sh audio_downloader.sh`.
3. Введите путь в текстовое поле. (Скрипт создаст указанный путь)
   ![pic](https://storage.yandexcloud.net/uuuuuno/pic/1.png)
4. Следующее диалоговое окно попросит ввести ссылку для загрузки аудио. (Похожую на: `https://music.youtube.com/playlist?list=OLAK5uy_nbXJ9trarUJQEfFJx_LJzLT6N2JTyNQyw`)
   ![pic](https://storage.yandexcloud.net/uuuuuno/pic/2.png)
5. Дождитесь загрузки и обработки аудио.
   ![pic](https://storage.yandexcloud.net/uuuuuno/pic/3.png)

## Зависимости:

- Zenity: графическая оболочка для диалоговых окон.
- yt-dlp: командная строка для загрузки аудио с различных платформ.
- sacad: утилита для добавления обложек к аудиофайлам.