local builtin = require('telescope.builtin')


-- Project files (All file search)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Search buffers
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- Git File search
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Project search
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- Man pages
vim.keymap.set('n', '<C-m>', function ()
    builtin.man_pages({ sections = {"ALL"}})
end)
