-- ==========================================
-- ANIMATION CURVES
-- ==========================================

hl.curve("m3_standard", {
    type = "bezier",
    points = {
        { 0.2, 0 },
        { 0, 1 },
    },
})

hl.curve("m3_decel", {
    type = "bezier",
    points = {
        { 0.05, 0.7 },
        { 0.1, 1 },
    },
})

hl.curve("m3_accel", {
    type = "bezier",
    points = {
        { 0.3, 0 },
        { 1, 1 },
    },
})


-- ==========================================
-- ANIMATIONS
-- ==========================================

hl.animation({
    leaf = "windowsIn",
    enabled = true,
    speed = 3.2,
    bezier = "m3_decel",
    style = "popin 75%",
})

hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 2.5,
    bezier = "m3_accel",
    style = "popin 85%",
})

hl.animation({
    leaf = "windowsMove",
    enabled = true,
    speed = 3.0,
    bezier = "m3_standard",
    style = "slide",
})

hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 2.5,
    bezier = "m3_decel",
})

hl.animation({
    leaf = "fadeLayers",
    enabled = true,
    speed = 2.5,
    bezier = "m3_decel",
})

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 3.4,
    bezier = "m3_standard",
    style = "slide",
})

hl.animation({
    leaf = "specialWorkspace",
    enabled = true,
    speed = 3.4,
    bezier = "m3_standard",
    style = "slidevert",
})
