return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.stylua,
        require("none-ls.diagnostics.eslint_d"),
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.diagnostics.checkstyle,

      },
    })

    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
    vim.keymap.set("n", "]g", vim.diagnostic.goto_next)
    vim.keymap.set("n", "[g", vim.diagnostic.goto_prev)
  end
}
