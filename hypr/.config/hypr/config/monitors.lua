-- Monitor wiki https://wiki.hypr.land/Configuring/Basics/Monitors/
-- Los nombres de MONITOR1/MONITOR2 están en variables.lua. Para ver los monitores: hyprctl monitors
-- Las posiciones son en píxeles lógicos; el (0,0) es la esquina superior izquierda del principal.

-- Samsung Odyssey G5 27" (en casa): principal, a la izquierda, a 144 Hz.
hl.monitor({
    output    = MONITOR1,
    mode      = "2560x1440@144",
    position  = "0x0",
    scale     = 1,
    reserved_area = { left = 320 }, -- versión "marco": la columna del marco (las ventanas no la tapan)
})

-- Portátil: a la derecha del Samsung y alineado con él por abajo (y = 1440 - 1080 = 360).
-- Cuando no está el Samsung (p. ej. en la universidad) se queda como única pantalla.
hl.monitor({
    output    = MONITOR2,
    mode      = "preferred",
    position  = "2560x360",
    scale     = 1, -- igual que en Plasma ("auto" elegía 1.5)
    reserved_area = { left = 260 }, -- versión "marco": la columna del marco
})

-- Cualquier otra pantalla (proyector de clase, una TV...): resolución recomendada, a la derecha.
hl.monitor({
    output    = "",
    mode      = "preferred",
    position  = "auto",
    scale     = 1,
})
