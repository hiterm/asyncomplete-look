# asyncomplete-look

Word dictionary completion source for [asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim)

Inspired by [neco-look](https://github.com/ujihisa/neco-look).

## Requirement

- asyncomplete.vim
- `look` command works

## Usage

```vim
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'look',
    \ 'whitelist': ['text', 'markdown'],
    \ 'completor': function('asyncomplete#sources#look#completor'),
    \ })
```
