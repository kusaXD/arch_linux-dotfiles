-- ==========================================
-- MONITOR
-- ==========================================

hl.monitor({
    output = "DP-1",
    mode = "3440x1440@144",
    position = "0x0",
    scale = 1,
})


-- ==========================================
-- AUTOSTART
-- ==========================================

hl.on("hyprland.start", function()
    hl.exec_cmd("noctalia")
end)


-- ==========================================
-- ENVIRONMENT
-- ==========================================

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")


-- ==========================================
-- GENERAL
-- ==========================================

hl.config({
    general = {
        gaps_in = 15,
        gaps_out = 20,
        border_size = 0,

        col = {
            active_border = {
                colors = {
                    "rgba(33ccffee)",
                    "rgba(00ff99ee)",
                },
                angle = 45,
            },

            inactive_border = "rgba(595959aa)",
        },

        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle",
        
    },

    dwindle = {
      preserve_split = true,
    },
  
    decoration = {
        rounding = 0,
        rounding_power = 2,

        active_opacity = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled = true,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)",
        },

        blur = {
            enabled = true,
            size = 20,
            passes = 1,
            vibrancy = 0.1696,
        },
    },

    master = {
        new_status = "master",
    },

    misc = {
        force_default_wallpaper = -1,
        disable_hyprland_logo = false,
    },

    input = {
        kb_layout = "us,ru",
        kb_variant = "",
        kb_model = "",
        kb_options = "grp:win_space_toggle",
        kb_rules = "",

        follow_mouse = 1,
        sensitivity = 0,

        touchpad = {
            natural_scroll = false,
        },
    },
})


-- ==========================================
-- GESTURES
-- ==========================================

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})


-- ==========================================
-- MOUSE
-- ==========================================

hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})


-- ==========================================
-- WINDOW RULES
-- ==========================================

hl.window_rule({
    name = "suppress-maximize-events",

    match = {
        class = ".*",
    },

    suppress_event = "maximize",
})


hl.window_rule({
    name = "fix-xwayland-drags",

    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },

    no_focus = true,
})


hl.window_rule({
    name = "move-hyprland-run",

    match = {
        class = "hyprland-run",
    },

    move = {
        20,
        "monitor_h-120",
    },

    float = true,
})


-- ==========================================
-- MODULES
-- ==========================================

require("cfg.animations")
require("cfg.keybindings")
require("cfg.noctalia")

-- For Noctalia Color templates
require("noctalia").apply_theme()
