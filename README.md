<h1>This is my neovim setup for daily usage</h1>

<p>
  There is no need to jump around threw different repos to get the code, all the setup will be found here at this <b>readme document</b> as far as <b>this</b> setups is concerned.
  For the config code please refer to the code inside the files and just copy/paste.
  This is a minimal config, nothing to fancy or to crazy 😃.
</p>

## List of the Packages used in this setup

- [Packer](https://github.com/wbthomason/packer.nvim)
- Treesitter (highlighting)
- Colorscheme (theme)
- Telescope (fuzzy finding)
- LSP (Language syntax support)

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

### Packer Installation

<p>Clone the repo of packer into your `.config` directory</p>

```
 git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## After this pretty much you can just copy and paste from the files in github 
