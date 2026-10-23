return {
  "folke/zen-mode.nvim",

    event = "VeryLazy", -- Lazy load on a useful event
  cmd = "ZenMode",
  keys = {
    { "<space>z", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode" },
  },
  opts = {
  },
}
