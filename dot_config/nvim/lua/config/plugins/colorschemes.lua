return {
  {
    'marko-cerovac/material.nvim',
    enabled = true,
    priority = 1000,
    config = function()
      require("material").setup({

        contrast = {
          floating_windows = true,
          lsp_virtual_text = true,
        },

        styles = {
          comments = { --[[ italic = true ]] },
          strings = { --[[ bold = true ]] },
          keywords = { --[[ underline = true ]] },
          functions = { --[[ bold = true, undercurl = true ]] },
          variables = {},
          operators = {},
          types = {},
        },

        custom_highlights = {},

      })

      vim.g.material_style = "deep ocean"
      vim.cmd("colorscheme material")
    end
  },
}
