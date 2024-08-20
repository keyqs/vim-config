

function SetColor(color)
    color = color or "onedark"
    vim.cmd.colorscheme(color)

--    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
--    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
--    vim.api.nvim_set_hl(0, "ColorColumn", {bg = "none"})
--    vim.api.nvim_set_hl(0, "LineNr", {bg = "none"})
end
vim.opt.background = "dark" -- set this to dark or light
vim.cmd("colorscheme oxocarbon")

--  if vim.fn.has("termguicolors") then
--    vim.opt.termguicolors = true
--  end
-- require('lualine').setup({
--   options = {
--     theme = "lackluster",
--   },
-- })
--  SetColor('kanagawa-wave')
