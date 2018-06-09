let s:save_cpo = &cpoptions
set cpoptions&vim

function! lab#browse() abort
    let cmd = 'lab browse '
    let result = system(cmd)
	echomsg result
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

function! lab#issue() abort
    let issues = system('lab issue')
    echo issues
endfunction

function! lab#merge_request() abort
    let merge_requests = system('lab merge-request')
    echo merge_requests
endfunction

let &cpoptions = s:save_cpo
unlet s:save_cpo
