
local colorscheme = "tokyonight"

local is_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not is_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end


-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- if not status then
--     print ("Colorscheme not found!")
--     return
-- end


