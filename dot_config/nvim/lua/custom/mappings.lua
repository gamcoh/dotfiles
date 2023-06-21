---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- debugging with vimspector
    ["<leader>dG"] = { "<cmd>lua require('custom.configs.vimspector').generate_debug_profile()<cr>", "Generate Debug Profile" },
    ["<leader>dI"] = { "<cmd>VimspectorInstall<cr>", "Install" },
    ["<leader>dU"] = { "<cmd>VimspectorUpdate<cr>", "Update" },
    ["<leader>dR"] = { "<cmd>call vimspector#RunToCursor()<cr>", "Run to Cursor" },
    ["<leader>dc"] = { "<cmd>call vimspector#Continue()<cr>", "Continue" },
    ["<leader>di"] = { "<cmd>call vimspector#StepInto()<cr>", "Step Into" },
    ["<leader>do"] = { "<cmd>call vimspector#StepOver()<cr>", "Step Over" },
    ["<leader>ds"] = { "<cmd>call vimspector#Launch()<cr>", "Start" },
    ["<leader>dt"] = { "<cmd>call vimspector#ToggleBreakpoint()<cr>", "Toggle Breakpoint" },
    ["<leader>du"] = { "<cmd>call vimspector#StepOut()<cr>", "Step Out" },
    ["<leader>dS"] = { "<cmd>call vimspector#Stop()<cr>", "Stop" },
    ["<leader>dr"] = { "<cmd>call vimspector#Restart()<cr>", "Restart" },
    ["<leader>dx"] = { "<cmd>VimspectorReset<cr>", "Reset" },
    ["<leader>dH"] = { "<cmd>lua require('config.vimspector').toggle_human_mode()<cr>", "Toggle HUMAN mode" },
  },
}

-- more keybinds!

return M
