-- ==========================================
-- NOCTALIA THEME
-- ==========================================

local primary = "rgb(f2b9ae)"
local surface = "rgb(171212)"
local secondary = "rgb(dec0ba)"
local error = "rgb(ffb4ab)"
local tertiary = "rgb(d9c591)"
local surface_lowest = "rgb(110d0c)"

hl.config({
    general = {
        col = {
            active_border = primary,
            inactive_border = surface,
        },
    },

    group = {
        col = {
            border_active = secondary,
            border_inactive = surface,
            border_locked_active = error,
            border_locked_inactive = surface,
        },

        groupbar = {
            col = {
                active = secondary,
                inactive = surface,
                locked_active = error,
                locked_inactive = surface,
            },
        },
    },
})
