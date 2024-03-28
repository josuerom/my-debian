# Dotfiles Debian JR3.

## Ejecute
```bash
git clone https://github.com/josuerom/my-debian.git ~/JR3Debian && cd ~/JR3Debian && sudo chmod +x ./install.sh && ./install.sh
```

Este script de bash realiza varias tareas relacionadas con la configuración del sistema y la instalación de software. Aquí está el resumen de lo que hace, sin incluir los mensajes de salida:

Actualiza los repositorios del sistema y realiza una actualización completa del sistema.

1. Instala varios paquetes y herramientas utilizando el gestor de paquetes apt. Los paquetes instalados son: `curl, wget, xclip, vim, ranger, htop, cmatrix, g++, default-jdk, default-jre y snapd`.
2. Elimina el navegador web `firefox` usando apt purge.
3. Copia los archivos de fuentes (`.fonts`) al directorio de fuentes del sistema (`/usr/share/fonts/`) para que las use.
4. Instala varias aplicaciones usando snap: `chromium, spotify, notion-snap-reborn, teams-for-linux, code`.
5. Instala dos paquetes del directorio `.deb-install/`: `ulauncher_5.15.6_all.deb, cpeditor-6.11.2-linux-amd64.deb`.
6. Mueve el archivo cf-tools al directorio `/usr/bin/` para la gestión y creación rápida de contest de codeforces.
7. Mueve todos los archivos y directorios ocultos, al directorio del usuario (`~/` o `$HOME`).
