-- import plugin
local telescope_setup, telescope = pcall(require, "telescope")
if not telescope_setup then
    return
end

-- import actions for keymap      layout_strategy = 'flex',
local actions_setup, actions = pcall(require, "telescope.actions")
if not actions_setup then
    return
end

telescope.setup({
    pickers = default_picker_opts,
    defaults = {
        sorting_strategy = "ascending",
        ilayout_strategy = "flex",
        file_ignore_patterns = ignore_these,

        mappings = {
            i = {
                -- change these mappings later, currently not working bc of opts in keymaps
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,


            },

        },
        layout_config = {
            prompt_position = "top",
            horizontal = true, 
            preview_cutoff = 0, 
            preview_width = 0.5, 
        },
        vertical = {
            mirror = true, 
            preview_cutoff = 0.4,
        },
        flex = {
            flip_columns = 110, 

        },
        height = 0.94, 
        width = 0.86, 
    },

})

-- for dependency plugin
telescope.load_extension("fzf")
