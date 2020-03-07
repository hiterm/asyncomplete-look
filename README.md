# asyncomplete-look

Word dictionary completion source for [asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim)

Inspired by [neco-look](https://github.com/ujihisa/neco-look).

## Requirement

- asyncomplete.vim
- `look` command works

## Usage

### look

```vim
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'look',
    \ 'whitelist': ['text', 'markdown'],
    \ 'completor': function('asyncomplete#sources#look#completor'),
    \ })
```

### spell suggestion

Optional feature. Using vim's `spellsuggest()`.

```vim
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'spell',
    \ 'whitelist': ['text', 'markdown'],
    \ 'completor': function('asyncomplete#sources#spell#completor'),
    \ })

" Please ensure that spell option is enabled
autocmd FileType text setlocal spell
autocmd FileType markdown setlocal spell
```

Better experience with fuzzy filter such as [machakann/asyncomplete-ezfilter.vim](https://github.com/machakann/asyncomplete-ezfilter.vim).

```
let g:asyncomplete_preprocessor =
  \ [function('asyncomplete#preprocessor#ezfilter#filter')]

let g:asyncomplete#preprocessor#ezfilter#config = {}
let g:asyncomplete#preprocessor#ezfilter#config.spell =
  \ {ctx, items -> ctx.osa_filter(items, 1)}
```
