# dotfiles

Configuración de mi portátil con CachyOS: Hyprland + Noctalia (y lo que queda de KDE Plasma).

## Cómo funciona

Cada carpeta de primer nivel es un "paquete" de [GNU Stow](https://www.gnu.org/software/stow/).
Dentro, los archivos están con la misma ruta que tendrían en `~`, y stow crea en `~` enlaces
simbólicos que apuntan aquí. Las apps leen su configuración de siempre, pero los archivos de
verdad viven en este repositorio.

| Paquete    | Qué es                                                         |
|------------|----------------------------------------------------------------|
| `hypr`     | Hyprland (config en Lua)                                        |
| `noctalia` | Noctalia Shell: barra, paneles, widgets                         |
| `kitty`    | Terminal                                                        |
| `uwsm`     | Variables de entorno de la sesión (cursor, Qt, navegador...)    |
| `qt6ct`    | Aspecto de las apps Qt/KDE dentro de Hyprland                    |
| `menus`    | Menú de aplicaciones para Dolphin fuera de KDE ("Abrir con")    |
| `swash`    | Editor de capturas de pantalla                                  |
| `al80`     | Script + servicio que cambia la distribución del YUNZII AL80 en Plasma |
| `energia`  | Script + servicio: perfil `balanced` con cargador y `power-saver` con batería (fuera de Plasma) |
| `system`   | Archivos de `/etc` (keyd, SDDM, udev). **No se enlazan con stow**: se copian con sudo |

## Instalar / enlazar

```sh
cd ~/dev/projects/personal/dotfiles
stow --no-folding -t ~ hypr noctalia kitty uwsm qt6ct menus swash al80 energia bin
systemctl --user enable --now al80-layout.service perfil-energia.service
```

`--no-folding` enlaza archivo a archivo en vez de carpetas enteras, para que lo que las apps
generan solas (por ejemplo los colores de Noctalia) no acabe dentro del repositorio.

Archivos del sistema:

```sh
sudo install -Dm644 system/etc/keyd/default.conf /etc/keyd/default.conf && sudo keyd reload
sudo install -Dm644 system/etc/sddm.conf.d/cursor.conf /etc/sddm.conf.d/cursor.conf
sudo install -Dm644 system/etc/udev/rules.d/70-yunzii-al80.rules /etc/udev/rules.d/70-yunzii-al80.rules
```

## Versiones

Cada variante del escritorio vive en su propia rama. `main` es la configuración que uso a diario.

```sh
git switch nombre-de-la-rama   # cambiar de versión
hyprctl reload                 # aplicar (Noctalia recarga sola su config)
```
