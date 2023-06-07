local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
    return
end

-- settings 
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({

    -- patched icons
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "", -- closed folder
                    arrow_open = "", -- opened folder
                }, 
            }, 
        },
    },


    
    actions = { 
        open_file = {
            window_picker = {
                enable = false,

            },
        },
    },
})
