set nocompatible " disable vi settings

" Vundle Junk
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'Gundo'
Plugin 'bufexplorer.zip'
Plugin 'openssl.vim'
Plugin 'taglist.vim'
Plugin 'virtualenv.vim'
Plugin 'scala.vim'
Plugin 'Arduino-syntax-file'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'dantler/vim-alternate'
Plugin 'skammer/vim-css-color'
Plugin 'vim-scripts/EnhCommentify.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'gorodinskiy/vim-coloresque'
call vundle#end()

filetype plugin on

set bs=2		        " allow backspacing over everything in insert mode
set ai			        " always set autoindenting on
set nobackup	        " don't keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			            " than 50 lines of registers
set history=50		    " keep 50 lines of command line history
set ruler		        " show the cursor position all the time
set nowrap              " make sure that long lines don't wrap
set laststatus=2        " Make sure the status line is always displayed
set spell               " turn on spellcheck
set splitright
set splitbelow

command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
    \ | wincmd p | diffthis

" Switch syntax highlighting on
syntax enable

" Display bufnr:filetype (dos,unix,mac) in status line
set statusline=%<%n:%f%h%m%r%=%{fugitive#statusline()}\ %{&ff}\ %l,%c%V\ %P

" Hide the mouse pointer while typing
" The window with the mouse pointer does not automatically become the active window
" Right mouse button extends selections
" Turn on mouse support
set mousehide
set nomousefocus
set mousemodel=extend
set mouse=a

" Show paren matches
" For 5 tenths of a second
set showmatch
set matchtime=5

" Setup tabs for 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set textwidth=78
set smarttab
set shiftround
set expandtab


" Setup auto wrapping
set textwidth=78

" Setup indenting
set autoindent

map <F2> :BufExplorer<CR>
map <F12> :NERDTreeToggle<CR>

set hidden

set noequalalways
set dir=~/.vim/swap
set nobackup writebackup
set ttymouse=xterm2

if $TERM_PROGRAM =~ 'APPLE'
    colorscheme ron
else
    set t_Co=256
    colorscheme synic
endif
set colorcolumn=80

" setup custom tab lines with numbers and the close button
function CustomTabLine()
    let s = ''
    let i = 0
    let t = tabpagenr()
    while i < tabpagenr('$')
        let buflist = tabpagebuflist(i + 1) 
        let winnr = tabpagewinnr(i + 1) 
        " select the highlighting
        if (i + 1) == t
            let s .= '%#TabLineSel#'
        else
            let s .= '%#TabLine#'
        endif

        " set the tab page number (for mouse clicks)
        let s .= '%' . (i + 1) . 'T'
        let s .= '['
        let file = bufname(buflist[winnr - 1])
        let file = fnamemodify(file, ':p:t')
        if file == ''
            let file = 'x'
        endif
        let s .= i . ':' . file

        let s .= ']'

        let i = i + 1
    endwhile

    " after the last tab fill with TabLineFill and reset tab page nr
    let s .= '%#TabLineFill#%T'

    " right-align the label to close the current tab page
    if tabpagenr('$') > 1
        let s .= '%=%#TabLine#%999XX'
    endif

    return s
endfunction

set tabline=%!CustomTabLine() 

" fugitive
nnoremap <silent> <leader>gs :Gstatus<CR>
nnoremap <silent> <leader>gd :Gdiff<CR>
nnoremap <silent> <leader>gc :Gcommit<CR>
nnoremap <silent> <leader>gb :Gblame<CR>
nnoremap <silent> <leader>gl :Glog<CR>
nnoremap <silent> <leader>gp :Git push<CR>
nnoremap <silent> <leader>gr :Gread<CR>
nnoremap <silent> <leader>gw :Gwrite<CR>
nnoremap <silent> <leader>ge :Gedit<CR>
" Mnemonic _i_nteractive
nnoremap <silent> <leader>gi :Git add -p %<CR>
nnoremap <silent> <leader>gg :SignifyToggle<CR>

" tablist
let Tlist_Show_One_File = 1
let Tlist_Use_Horiz_Window = 1
let Tlist_Enable_Fold_Column = 0

" nerdtree
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '\.db$', '\.o$', '\.d$', '\.elf$', '\.map$']
let NERDTreeShowBookmarks=1
let NERDTreeMinimalUI=1
let NERDTreeWinSize=25
let NERDTreeChDirMode=2

" gundo settings
let g:gundo_width=35
let g:gundo_right=1
let g:gundo_preview_height=25
nnoremap <F5> :GundoToggle<CR>


" jedi settings
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = "0"

" tell jedi not to show docstrings when autocompleting
autocmd FileType python setlocal completeopt-=preview

" arduino syntax setup
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" ultisnips settings
let g:UltiSnipsSnippetDirectories = ['UltiSnips.Local']

" bufexplorer
let g:bufExplorerSortBy = 'mru'