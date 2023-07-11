
" setting
" Set character code to UFT-8
set fenc=utf-8
set encoding=utf-8
scriptencoding utf-8
" do not create backup file
set nobackup
" do not create a swap file
set noswapfile
" Automatically reload when the file being edited is changed
set autoread
" Allow other files to be opened while the buffer is being edited
set hidden
" Display the command you are typing in the status
set showcmd


" Appearance
" Show line numbers
set number
" highlight current line
set cursorline
" Highlight current line (vertical)
set cursorcolumn
" Allows the cursor to move one character past the end of the line
set virtualedit=onemore
" Indentation is smart indentation
set smartindent
" Visualize the beep
set visualbell
" Show Matching Parentheses When Entering Parentheses
set showmatch
" Always show status line
set laststatus=2
" command line completion
set wildmode=list:longest
" Make it possible to move by display line unit when wrapping
nnoremap j gj
nnoremap k gk


" Tab
" Make invisible characters visible (tab appears as "▸-")
set list listchars=tab:\▸\-
" Make tab characters half-width spaces
set expandtab
" Display width of tab characters other than the beginning of a line (number of spaces)
set tabstop=2
" Display width of Tab characters at the beginning of a line
set shiftwidth=2


" Search
" Search case-insensitively if the search string is in lowercase
set ignorecase
" Search sensitively if the search string contains uppercase letters
set smartcase
" Hit target strings sequentially when entering a search string
set incsearch
" Return to the beginning after reaching the end when searching
set wrapscan
" Highlight search term
set hlsearch
" Press ESC repeatedly to cancel highlight
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" color
"colorscheme iceberg
colorscheme desert

" Enable ESC with jj
inoremap <silent> jj <ESC>

" Enable syntax highlighting
syntax enable
