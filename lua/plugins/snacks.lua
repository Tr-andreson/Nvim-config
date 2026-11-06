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
          -- Left terminal (default session)
          Snacks.terminal.toggle(nil, { win = { position = "left" } })
        end,
        desc = "Toggle Left Terminal",
        mode = { "n", "t" },
      },

      {
        "<leader>;",
        function()
          -- Right terminal with a separate session/command
          -- Replace "bash" or add flags if you want an entirely separate isolated shell process
          Snacks.terminal.toggle("bash", { win = { position = "right" } })
        end,
        desc = "Toggle Right Terminal (Separate Session)",
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
