# asyncomplete-look

Word dictionary completion source for [asyncomplete.vim](https://github.com/prabirshrestha/asyncomplete.vim)

Inspired by [neco-look](https://github.com/ujihisa/neco-look).

<img src="https://raw.githubusercontent.com/htlsne/asyncomplete-look/images/screenshot.png" alt="screenshot" width=70%>

## Requirement

- asyncomplete.vim
- `look` command works

## Usage

### look

Main feature. Complete English words by using `look` command.

```vim
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'look',
    \ 'allowlist': ['text', 'markdown'],
    \ 'completor': function('asyncomplete#sources#look#completor'),
    \ })
```

### good words

Optional complementary feature. Complete from your `zg` good words file.
`grep` command is required.

```vim
let g:asc_look_good_words_file = '~/.vim/spell/en.utf-8.add'
au User asyncomplete_setup call asyncomplete#register_source({
    \ 'name': 'look_good_words',
    \ 'allowlist': ['text', 'markdown'],
    \ 'completor': function('asyncomplete#sources#look#good_words'),
    \ })
```

## Changelog

[CHANGELOG.md](https://github.com/htlsne/asyncomplete-look/blob/master/CHANGELOG.md)
