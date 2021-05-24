" functions.vimrc
" Functions 

" Spelling related stuff
" switch spellcheck languages
" https://vim.fandom.com/wiki/Toggle_spellcheck_with_function_keys
let g:myLang = 0
let g:myLangList = [ "nospell", "en_au, en_gb, cjk" ]
function! ChangeSpellLang()
    "loop through languages
    let g:myLang = g:myLang + 1
    if g:myLang >= len(g:myLangList) | let g:myLang = 0 | endif
    if g:myLang == 0 | set nospell | endif
    if g:myLang == 1 | setlocal spell spelllang=en_au,en_gb,cjk | endif
    echo "language:" g:myLangList[g:myLang]
endf
