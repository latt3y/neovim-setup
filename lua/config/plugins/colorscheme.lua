function init_colors() 
   vim.cmd.colorscheme = 'tokyonight';
end

return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = init_colors,
  }
}
