--[[ keys.lua ]]
function Map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.keymap.set(mode, lhs, rhs, options)
end

-- local dap = require("dap")
local telescope_builtin = require("telescope.builtin")
local dap = require("dap")

-- Toggle nvim-tree
Map('n', '<Leader>n', '<cmd>NvimTreeToggle<CR>')

-- Toggle Telescope
Map('n', '<Leader>ff', telescope_builtin.find_files)
Map('n', '<Leader>fg', telescope_builtin.live_grep)

-- Debugger
Map('n', '<F5>', dap.continue)
Map('n', '<F10>', dap.step_over)
Map('n', '<F11>', dap.step_into)
Map('n', '<F12>', dap.step_out)
Map('n', '<Leader>b', dap.toggle_breakpoint)
