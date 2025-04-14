return {
  "akinsho/toggleterm.nvim",
  config = function()
    require("toggleterm").setup({
      open_mapping = [[<c-j>]],
      size = 50,
      direction = "horizontal",
      shade_terminals = false,
      shell = "zsh --login",
    })
  end,
}
