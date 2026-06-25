return {
  {
    "oskarnurm/koda.nvim",
    lazy = false,
    priority = 1001,
    config = function()
      require("koda").setup({
        theme = { dark = "moss" },
      })
    end,
  },
  {
    "kepano/flexoki-neovim",
    -- lazy = false,
    -- priority = 1001,
  },
  {
    "scottmckendry/cyberdream.nvim",
    -- lazy = false,
    -- priority = 1001,
  },
  {
    "neanias/everforest-nvim",
    lazy = true,
  },
  { "gbprod/nord.nvim", lazy = true },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "koda",
    },
    priority = 1000,
  },
}
