#!/bin/bash

# Запрос IP адреса приставки
echo "Введите IP-адрес вашей приставки (Адрес приставки можно посмотреть в меню Настройки - Wi-Fi - Под подключенной сетью будет адрес приставки) <Пример адреса: 192.168.0.8>:"
read IP_ADDRESS

echo "Введите порт (Если Вы не знаете порт, нажмите Enter) <Пример порта: 5555>:"
read PORT

# Установка порта по умолчанию, если пользователь оставил поле пустым
if [[ -z "$PORT" ]]; then
    PORT=5555
fi

ADB_DEVICE="$IP_ADDRESS:$PORT"

# Подключение к устройству
echo "Подключаюсь к устройству $ADB_DEVICE..."
adb connect "$ADB_DEVICE"

# Проверка подключения
if [[ $? -ne 0 ]]; then
    echo "Ошибка подключения. Проверьте IP-адрес или порт. Если ошибка сохраняется проверьте статус функции ADB на сайте: https://developers.sber.ru/studio/settings/devices"
    exit 1
fi

# Относительный путь к папке с APK файлами
APK_DIR="./boxHack/Apps"

# Список APK-файлов для установки
APK_FILES=(
    "launcher.apk"
    "com-ndcsolution-androidtv-leankeykeyboard-5-63757744-229fdf6d17ae23d1986f0f7697f99e80.apk"
    "Solid-Explorer-Full-v2-8-14.apk"
    "vlc.apk"
    "youtube.apk"
    "RutubeTv.release.29.10.1.TV-androidtv.apk"
    "com.termux_0.118.0-118_minAPI24(armeabi-v7a)(nodpi)_apkmirror.com.apk"
    "ivi.apk"
    "HDrezka-App-v2.2.5.apk"
)

# Список пакетов для отключения
packages=(
    "ru.sberdevices.starlauncher"
)

# Установка APK
for apk in "${APK_FILES[@]}"; do
    APK_PATH="$APK_DIR/$apk"
    if [[ -f "$APK_PATH" ]]; then
        echo "Устанавливаю $apk..."
        adb install "$APK_PATH"
        if [[ $? -eq 0 ]]; then
            echo "Успешно установлено: $apk"
        else
            echo "Ошибка при установке: $apk"
        fi
    else
        echo "Файл не найден: $APK_PATH"
    fi
done

echo "Все приложения установлены, приступаю к отключению SberDevice пакетов"

# Отключение пакетов
for package in "${packages[@]}"; do
    adb shell pm disable-user --user 0 "$package"
done

echo "SberBox настроен. Приятного использования!"
