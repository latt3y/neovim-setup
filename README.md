<h1>This is my neovim setup for daily usage</h1>

<h3>Please make sure to have this folder/file structure as shown below</h3>

**Please first `cd` into `.config` at your home directory**

Then please follow this structure as shown below:
```
├── nvim/
│   ├── lua/
│   │   │── lati/   -- Name this folder whatever you want
│   │   │   │── editor.lua
│   │   │   │── init.lua
│   │   │   │── keymap.lua
│   │   │   │── packer.lua
│   ├── after/
│   │   │── plugin/
│   │   │   │── colors.lua
│   │   │   │── telescope.lua
│   │   │   │── treesitter.lua
│   ├── init.lua
```

## Package Installations required for this setup

- Get Packer (package manager)
- Get Treesitter (highlighting)
- Get Colorscheme (theme)
- Get Telescope (fuzzy finding)
- Get LSP (Language syntax support)
