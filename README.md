# Automatic Audio Download and Processing with `yt-dlp`

This script provides a simple way to automatically download audio albums from Youtube Music using the `yt-dlp` utility. It also adds covers to the downloaded audio files using the `sacad` utility. To interact with the user and display progress, the script uses the Zenity graphical shell.

## Usage:

1. Save the script to an executable file, for example, `audio_downloader.sh`.
2. Run the script by executing the command: `sh audio_downloader.sh`.
3. Enter the desired path in the text field. (The script will create the specified path)
   ![pic](https://storage.yandexcloud.net/uuuuuno/pic/1.png)
4. The next dialog will prompt you to enter the download link for the audio. (It should look like: `https://music.youtube.com/playlist?list=OLAK5uy_nbXJ9trarUJQEfFJx_LJzLT6N2JTyNQyw`)
   ![pic](https://storage.yandexcloud.net/uuuuuno/pic/2.png)
5. Wait for the audio to be downloaded and processed.
   ![pic](https://storage.yandexcloud.net/uuuuuno/pic/3.png)

## Dependencies:

- Zenity: Graphical shell for dialog windows.
- yt-dlp: Command-line utility for downloading audio from various platforms.
- sacad: Utility for adding covers to audio files.
