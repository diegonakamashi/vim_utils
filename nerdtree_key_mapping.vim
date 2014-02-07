" Add Ctrl+V to open a vertical split
" Put this on [nerdtree_path]/nerdtree_plugin/
call NERDTreeAddKeyMap({
  \ 'key': '<C-v>',
  \ 'callback': 'OpenVSplit',
  \ 'quickhelpText': 'Testing VSplit' })

function! OpenVSplit()
  let n = g:NERDTreeFileNode.GetSelected()
  call n.open({'where': 'v'})
endfunction
