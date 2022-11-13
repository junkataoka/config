-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-------------------- LSP -----------------------------------
--
local lsp = require('lspconfig')
local lspfuzzy = require('lspfuzzy')
for ls, cfg in pairs({
  bashls = {},
  ccls = {},
  jsonls = {},
  julials = {on_attach=require'completion'.on_attach},
  r_language_server = {on_attach=require'completion'.on_attach},
  pylsp = {root_dir = lsp.util.root_pattern('.git', fn.getcwd()), on_attach=require'completion'.on_attach},
}) do lsp[ls].setup(cfg) end
lspfuzzy.setup {}
map('n', '<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
map('n', '<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
map('n', '<space>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
map('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
map('n', '<space>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
map('n', '<space>r', '<cmd>lua vim.lsp.buf.references()<CR>')
map('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
