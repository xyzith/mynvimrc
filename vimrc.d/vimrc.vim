colorscheme everforest
set mouse=

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

" TOD move to kemap
" My commandt
command! -nargs=1 Stt call Stt(<f-args>)
command! -nargs=1 Tts call Tts(<f-args>)


noremap <Leader>' bi'<ESC>ea'<ESC>
noremap <Leader>" bi"<ESC>ea"<ESC>
noremap <Leader>} bi{ <ESC>ea }<ESC>
