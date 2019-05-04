"------------------------------------
" deoplete-go.nvim
"------------------------------------

let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode-gomod'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
