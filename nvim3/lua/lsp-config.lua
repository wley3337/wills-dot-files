local nvim_ls = require("lspconfig")
-- luanguage server requirements
-- JS, TS
 require('lspconfig').tsserver.setup{on_attach= function(client)
    client.resolved_capabilities.document_formatting=false
    on_attach(client)
 end}
 
 
 -- require'completion'.on_attach}
 -- python
 require('lspconfig').pylsp.setup{}
 -- c++ 
 require('lspconfig').ccls.setup{} 
 require('lspconfig').clangd.setup{} 
