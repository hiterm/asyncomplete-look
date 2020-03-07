function! asyncomplete#sources#spell#completor(opt, ctx) abort
  let l:col = a:ctx['col']
  let l:typed = a:ctx['typed']

  let l:kw = matchstr(l:typed, '\v[a-zA-Z]{2,}$')
  let l:kwlen = len(l:kw)

  let l:startcol = l:col - l:kwlen

  let l:matches = spellsuggest(l:kw)

  call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches, 1)
endfunction
