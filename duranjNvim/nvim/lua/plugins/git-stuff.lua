return {
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup()

      vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
    end,
  },
  {
    "ThePrimeagen/git-worktree.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    },
    opts = {},
    config = function()
      require("telescope").load_extension("git_worktree")
    end,
    -- stylua: ignore
    keys = {
      {"<leader>gw", function() require("telescope").extensions.git_worktree.git_worktrees() end, desc = "Git worktress"},
      {"<leader>gwc", function() require("telescope").extensions.git_worktree.create_git_worktree() end, desc = "Create"},
    }
,
  },
}
