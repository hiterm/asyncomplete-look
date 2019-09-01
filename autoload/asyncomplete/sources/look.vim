" asyncomplete
function! asyncomplete#sources#look#completor(opt, ctx) abort
  let l:col = a:ctx['col']
  let l:typed = a:ctx['typed']

  let l:kw = matchstr(l:typed, '\v\S+$')
  let l:kwlen = len(l:kw)

  let l:startcol = l:col - l:kwlen

  let l:matches = [
        \ "foo_bar", "foo_baz"
        \ ]

  call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches)
endfunction
