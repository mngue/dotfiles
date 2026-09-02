return {
  "nickjvandyke/opencode.nvim",
  version = "*",
  dependencies = {
    "folke/snacks.nvim",
    "saghen/blink.cmp",
  },
  config = function()
    local term_cmd = "opencode --port"
    local term_opts = {
      win = {
        position = "right",
        on_buf = function(self)
          -- Scoped to this terminal buffer only, so <C-d>/<C-u> keep their
          -- normal Neovim/terminal meaning everywhere else.
          vim.keymap.set({ "n", "t" }, "<C-u>", function()
            require("opencode").command("session.half.page.up")
          end, { buffer = self.buf, desc = "Scroll OpenCode up" })

          vim.keymap.set({ "n", "t" }, "<C-d>", function()
            require("opencode").command("session.half.page.down")
          end, { buffer = self.buf, desc = "Scroll OpenCode down" })
        end,
      },
    }

    ---@type opencode.Opts
    vim.g.opencode_opts = {
      server = {
        start = function()
          Snacks.terminal.open(term_cmd, term_opts)
        end,
      },
    }

    vim.keymap.set("n", "<leader>oo", function()
      Snacks.terminal.toggle(term_cmd, term_opts)
    end, { desc = "Toggle OpenCode panel" })

    vim.keymap.set("n", "<leader>of", function()
      Snacks.terminal.focus(term_cmd, term_opts)
    end, { desc = "Focus OpenCode panel" })

    vim.keymap.set("n", "<leader>oc", function()
      local terminal = Snacks.terminal.get(term_cmd, vim.tbl_extend("force", term_opts, { create = false }))
      if terminal then
        terminal:close()
      end
    end, { desc = "Close OpenCode panel" })

    vim.keymap.set({ "n", "x" }, "<leader>oa", function()
      require("opencode").ask("@this: ")
    end, { desc = "Ask OpenCode" })

    vim.keymap.set({ "n", "x" }, "<leader>os", function()
      require("opencode").select()
    end, { desc = "Select OpenCode command" })

    vim.keymap.set({ "n", "x" }, "go", function()
      return require("opencode").operator("@this ")
    end, { desc = "Append range to OpenCode", expr = true })

    vim.keymap.set("n", "goo", function()
      return require("opencode").operator("@this ") .. "_"
    end, { desc = "Append line to OpenCode", expr = true })
  end,
}
