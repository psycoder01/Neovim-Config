local vim = vim.g

vim.closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx,*.js,*.ts'
vim.cmd[[
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
]]
