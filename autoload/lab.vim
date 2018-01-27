let s:save_cpo = &cpoptions
set cpoptions&vim

function! lab#browse()
    call system('lab browse')
endfunction

function! lab#issue()
    let l:issues = system('lab issue')
    echo l:issues
endfunction

function! lab#merge_request()
    let l:merge_requests = system('lab merge-request')
    echo l:merge_requests
endfunction

let &cpoptions = s:save_cpo
unlet s:save_cpo
