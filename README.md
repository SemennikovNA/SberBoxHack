# Установка ADB и запуск `boxHack.sh`

Этот README поможет вам установить ADB на Windows, macOS и Linux через терминал, а также запустить скрипт `boxHack.sh` для настройки SberBox.

## Установка ADB через терминал

### На Windows

1. Убедитесь, что установлен менеджер пакетов [Chocolatey](https://chocolatey.org/). Если его нет:
   - Откройте PowerShell **от имени администратора** и выполните:
     ```powershell
     Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
     ```

2. Установите ADB:
   ```powershell
   choco install adb
   ```

3. Проверьте установку:
   ```powershell
   adb version
   ```

### На macOS

1. Убедитесь, что установлен менеджер пакетов [Homebrew](https://brew.sh/). Если его нет:
   - Откройте терминал и выполните:
     ```bash
     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
     ```

2. Установите ADB:
   ```bash
   brew install android-platform-tools
   ```

3. Проверьте установку:
   ```bash
   adb version
   ```

### На Linux

#### Для Ubuntu/Debian:
1. Установите ADB:
   ```bash
   sudo apt update
   sudo apt install android-tools-adb
   ```
2. Проверьте установку:
   ```bash
   adb version
   ```

#### Для Fedora:
1. Установите ADB:
   ```bash
   sudo dnf install android-tools
   ```
2. Проверьте установку:
   ```bash
   adb version
   ```

#### Для Arch Linux:
1. Установите ADB:
   ```bash
   sudo pacman -S android-tools
   ```
2. Проверьте установку:
   ```bash
   adb version
   ```

## Запуск скрипта `boxHack.sh`

### Подготовка
1. Убедитесь, что ADB установлен и работает.
2. Скачайте этот репозиторий:

#### С помощью Git
   ```bash
   git clone https://github.com/SemennikovNA/SberBoxHack.git
   cd SberBoxHack
   ```

#### По прямой ссылке
   [Скачать ZIP](https://github.com/SemennikovNA/SberBoxHack/archive/refs/heads/master.zip)

3. Распакуйте архив и перейдите в папку репозитория.

### Запуск скрипта
1. Сделайте скрипт исполняемым:
   ```bash
   chmod +x boxHack.sh
   ```

2. Запустите скрипт:
   ```bash
   ./boxHack.sh
   ```

3. Следуйте инструкциям в окне терминала.

## Примечания

1. Скрипт работает только с активированной функцией ADB на устройстве.
2. Для включения ADB:
   - Перейдите на сайт [Sber Developers](https://developers.sber.ru/studio/settings/devices).
   - Войдите с помощью **Сбер ID**.
   - Привяжите устройство, указав его **номер устройства** (в меню **Настройки → Об устройстве**).
   - Включите ползунок в строке "Функция ADB".

3. Если функция ADB уже включена, но есть проблемы, проверьте:
   - Соединение по Wi-Fi между устройством и компьютером.
   - Правильность IP-адреса и порта, указанных при запуске скрипта.

## Обратная связь
Если у вас возникли вопросы или проблемы с использованием, создайте [Issue](https://github.com/SemennikovNA/SberBoxHack/issues) в репозитории.
