" keymaps.vim
" Atajos generales
nmap <Leader>s  <Plug>(easymotion-s2)
nmap <Leader>w  :wa!<CR>
nmap <Leader>q  :qa!<CR>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>t  :tabnew<Space>
 
" Buffer navigation
nmap <Leader>1 :b1<CR>
nmap <Leader>2 :b2<CR>
nmap <Leader>3 :b3<CR>
nmap <Leader>4 :b4<CR>
nmap <Leader>5 :b5<CR>
nmap <Leader>6 :b6<CR>
nmap <Leader>7 :b7<CR>
nmap <Leader>8 :b8<CR>
nmap <Leader>9 :b9<CR>
nmap <Leader>0 :b0<CR>

" CoC Mappings
nmap <Leader>rn <Plug>(coc-rename)
nmap <Leader>f  <Plug>(coc-format-selected)
nmap <Leader>a  <Plug>(coc-codeaction-selected)
nmap <Leader>ac <Plug>(coc-codeaction-cursor)
nmap <Leader>as <Plug>(coc-codeaction-source)
nmap <Leader>qf <Plug>(coc-fix-current)
nmap <Leader>re <Plug>(coc-codeaction-refactor)
nmap <Leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <Leader>cl <Plug>(coc-codelens-action)

" CoCList
nnoremap <silent><nowait> <Leader>a :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <Leader>e :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <Leader>c :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <Leader>o :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <Leader>j :<C-u>CocNext<CR>
nnoremap <silent><nowait> <Leader>k :<C-u>CocPrev<CR>
nnoremap <silent><nowait> <Leader>p :<C-u>CocListResume<CR>

" Visual mode mappings
vmap <Leader>2 :s/\%V$$.*$$\%V/"\1"/<CR>
autocmd FileType javascript vmap <Leader>c :s/\%V$$.*$$\%V/\/\/\1/<CR>
autocmd FileType php vmap <Leader>c :s/\%V$$.*$$\%V/#\1/<CR>

  ""Correr el cursor un espacio a la derecha en modo edicion
  inoremap hl <C-o>a
  inoremap hk <C-o>k
  inoremap jk <Esc>
  inoremap a` á
  inoremap e` é
  inoremap i` í
  inoremap o` ó
  inoremap u` ú
  inoremap ;' ñ
  inoremap p' <C-o>P<C-o>A

  "Atajos pra las opciones de modo normal en edicion"
  inoremap 4<Space> <C-o>A
  inoremap 0<Space> <C-o>I
  inoremap oo<Space> <C-o>o
  inoremap 'b <C-o>/
  inoremap OO <C-o>O
  inoremap hj <C-o>j
