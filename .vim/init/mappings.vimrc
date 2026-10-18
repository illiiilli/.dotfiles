" mappings.vimrc
" Key mappings

let mapleader = " " " map leader to Space

" For ferrine/md-img-paste.vim
autocmd FileType markdown nnoremap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>

"Spelling

" Mnemonic: Spell Lang
nnoremap <silent><leader>sl <C-o>:call ChangeSpellLang()<CR>>
inoremap <silent><leader>sl <C-o>:call ChangeSpellLang()<CR>>

" Autofix last spelling mistake
" Mnemonic: Spell Fix
inoremap <leader>sf <c-g>u<Esc>[s1z=`]a<c-g>u

" Remaps "jj" to <Esc> while in insert mode
inoremap jj <Esc>

" Printing time
" https://vim.fandom.com/wiki/Insert_current_date_or_time
" Sample: 02:28:23
" Mnemonic: Print Date
nnoremap <leader>pt "=strftime('%Y-%m-%d')<CR>P
inoremap <leader>pt <C-R>=strftime('%Y-%m-%d')<CR>
" Sample: 02:28:23
" Mnemonic: Print Time
nnoremap <leader>pt "=strftime('%T')<CR>P
inoremap <leader>pt <C-R>=strftime('%T')<CR>
" Sample: 2021-05-25 02:25:46
" Mnemonic: Print DateTime
nnoremap <leader>pdt "=strftime('%c')<CR>P
inoremap <leader>pdt <C-R>=strftime('%c')<CR>
 
" fzf related binds
" https://levelup.gitconnected.com/improving-vim-workflow-with-fzf-3f8bedaca1b2
nnoremap <silent><leader>b :Buffers<CR>
nnoremap <silent><leader>f :Files<CR>
nnoremap <silent><leader>g :Rg<CR>
nnoremap <silent><C-p> :GFiles<CR>

" Split management
" Partially inspired by:
" https://thoughtbot.com/blog/vim-splits-move-faster-and-more-naturally
" Moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" More natural split opening
set splitbelow
set splitright

" Map <F5> to compile files to .pdf
" Markdown
" LaTeX
augroup Markup_Mappings
    autocmd!
    " Exports to .pdf and .html, respectively.
    autocmd Filetype markdown,tex,latex,context,plaintex map <F5> :silent !pandoc<space>"<C-r>%"<space>-o<space>"<C-r>%.pdf"<Enter><Enter>
    autocmd Filetype markdown map <S-F5> :silent !pandoc<space>"<C-r>%"<space>-o<space>"<C-r>%.html"<Enter><Enter>
    " Replaces 0 width space (<200b>) with <space>
    autocmd Filetype markdown map <F4> :%s/\%u200b/<space>/g<Enter>
augroup END


nnoremap <leader>er :%s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<CR>
