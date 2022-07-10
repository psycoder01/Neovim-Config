local vim = vim
vim.cmd([[autocmd FileType scala,sbt lua require("metals").initialize_or_attach({})]])
