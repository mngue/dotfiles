return {
  {
    "LazyVim/LazyVim",
    opts = function()
      local state_file = vim.fn.stdpath("config") .. "/.colorscheme"
      local file = io.open(state_file, "r")
      local saved = file and file:read("*l")
      if file then file:close() end
      return { colorscheme = (saved and saved ~= "") and saved or "kanagawa" }
    end,
  },
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_background = "hard"
    end,
  },
  { "ellisonleao/gruvbox.nvim" },
  {
    "AlexvZyl/nordic.nvim",
  },
  { "rebelot/kanagawa.nvim" },
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },
  {
    "tiagovla/tokyodark.nvim",
    opts = {
      -- custom options here
    },
  },
}
