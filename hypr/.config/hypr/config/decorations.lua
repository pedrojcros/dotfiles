-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 8,
        gaps_out = 16,
        border_size = 1,
        extend_border_grab_area = 10,
        resize_on_border = true,
        col = {
            active_border = {
                colors = { "rgba(3fd8e8ff)", "rgba(b07cffff)" }, -- cian -> violeta (paleta Hud)
                angle = 90,
            },
            inactive_border = "rgba(1f4a58aa)",
        },
    },
    group = {
        col = {
            border_active = CACHYLBLUE,
            border_inactive = CACHYGRAY,
            border_locked_active = CACHYDBLUE,
            border_locked_inactive = CACHYGRAY,
        },
        groupbar = {
            col = {
                active = CACHYLGREEN,
                inactive = CACHYGRAY,
                locked_active = CACHYDBLUE,
                locked_inactive = CACHYGRAY,
            },
        },
    },
    decoration = {
        dim_special = 0.3,
        rounding = 6,
        active_opacity = 0.94,
        inactive_opacity = 0.86,
        fullscreen_opacity = 1,
        blur = {
            size = 5,
            passes = 4,
            special = true,
        },
    },
})
