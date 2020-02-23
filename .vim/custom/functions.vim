" my functions
autocmd BufNewFile *.sh,*.py exec ":call AutoSetFileHead()"
function! AutoSetFileHead()
    if &filetype == 'sh'
        call setline(1, "\#!/bin/bash")
    endif

    if &filetype == 'python'
        call setline(1, "\# -*- coding: utf-8 -*-")
    endif
endfunction
