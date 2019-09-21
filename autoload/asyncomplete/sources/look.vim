" asyncomplete
function! asyncomplete#sources#look#completor(opt, ctx) abort
  let l:col = a:ctx['col']
  let l:typed = a:ctx['typed']

  let l:kw = matchstr(l:typed, '\v\S{2,}$')
  let l:kwlen = len(l:kw)

  let l:startcol = l:col - l:kwlen

  let l:look = system('look '. l:kw)
  let l:matches = split(l:look, "\n")

  call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches)
endfunction
