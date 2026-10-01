-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 6,
        gaps_out = 14,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = true,
        col = {
            active_border = {
                colors = { "rgba(c58bffff)", "rgba(ff6fb5ff)" }, -- morado -> rosa (paleta Marco)
                angle = 45,
            },
            inactive_border = "rgba(5a3f80aa)",
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
        rounding = 14,
        active_opacity = 0.96,
        inactive_opacity = 0.88,
        fullscreen_opacity = 1,
        blur = {
            size = 5,
            passes = 4,
            special = true,
        },
    },
})
