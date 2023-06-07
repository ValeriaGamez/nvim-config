-- (Bootstraping)

local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data")..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()


-- Reload configurations if we modify plugins.lua

--     <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


-- Install plugins here - `use ...`
-- Packer.nvim hints
--     after = string or list,           -- Specifies plugins to load before this plugin. See "sequencing" below
--     config = string or function,      -- Specifies code to run after this plugin is loaded
--     requires = string or list,        -- Specifies plugin dependencies. See "dependencies". 
--     ft = string or list,              -- Specifies filetypes which load this plugin.
--     run = string, function, or table, -- Specify operations to be run after successful installs/updates of a plugin
return require("packer").startup(function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- lua functions for other plugins
    use "nvim-lua/plenary.nvim"

    -- Colorscheme 
    use "folke/tokyonight.nvim"
    -- use "bluz71/vim-nightfly-guicolors"
     
    
    -- TMUX, split window
    use "christoomey/vim-tmux-navigator"

    -- other plugins
    use "tpope/vim-surround"
    use "vim-scripts/ReplaceWithRegister"

    -- Multiline Comment and Indent
    use "numToStr/Comment.nvim"

    -- maximimze splits and restore
    use "szw/vim-maximizer" 

    -- file explorer and icons
    use "nvim-tree/nvim-web-devicons"
    use "nvim-tree/nvim-tree.lua"

    -- Lualine
    use "nvim-lualine/lualine.nvim"

    -- telescope
    use { 'nvim-telescope/telescope-fzf-native.nvim', run = "make" }
    use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder
    
    -- for autocompletion
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer" -- allows text rec
    use "hrsh7th/cmp-path" -- allows dir/paths 

    -- code snips  
    use "L3MON4D3/LuaSnip"
    use "saadparwaiz1/cmp_luasnip"
    use "rafamadriz/friendly-snippets"

    -- LSP plugins
    use "williamboman/mason.nvim" -- in charge of managing lsp servers, linters & formatters
    use "williamboman/mason-lspconfig.nvim" -- bridges gap b/w mason & lspconfig

    -- LSP server installer
    use "williamboman/nvim-lsp-installer" 

    -- config servers
    use "neovim/nvim-lspconfig" -- easily configure language servers
    






    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require("packer").sync()
    end
end)



