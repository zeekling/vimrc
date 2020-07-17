" java
autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)
imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)
imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)
imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)
autocmd FileType java inoremap <buffer> . .<C-X><C-O><C-P><Down>
let g:JavaComplete_ShowExternalCommandsOutput = 1

" mrtazz/DoxygenToolkit.vim
let g:DoxygenToolkit_authorName="zeekling"
let s:licenseTag = "\n* Copyright(C) "
let s:licenseTag = s:licenseTag . "For free "
let s:licenseTag = s:licenseTag . "All right "
let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:doxygen_enhanced_color=1
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Return "
let g:DoxygenToolkit_briefTag_pre="@apiNote "
let g:DoxygenToolkit_versionTag="@version "
let g:DoxygenToolkit_throwTag_pre = "@exception "

set cc=120
