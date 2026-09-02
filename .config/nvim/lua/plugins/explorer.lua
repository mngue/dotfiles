return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    picker = {
      sources = {
        explorer = {
          layout = { layout = { width = 30, min_width = 30 } },
        },
      },
    },
  },
}
