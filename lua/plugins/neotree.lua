return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true,
          never_show = {
            ".DS_Store",
            ".git",
          },
        },
      },
      window = {
        position = "right",
      },
    })
    vim.keymap.set("n", "<leader>b", ":Neotree filesystem reveal right<CR>", {})
  end,
}
