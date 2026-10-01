# dotfiles

Configuración de mi portátil con CachyOS: Hyprland + Noctalia.

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
| `energia`  | Script + servicio: perfil `balanced` con cargador y `power-saver` con batería |
| `system`   | Archivos del sistema (keyd, udev, greetd + Noctalia Greeter). **No se enlazan con stow**: se copian con sudo |

## Instalar / enlazar

```sh
cd ~/dev/projects/personal/dotfiles
stow --no-folding -t ~ hypr noctalia kitty uwsm qt6ct menus swash energia bin brave
systemctl --user enable --now perfil-energia.service
```

`--no-folding` enlaza archivo a archivo en vez de carpetas enteras, para que lo que las apps
generan solas (por ejemplo los colores de Noctalia) no acabe dentro del repositorio.

Archivos del sistema:

```sh
sudo install -Dm644 system/etc/keyd/default.conf /etc/keyd/default.conf && sudo keyd reload
sudo install -Dm644 system/etc/greetd/config.toml /etc/greetd/config.toml
sudo install -Dm644 system/etc/pam.d/greetd /etc/pam.d/greetd
sudo install -Dm644 -o greeter -g greeter system/var/lib/noctalia-greeter/greeter.toml /var/lib/noctalia-greeter/greeter.toml
sudo systemctl enable greetd.service   # pantalla de inicio de sesión (Noctalia Greeter)
sudo install -Dm644 system/etc/udev/rules.d/70-yunzii-al80.rules /etc/udev/rules.d/70-yunzii-al80.rules
```

## Versiones

Cada variante del escritorio vive en su propia rama. `main` es la configuración de partida.

| Rama    | Idea |
|---------|------|
| `main`  | Base de CachyOS adaptada, sin widgets |
| `marco` | Barra arriba + columna izquierda con marco y pico (Noctalia "Sidebar Frame"), morado de Cinnamon |
| `hud`   | Paneles tipo HUD flotando (Ghost in the Shell / Nyx), cian/violeta, fuente monoespaciada, stickers |
| `isla`  | Minimalista: barra píldora flotante, reproductor a la izquierda (Niri), columna a la derecha (impasto) |

```sh
version-escritorio          # lista las versiones (la actual con *)
version-escritorio marco    # cambia a "marco" y la aplica al momento
```

Lo propio de cada versión está en:

- `noctalia/.config/noctalia/version.toml`: tema, fondo, barra y widgets del escritorio.
  Noctalia carga todos los `*.toml` por orden alfabético, así que sobrescribe a `config.toml`.
- `noctalia/.config/noctalia/palettes/<Nombre>.json`: la paleta de colores.
- `hypr/.config/hypr/config/decorations.lua` (bordes, huecos, redondeo) y, en `marco`,
  `monitors.lua` (espacio reservado para la columna).
- `assets/<versión>/`: fondo provisional e imágenes (marco, stickers).

Para cambiar algo de una versión: ponte en ella (`version-escritorio hud`), edita, prueba y haz
commit. `version-escritorio` no te deja cambiar con cambios sin guardar.

Si colocas widgets con el editor de Noctalia (`noctalia msg desktop-widgets-edit`) o eliges un fondo
desde su panel, eso se guarda en `~/.local/state/noctalia/settings.toml` y **se pierde al cambiar de
versión**. Para conservarlo, pásalo al `version.toml` de la rama (Ajustes de Noctalia → Export Config).
