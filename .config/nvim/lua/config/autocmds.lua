-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here are

-- Persist colorscheme across sessions
vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    local colorscheme = vim.g.colors_name
    if colorscheme then
      local file = io.open(vim.fn.stdpath("data") .. "/colorscheme.txt", "w")
      if file then
        file:write(colorscheme)
        file:close()
      end
    end
  end,
})
