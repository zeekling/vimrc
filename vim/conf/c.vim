
autocmd FileType c set omnifunc=ccomplete#Complete
let  g:C_UseTool_cmake    = 'yes'
let  g:C_UseTool_doxygen = 'yes'

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
