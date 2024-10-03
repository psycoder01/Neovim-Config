return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shfmt",
        "typescript-language-server",
        "jedi-language-server",
      },
    },
  },
}
