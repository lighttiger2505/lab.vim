if exists('g:loaded_lab')
  finish
endif
let g:loaded_lab = 1

let s:save_cpo = &cpoptions
set cpoptions&vim

command! -bar LabBrowse call lab#browse()
command! -bar LabIssue call lab#issue()

let &cpoptions = s:save_cpo
unlet s:save_cpo
