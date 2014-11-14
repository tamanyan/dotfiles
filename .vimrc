" Vundle を初期化して
" Vundle 自身も Vundle で管理
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
NeoBundle 'Shougo/neobundle.vim'

runtime! userautoload/*.vim

NeoBundle 'naberon/vim-cakehtml'
NeoBundle 'violetyk/cake.vim.git'
NeoBundle 'kchmck/vim-coffee-script'
"NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'pekepeke/titanium-vim'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-surround'
" NeoBundle 'rhysd/vim-operator-surround.git'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'taichouchou2/html5.vim'
NeoBundle 'git://github.com/jsx/jsx.vim.git'
NeoBundle 'git://github.com/kana/vim-fakeclip.git'
NeoBundle 'kana/vim-smartinput'
NeoBundle 'cohama/vim-smartinput-endwise'

NeoBundle 'Shougo/neosnippet'
NeoBundle "Shougo/vimfiler.git"
NeoBundle "Shougo/unite.vim.git"
NeoBundle "Shougo/vimproc.git"
NeoBundle "Shougo/neosnippet-snippets.git"
NeoBundle 'mitsuhiko/vim-jinja.git'

NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'clausreinke/typescript-tools.git'

" for ghcmod.vim
" NeoBundle 'Shougo/vimproc'
" NeoBundle 'eagletmt/ghcmod-vim'

" for neco-ghc
" NeoBundle 'ujihisa/neco-ghc'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'tpope/vim-pathogen'
NeoBundle 'tpope/vim-sensible'
NeoBundle 'lunaru/vim-twig'

NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'toyamarinyon/vim-swift'

NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'tpope/vim-endwise'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'vim-scripts/mru.vim'
NeoBundle 'vim-scripts/closetag.vim'

NeoBundle 'tomasr/molokai'
NeoBundle 'lukaszkorecki/CoffeeTags'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'tell-k/vim-autopep8'

let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai

" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow
" ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}"

call smartinput_endwise#define_default_rules()

execute pathogen#infect()
filetype plugin indent on
"pathogen#runtime_append_all_bundles()

"" My Settings start
if has('gui_macvim')
  set showtabline=2	" タブを常に表示
  set antialias
  set guifont=Ricty:h11
  set guioptions-=T
endif

"新しい行のインデントを現在行と同じにする
set autoindent
"ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set browsedir=buffer
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden
"インクリメンタルサーチを行う
set incsearch
"listで表示される文字のフォーマットを指定する
set listchars=eol:$,tab:>\ ,extends:<
"行番号を表示する
set number
"タブ入力を空白文字に置き換える
set expandtab
"シフト移動幅
set shiftwidth=2
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"ファイル内の <Tab> が対応する空白の数
set tabstop=2 softtabstop=2
"カーソルを行頭、行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]
"コマンド表示
set showcmd
" バックアップの作成は行わない
set nobackup
" Vimの外部で変更されたことが判明したとき、自動的に読み直す
set autoread
"検索時に大文字と小文字を区別しない
set ignorecase
"title
set title
"エンコーディング
set encoding=utf8
"BSでうんちゃら

set ruler
"色つけ
"syntax on
"検索時ハイライト
set hlsearch

" for US keyboard
noremap ; :
noremap : ;
inoremap ; :
inoremap : ;
noremap s :%s/
noremap <C-c> :nohl<CR>

" タブの視覚化
highlight TagKey guibg=#b5d68f
match TagKey /    /

au BufNewFile,BufRead *.h set ft=cpp
autocmd FileType python setl autoindent
autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd FileType python setl expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType coffee setl expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType php setl expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType typescript setl expandtab tabstop=4 shiftwidth=4 softtabstop=4
au BufNewFile,BufRead *.cu set ft=cpp
au BufNewFile,BufRead *.py set ft=python
au BufNewFile,BufRead *.rb set ft=ruby
au BufNewFile,BufRead *.ejs set ft=html
au BufRead,BufNewFile *.scss set filetype=sass
au BufRead,BufNewFile *.ts set filetype=typescript
autocmd QuickFixCmdPost vimgrep cwindow
"""""" My Settings start


"Vi互換をオフ
set nocompatible
filetype indent on
filetype plugin on
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown,ctp,tpl setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
    let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

" neocomplcache & neosnippet
let g:neocomplcache_enable_at_startup = 1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
" SuperTab like snippets behavior.
imap <expr><F1> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<F1>"
smap <expr><F1> neosnippet#expandable() <Bar><bar> neosnippet#jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<F1>"
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" coffee compile
" autocmd BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!

" for java
set sm
set ai
syntax on
let java_highlight_all=0
let java_highlight_functions="style"
let java_allow_cpp_keywords=1
let java_highlight_debug=1

" tab
nnoremap <silent> <leader>tf :<c-u>tabfirst<cr>
nnoremap <silent> <leader>tl :<c-u>tablast<cr>
nnoremap <silent> <leader>tn :<c-u>tabnext<cr>
nnoremap <silent> <leader>]  :<c-u>tabnext<cr>
nnoremap <silent> <leader>tN :<c-u>tabNext<cr>
nnoremap <silent> <leader>tp :<c-u>tabprevious<cr>
nnoremap <silent> <leader>[  :<c-u>tabprevious<cr>
nnoremap <silent> <leader>te :<c-u>tabedit<cr>
nnoremap <silent> <leader>tr :<c-u>tabclose<cr>
nnoremap <silent> <leader>to :<c-u>tabonly<cr>
nnoremap <silent> <leader>ts :<c-u>tabs<cr>

set nobackup
set noswapfile
set undodir=$HOME/.vim/undo

noremap <C-x> :set paste<CR>
noremap <C-k> :set nopaste<CR>
let g:quickrun_config = {}
let g:quickrun_config['scala'] = {
      \   'exec': ['fsc %s',"scala Main"]
      \    }
let g:quickrun_config['jsx'] = {
          \ 'command': 'jsx',
          \ 'exec': ['%c --run %s']
          \ }

set rtp+=~/.vim/bundle/jsx.vim

set cursorline
highlight CursorLine cterm=underline ctermfg=NONE ctermbg=NONE
highlight CursorLine gui=underline guifg=NONE guibg=NONE

set clipboard+=unnamed

let g:syntastic_python_checkers = ['pep8']

" Vim(Mac)
if has('mac') && !has('gui')
    nnoremap <silent> <Space>y :.w !pbcopy<CR><CR>
    vnoremap <silent> <Space>y :w !pbcopy<CR><CR>
    nnoremap <silent> <Space>p :r !pbpaste<CR>
    vnoremap <silent> <Space>p :r !pbpaste<CR>
" GVim(Mac & Win)
else
    noremap <Space>y "+y
    noremap <Space>p "+p
endif
let NERDTreeIgnore = ['\.pyc$','\.o$','\.a$']

noremap <F8> :TagbarToggle<CR>
