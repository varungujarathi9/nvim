return { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  lazy=false, 
  priority = 1000,
  config = function()
    -- load the colorscheme here
    vim.cmd([[colorscheme catppuccin]])
  end,
}

