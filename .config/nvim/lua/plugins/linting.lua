return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" }, -- event for lazyloading
  config = function()
    local lint = require("lint")
    -- linters
    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      python = { "pylint" },
    }
    local augroup = vim.api.nvim_create_augroup
    local autocmd = vim.api.nvim_create_autocmd
    local keymap = vim.keymap.set

    -- autocmd that triggers linting
    local lint_augroup = augroup("lint", { clear = true })
    autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })
    -- keymap that triggers linting
    keymap("n", "<leader>ll", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
