if exists('g:loaded_lab')
  finish
endif
let g:loaded_lab = 1

let s:save_cpo = &cpoptions
set cpoptions&vim

command! -bar LabBrowse call lab#browse()
command! -range=0 -bar -nargs=* -complete=file LabBrowseFile call lab#BrowseFile([<f-args>], <count>, <line1>, <line2>)
command! -bar LabIssue call lab#issue()
command! -bar LabMergeRequest call lab#merge_request()

let &cpoptions = s:save_cpo
unlet s:save_cpo
