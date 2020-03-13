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

### complete from good words

Optional complementary feature. Complete from your `zg` good words file.

```vim
let g:asc_look_good_words_file = '~/.vim/spell/en.utf-8.add'
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'look_good_words',
    \ 'whitelist': ['text', 'markdown'],
    \ 'completor': function('asyncomplete#sources#look#good_words'),
    \ })
```
