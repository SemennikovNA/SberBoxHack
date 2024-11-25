### **README: Установка ADB и запуск `boxHack.sh`**

Этот README поможет вам установить ADB на Windows, macOS и Linux через терминал, а также запустить скрипт `boxHack.sh` для настройки SberBox.

---

## **Установка ADB через терминал**

### **На Windows**

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

---

### **На macOS**

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

---

### **На Linux**

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

---

## **Запуск скрипта `boxHack.sh`**

### Подготовка:
1. Убедитесь, что 
2. Убедитесь, что ADB установлен и работает.
3. Скачайте этот репозиторий:

# С помощью Git
   ```bash
   git clone git@github.com:SemennikovNA/SberBoxHack.git
   cd boxHack
   ```
# По ссылке
https://github.com/SemennikovNA/SberBoxHack/archive/refs/heads/master.zip


### Запуск скрипта:
1. Сделайте скрипт исполняемым:
   ```bash
   chmod +x boxHack.sh
   ```

2. Запустите скрипт:
   ```bash
   ./boxHack.sh
   ```

3. Следуйте инструкциям в окне терминала.

---

### Важное примечание:

1. Всё выше описанное работает только для прошивки приставки по воздуху
2. Для прошивки приставки убедитесь что у Вас включена функция ADB на сайте https://developers.sber.ru/studio/settings/devices
3. Если функция ADB не включена, войдите в свой профиль по СберID на сайте https://developers.sber.ru/studio/settings/devices
4. Привяжите устройство с помощью номера устройства (Смотреть на приставке в меню Настройки - Об устройстве - Номер устройства)
5. Перетяните ползунок в строке "Функция ADB"
6. Запустите скрипт еще раз
