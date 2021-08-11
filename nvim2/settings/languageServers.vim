" Lang servier is: https://microsoft.github.io/language-server-protocol/implementors/servers/
" :LspInstall <serverName>
" or
" require('lspconfig').<serverName>.setup{ <config> }
lua << EOF
 require('lspconfig').tsserver.setup{on_attach=require'completion'.on_attach}
 require('lspconfig').pyls.setup{}
 require('lspconfig').ccls.setup{} 
 require('lspconfig').clangd.setup{} 
EOF

" lang languageServers
" typeScript: tsserver
" python: pyls
" c++: ccls