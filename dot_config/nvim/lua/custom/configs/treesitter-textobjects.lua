require'nvim-treesitter.configs'.setup {
  textobjects = {
    select = {
      enable = true,
      -- Automatically jump forward to textobj, similar to targets.vim
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
        ["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
        ["ii"] = { query = "@conditional.inner", desc = "Conditional inner" },
        ["ai"] = { query = "@conditional.outer", desc = "Conditional outer" },
        ["a/"] = { query = "@comment.outer", desc = "Comment outer" },
        ["al"] = { query = "@loop.outer", desc = "loop outer" },
        ["il"] = { query = "@loop.inner", desc = "loop inner" },
      },
      include_surrounding_whitespace = true,
    },

    swap = {
      enable = true,
      swap_next = {
        ["<leader>a"] = "@parameter.inner",
      },
      swap_previous = {
        ["<leader>A"] = "@parameter.inner",
      },
    },
  },
}
