<h1>This is my neovim setup for daily usage</h1>

<p>
  There is no need to jump around threw different repos to get the code, all the setup will be found here at this **readme document** as far as **this** setups is concerned.
  For the config code please refer to the code inside the files and just copy/paste.
  This is a minimal config, nothing to fancy or to crazy.
</p>

=====================

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
