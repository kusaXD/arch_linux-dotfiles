local mainMod = "SUPER"


-- ==========================================
-- TERMINAL / BASIC
-- ==========================================

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("kitty"))

hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("thunar"))

hl.bind(
    mainMod .. " + V",
    hl.dsp.window.float({ action = "toggle" })
)

hl.bind(
    mainMod .. " + J",
    hl.dsp.layout("togglesplit")
)

hl.bind(
    mainMod .. " + C",
    hl.dsp.window.kill()
)


-- ==========================================
-- PROGRAMS
-- ==========================================

hl.bind(
    mainMod .. " + B",
    hl.dsp.exec_cmd("~/.local/bin/chromium-vpn")
)

hl.bind(
    mainMod .. " + N",
    hl.dsp.exec_cmd("~/Downloads/v2rayN-linux-64/v2rayN")
)


-- ==========================================
-- NOCTALIA
-- ==========================================

hl.bind(
    mainMod .. " + W",
    hl.dsp.exec_cmd("noctalia msg panel-toggle wallpaper")
)

hl.bind(
    mainMod .. " + R",
    hl.dsp.exec_cmd("noctalia msg panel-toggle launcher")
)


-- ==========================================
-- MOVE FOCUS
-- ==========================================

hl.bind(
    mainMod .. " + LEFT",
    hl.dsp.focus({ direction = "l" })
)

hl.bind(
    mainMod .. " + RIGHT",
    hl.dsp.focus({ direction = "r" })
)

hl.bind(
    mainMod .. " + UP",
    hl.dsp.focus({ direction = "u" })
)

hl.bind(
    mainMod .. " + DOWN",
    hl.dsp.focus({ direction = "d" })
)


-- ==========================================
-- WORKSPACES
-- ==========================================

for i = 1, 9 do
    hl.bind(
        mainMod .. " + " .. i,
        hl.dsp.focus({ workspace = i })
    )

    hl.bind(
        mainMod .. " + SHIFT + " .. i,
        hl.dsp.window.move({ workspace = i })
    )
end

-- 0 = workspace 10

hl.bind(
    mainMod .. " + 0",
    hl.dsp.focus({ workspace = 10 })
)

hl.bind(
    mainMod .. " + SHIFT + 0",
    hl.dsp.window.move({ workspace = 10 })
)


-- ==========================================
-- SPECIAL WORKSPACE
-- ==========================================

hl.bind(
    mainMod .. " + S",
    hl.dsp.workspace.toggle_special("magic")
)

hl.bind(
    mainMod .. " + SHIFT + S",
    hl.dsp.window.move({
        workspace = "special:magic",
    })
)


-- ==========================================
-- WORKSPACE SCROLL
-- ==========================================

hl.bind(
    mainMod .. " + mouse_down",
    hl.dsp.focus({ workspace = "e+1" })
)

hl.bind(
    mainMod .. " + mouse_up",
    hl.dsp.focus({ workspace = "e-1" })
)


-- ==========================================
-- MOVE / RESIZE WINDOWS
-- ==========================================

hl.bind(
    mainMod .. " + mouse:272",
    hl.dsp.window.drag(),
    { mouse = true }
)

hl.bind(
    mainMod .. " + mouse:273",
    hl.dsp.window.resize(),
    { mouse = true }
)


-- ==========================================
-- VOLUME
-- ==========================================

hl.bind(
    "XF86AudioRaiseVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"
    ),
    { repeating = true }
)

hl.bind(
    "XF86AudioLowerVolume",
    hl.dsp.exec_cmd(
        "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"
    ),
    { repeating = true }
)

hl.bind(
    "XF86AudioMute",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
    )
)

hl.bind(
    "XF86AudioMicMute",
    hl.dsp.exec_cmd(
        "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"
    )
)


-- ==========================================
-- BRIGHTNESS
-- ==========================================

hl.bind(
    "XF86MonBrightnessUp",
    hl.dsp.exec_cmd(
        "brightnessctl -e4 -n2 set 5%+"
    ),
    { repeating = true }
)

hl.bind(
    "XF86MonBrightnessDown",
    hl.dsp.exec_cmd(
        "brightnessctl -e4 -n2 set 5%-"
    ),
    { repeating = true }
)


-- ==========================================
-- MEDIA
-- ==========================================

hl.bind(
    "XF86AudioNext",
    hl.dsp.exec_cmd("playerctl next")
)

hl.bind(
    "XF86AudioPause",
    hl.dsp.exec_cmd("playerctl play-pause")
)

hl.bind(
    "XF86AudioPlay",
    hl.dsp.exec_cmd("playerctl play-pause")
)

hl.bind(
    "XF86AudioPrev",
    hl.dsp.exec_cmd("playerctl previous")
)
