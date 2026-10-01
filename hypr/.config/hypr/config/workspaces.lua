-- Workspace rules wiki https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- Escritorios 1-4 en la pantalla principal (Samsung), 5-7 en la del portátil.
hl.workspace_rule({ workspace = "1", monitor = MONITOR1, default = true, persistent = true })
hl.workspace_rule({ workspace = "2", monitor = MONITOR1, persistent = true })
hl.workspace_rule({ workspace = "3", monitor = MONITOR1, persistent = true })
hl.workspace_rule({ workspace = "4", monitor = MONITOR1, persistent = true })
hl.workspace_rule({ workspace = "5", monitor = MONITOR2, default = true })
hl.workspace_rule({ workspace = "6", monitor = MONITOR2 })
hl.workspace_rule({ workspace = "7", monitor = MONITOR2 })

-- Sin el Samsung (p. ej. en la universidad), la regla de arriba haría que el portátil
-- empezara en el escritorio 5. En ese caso empezamos en el 1.
hl.on("hyprland.start", function()
    if not hl.get_monitor(MONITOR1) then
        hl.dispatch(hl.dsp.focus({ workspace = 1 }))
    end
end)

-- For other layouts such as scrolling, see example below
-- hl.workspace_rule({ workspace = "1", monitor = MONITOR1, default = true, persistent = true, layout = "scrolling" })
