local color_gamma = require("tokyodark.utils").color_gamma
local gamma = require("tokyodark.config").gamma

local colors = {
    black = "#06080A",
    -- General background of the screen
    bg0 = "#0D0C1E",
    -- Secondary background. Used as a separator between backgrounds.
    bg1 = "#1b1a33",
    -- Used in visual mode
    bg2 = "#363366",
    bg3 = "#171536",
    -- Used as the line number color, and comment color
    bg4 = "#494766",
    bg5 = "#1d1b45",
    BG_RED = "#B3007A",
    bg_green = "#98C379",
    bg_blue = "#9FBBF3",
    diff_red = "#773440",
    diff_green = "#587738",
    diff_blue = "#354A77",
    diff_add = "#1E2326",
    diff_change = "#262b3d",
    diff_delete = "#281B27",
    fg = "#A0A8CD",
    red = "#ea00d9",
    orange = "#e68600",
    yellow = "#00dee6",
    green = "#12de00",
    blue = "#0060e6",
    cyan = "#D7A65F",
    purple = "#8c33ff",
    grey = "#4A5057",
    none = "NONE",
}
local function gamma_correction(colors)
    local colors_corrected = {}
    for k, v in pairs(colors) do
        colors_corrected[k] = color_gamma(v, gamma)
    end
    return colors_corrected
end

return gamma_correction(colors)
