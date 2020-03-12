" asyncomplete
function! asyncomplete#sources#look#completor(opt, ctx) abort
  let l:col = a:ctx['col']
  let l:typed = a:ctx['typed']

  let l:kw = matchstr(l:typed, '\v[a-zA-Z]{2,}$')
  let l:kwlen = len(l:kw)

  if l:kwlen < g:asc_look_start_len
    call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches, 1)
    return
  endif

  let l:startcol = l:col - l:kwlen

  let l:look = system('look '. l:kw)
  let l:matches = map(split(l:look, "\n"), {key, val -> {'menu': '[look]', 'word': val}})

  call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches)
endfunction
