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
          -- preset = "default",
          layout = {
            width = 0.98,
            height = 0.98,
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
          Snacks.terminal.toggle(nil, { win = { position = "left" } })
        end,
        desc = "Toggle Left Terminal",
        mode = { "n", "t" },
      },

      {
        "<leader>;",
        function()
          Snacks.terminal.toggle("bash", { win = { position = "right" } })
        end,
        desc = "Toggle Right Terminal (Separate Session)",
        mode = { "n", "t" },
      },
      {
        "<leader>o",
        function()
          Snacks.terminal.toggle(nil, { win = { position = "bottom" } })
        end,
        desc = "Toggle Bottom Terminal (Separate Session)",
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
        ";a",
        function()
          Snacks.picker.grep()
        end,
        desc = "Grep ",
        mode = { "n" },
      },

      {
        ";f",
        function()
          Snacks.picker.files()
        end,
        desc = "File picker",
        mode = { "n" },
      },
    },
  },
}
