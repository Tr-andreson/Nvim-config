return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,

    opts = {
      explorer = {
        enabled = true,
      },

      terminal = {
        win = {
          position = "left",
          width = 0.45,
        },
      },

      picker = {
        win = {
          input = {
            keys = {
              ["<Esc>"] = {
                "close",
                mode = { "n", "i" },
              },
            },
          },
        },

        layout = {
          preset = "default",
          layout = {
            width = 0.95,
            height = 0.95,
          },
        },

        sources = {
          explorer = {
            auto_close = true,

            layout = {
              preset = "default",
              layout = {
                box = "vertical",
                position = "float",
                width = 60,
                height = 25,
                border = "rounded",
                {
                  win = "input",
                  height = 1,
                },
                {
                  win = "list",
                },
              },
            },
          },
        },
      },
    },

    keys = {
      {
        "<leader>a",
        function()
          Snacks.terminal.toggle()
        end,
        desc = "Toggle Terminal Split",
        mode = { "n", "t" },
      },

      {
        "<leader>e",
        function()
          Snacks.explorer()
        end,
        desc = "Toggle File Explorer",
        mode = { "n" },
      },

      {
        "<leader>z",
        function()
          Snacks.zen()
        end,
        desc = "Toggle Zen Mode",
        mode = { "n" },
      },

      {
        "<leader>fc",
        function()
          Snacks.colorschemes()
        end,
        desc = "Toggle Colorschemes",
        mode = { "n" },
      },
    },
  },
}
