-- Look and feel configuration

hl.config({
    general = {
        gaps_in = 10,
        gaps_out = 22,
        border_size = 2,
        extend_border_grab_area = 10,
        resize_on_border = true,
        col = {
            active_border = {
                colors = { "rgba(b4a5ffcc)", "rgba(ffa5cccc)" }, -- lila -> rosa suave (paleta Isla)
                angle = 45,
            },
            inactive_border = "rgba(3a385888)",
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
        rounding = 20,
        shadow = {                     -- sombra suave: las ventanas parecen flotar
            enabled = true,
            range = 26,
            render_power = 3,
            color = "rgba(05050c88)",
        },
        active_opacity = 0.95,
        inactive_opacity = 0.88,
        fullscreen_opacity = 1,
        blur = {
            size = 5,
            passes = 4,
            special = true,
        },
    },
})
