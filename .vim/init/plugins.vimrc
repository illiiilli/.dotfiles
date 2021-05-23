" plugins.vimrc
" Plugin settings

" dense-analysis/ale

" Only lint when saving a file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0

let g:ale_linters = {
\   'python': ['flake8', 'pydocstyle', 'bandit', 'mypy']
\}
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['black', 'isort']
\}

" ferrine/md-img-paste.vim
" there are some defaults for image directory and image name, you can change them
let g:mdip_imgdir = 'img'
let g:mdip_imgname = 'image'

" takac/vim-hardtime
" let g:hardtime_default_on = 1


" mantiz/vim-plugin-dirsettings
call dirsettings#Install()

" vim-utils/vim-troll-stopper 
highlight TrollStopper ctermbg = red guibg = #FF0000

" vimwiki/vimwiki
let wiki_1 = {}
let wiki_1.ext = '.md'
let wiki_1.index = 'README'
let wiki_1.path = '~/vimwiki/'
let wiki_1.path_html = '~/vimwiki_html/'
let wiki_1.syntax = 'markdown'
let wiki_1.links_space_char = '_'
let wiki_1.auto_tags = 1
let wiki_1.auto_diary_index = 1
let wiki_1.auto_generate_links = 1
let wiki_1.auto_generate_tags = 1

let g:vimwiki_list = [wiki_1]

let g:vimwiki_auto_chdir = 1
let g:vimwiki_auto_header = 1
let g:vimwiki_folding = 'expr'
let g:vimwiki_global_ext = 0
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_url_maxsave = 40

let g:vimwiki_ext2syntax = {'.Rmd': 'markdown',
                        \'.markdown': 'markdown',
                        \'.md': 'markdown',
                        \'.mdown': 'markdown',
                        \'.mdwn': 'markdown',
                        \'.mkdn': 'markdown',
                        \'.mw': 'media'
                        \}
