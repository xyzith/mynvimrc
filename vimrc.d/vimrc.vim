set mouse=

set cursorcolumn
set cursorline

set noignorecase

function S2t(p1)
	execute "set tabstop=".a:p1
	set noexpandtab
	retab!
	execute "set tabstop=8"
	execute "set shiftwidth=8"
endfunction

function T2s(p1)
	execute "set tabstop=".a:p1
	execute "set shiftwidth=".a:p1
	set expandtab
	retab!
endfunction

" auto remove \r from system registers
autocmd FocusGained * :let @+=substitute(@+, '\r', '', 'g')


" gf use Neotree instead of Netrw
let g:netrw_browsex_viewer="Neotree"
let g:netrw_fasterbrowse=0
autocmd FileType netrw setl bufhidden=wipe


" My commandt
command! -nargs=1 Stt call S2t(<f-args>)
command! -nargs=1 Tts call T2s(<f-args>)

set backup
set backupdir=~/.vim/backup
set suffixesadd=.vue
