" ====== Common ====== start

" >> Mouse operaion enable
" For example:
" - Use mouse drag to resize windows when in the multi-window mode with ':sp' and ':vsp'
set mouse=a

" >> TODO: ?
if !has('gui_running')
  " 设置文本菜单
  if has('wildmenu')
    set wildmenu
    set cpoptions-=<
    set wildcharm=<C-Z>
    nnoremap <F10>      :emenu <C-Z>
    inoremap <F10> <C-O>:emenu <C-Z>
  endif
endif
" ====== Common ====== end

" ====== Key remap ====== start

" 停止搜索高亮
nnoremap <silent> <F2>      :nohlsearch<CR>
inoremap <silent> <F2> <C-O>:nohlsearch<CR>

" ====== Key remap ====== end



" ====== Minpac Pack Management ====== start
if exists('g:loaded_minpac')
  " Minpac is loaded.
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Other plugins
  call minpac#add('tpope/vim-eunuch')
  call minpac#add('yegappan/mru')
  call minpac#add('preservim/nerdtree')
endif

if has('eval')
  " Minpac commands
  command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
  command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
  command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
endif
" ====== Minpac Pack Management ====== end

