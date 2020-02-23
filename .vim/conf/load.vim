
function! LoadPlugs()
   call GitExits()
   if exists("g:git_exits")
	   if g:git_exits == "True"
          call plug#load("nerdtree-git-plugin")
endfunction

function! GitExits()
    python3 << EOF
import vim
import ./script/vim_utils.py as utils
exits = utils.git_exits()
vim.command("set g:git_exits=%s" % exits)
EOF
endfunction

