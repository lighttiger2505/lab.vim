let s:save_cpo = &cpoptions
set cpoptions&vim

function! lab#browse()
    call system('lab browse')
endfunction

let &cpoptions = s:save_cpo
unlet s:save_cpo
