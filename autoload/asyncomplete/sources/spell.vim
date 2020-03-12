function! asyncomplete#sources#spell#completor(opt, ctx) abort
  let l:col = a:ctx['col']
  let l:typed = a:ctx['typed']

  let l:kw = matchstr(l:typed, '\v[a-zA-Z]{2,}$')
  let l:kwlen = len(l:kw)

  if l:kwlen < g:asc_look_start_len
    call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches, 1)
    return
  endif

  let l:startcol = l:col - l:kwlen

  let g:asc_look_spell_file = get(g:, 'asc_look_spell_file', '~/.vim/spell/en.utf-8.add')
  let l:grep = system('grep ^'. l:kw . ' ' . g:asc_look_spell_file)
  let l:matches = map(split(l:grep, "\n"), {key, val -> {'menu': '[look]', 'word': val}})

  call asyncomplete#complete(a:opt['name'], a:ctx, l:startcol, l:matches)
endfunction
