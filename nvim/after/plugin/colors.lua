function InitColors(color) 
  -- color = color or 'rose-pine';
  color = color or 'gruvbox';
  vim.cmd.colorscheme(color);

  -- set background to transparent
  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

InitColors()
