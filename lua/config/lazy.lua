-- Load core configurations first (options, keymaps, autocmds)
require("config.keymaps")
require("config.autocmds")
require("config.options")
-- bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

local uv = vim.uv or vim.loop
if not uv.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

-- set runtime path FIRST
vim.opt.rtp:prepend(lazypath)

-- setup plugins
require("lazy").setup({
  spec = {
    { import = "plugins" },
  },

  git = {
    timeout = 86400, -- 1 day
  },

  defaults = {
    lazy = true,
    version = false,
  },

  checker = {
    enabled = false,
  },

  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
