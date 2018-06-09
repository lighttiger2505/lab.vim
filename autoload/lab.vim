let s:save_cpo = &cpoptions
set cpoptions&vim

function! lab#browse(...)
    let l:cmd = 'lab browse '
    if a:0 >= 1
        let l:cmd = l:cmd .a:1
    end
    call system(l:cmd)
endfunction

function! lab#BrowseFile(args, rangegiven, firstlnum, lastlnum) abort
    let cmd = 'lab browse ' . @%

	if a:rangegiven
		let lnum = '#L'.a:firstlnum . (a:firstlnum is a:lastlnum ? '' : '-'.a:lastlnum)
		let cmd = cmd . ' --subpage ' . '"'. lnum . '"'
	endif

    let result = system(cmd)
	echomsg result
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
