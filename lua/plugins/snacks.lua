return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      terminal = {
        win = {
          position = "left", -- Opens as a horizontal split at the bottom
          height = 0.3,        -- Takes up 30% of screen height
        },
      },
    },
    keys = {
      -- Toggle bottom split terminal in both Normal and Terminal mode
      {
        "<leader>a",
        function()
          Snacks.terminal.toggle()
        end,
        desc = "Toggle Terminal Split",
        mode = { "n", "t" },
      },
    },
  },
}
