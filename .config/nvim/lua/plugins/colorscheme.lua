return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
      -- colorscheme = "gruvbox-material",
    },
  },
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "sainnhe/gruvbox-material",
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.g.gruvbox_material_background = "hard"
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  { "ellisonleao/gruvbox.nvim" },
  {
    "AlexvZyl/nordic.nvim",
  },
  { "rebelot/kanagawa.nvim" },
}
