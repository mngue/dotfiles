-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here are

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function(args)
    local name = args.match
    if not name or name == "" then return end
    local file = io.open(vim.fn.stdpath("config") .. "/.colorscheme", "w")
    if file then
      file:write(name)
      file:close()
    end
  end,
})
