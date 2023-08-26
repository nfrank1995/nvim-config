--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
-- map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', 'n', '<cmd>NvimTreeToggle<CR>', {}) 

-- Toggle Telescope
map('n', 'ff', '<cmd>Telescope find_files<CR>', {})
