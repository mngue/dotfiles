local function saved_colorscheme()
  local file = io.open(vim.fn.stdpath("data") .. "/colorscheme.txt", "r")
  if file then
    local cs = file:read("*l")
    file:close()
    if cs and cs ~= "" then
      return cs
    end
  end
  return "tokyonight-storm"
end

return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = saved_colorscheme(),
    },
  },
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "sainnhe/gruvbox-material",
  },
  {
    "vague-theme/vague.nvim",
  },
  {
    "AlexvZyl/nordic.nvim",
    opts = {
      -- This callback can be used to override the colors used in the palette.
      on_palette = function(palette)
        return palette
      end,
      -- Enable bold keywords.
      bold_keywords = true,
      -- Enable italic comments.
      italic_comments = true,
      -- Enable general editor background transparency.
      transparency = true,
      -- Enable brighter float border.
      bright_border = false,
      -- Reduce the overall amount of blue in the theme (diverges from base Nord).
      reduced_blue = true,
      -- Swap the dark background with the normal one.
      swap_backgrounds = false,
      -- Override the styling of any highlight group.
      -- Cursorline options.  Also includes visual/selection.
      cursorline = {
        -- Bold font in cursorline.
        bold = true,
        -- Bold cursorline number.
        bold_number = true,
        -- Available styles: 'dark', 'light'.
        theme = "dark",
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.85,
      },
      noice = {
        -- Available styles: `classic`, `flat`.
        style = "classic",
      },
      telescope = {
        -- Available styles: `classic`, `flat`.
        style = "classic",
      },
      leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = false,
      },
      ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
      },
    },
  },
  { "savq/melange-nvim" },
  { "morhetz/gruvbox" },
  { "EdenEast/nightfox.nvim" },
  {
    "navarasu/onedark.nvim",
    opts = {
      style = "deep",
    },
    config = function(_, opts)
      vim.opt.background = "dark"
      require("onedark").setup(opts)
    end,
  },
  { "rebelot/kanagawa.nvim" },
  { "ribru17/bamboo.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "tiagovla/tokyodark.nvim",
  },
  {
    "sainnhe/everforest",
  },
  {
    "everviolet/nvim",
  },
}
