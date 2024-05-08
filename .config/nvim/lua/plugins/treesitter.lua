return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  init = function()
    print('Treesitter loaded')
  end,
  config = function() 
    local ts_config = require('nvim-treesitter.configs')
    ts_config.setup {
      ensure_installed = {
        "bash", "c", "c_sharp", "cpp", "comment", "css", "csv", "dockerfile", "gitignore", "gpg", "graphql", "html", "http", "java", "javascript", "json", "lua", "markdown", "markdown_inline", "prisma", "properties", "python", "rust", "sql", "ssh_config", "terraform", "toml", "tsx", "typescript", "xml", "yaml"
      },
        highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    }
  end
}
