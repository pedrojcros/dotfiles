-- Input configuration

hl.config({
    input = {
        -- Distribución por defecto: la del teclado del portátil (español).
        -- El AL80 tiene la suya propia en el hl.device de más abajo.
        kb_layout = "es",
        -- sensitivity = -0.25,
        accel_profile = "flat",
    },
    -- Uncomment the section below to enable software cursors; this can help with cursor display or behavior issues
    -- cursor = {
    --     no_hardware_cursors = 1,
    -- },
})

-- YUNZII AL80 (cable o Bluetooth): inglés internacional con AltGr (á = AltGr+a, ñ = AltGr+n).
-- keyd captura el AL80 (Alt+flechas = Inicio/Fin) y reenvía sus teclas por su teclado
-- virtual, así que Hyprland lo ve con este nombre (compruébalo con: hyprctl devices).
hl.device({
    name       = "keyd-virtual-keyboard",
    kb_layout  = "us",
    kb_variant = "altgr-intl",
})

hl.gesture({ fingers = 4, direction = "horizontal", action = "workspace" })
hl.gesture({ fingers = 3, direction = "down",       action = "close" })
hl.gesture({ fingers = 3, direction = "up",         action = "fullscreen" })
hl.gesture({ fingers = 3, direction = "left",       action = "float" })
