
" "------------------------------------------------------------------------------------" "
" "General settings"

set nocompatible          " don't behave stronlgy vi-compatible. Should be at the top.
set hidden                " buffers stay open, dont close when opening a new file.
set backspace=2           " backspace goes over newlines
set number                " show line numbers
set scrolloff=10          " Keep cursor away from the top and bottom of the screen
set wildmode=list:longest " make tab completion behave like a shell
set textwidth=90          " automatically wrap lines that are longer then 90 characters
set colorcolumn=+1        " draw a line on textwidth
set nowrap                " don't display long langes wrapped.
set modelines=0           " prevent vim from reading magic comments in files as settings
set showcmd               " something about autocompleting of commands
set ttyfast               " Should help improve scolling (more characters are sent)
set clipboard=unnamedplus " Use the global system buffer for proper pasting
set laststatus=2          " Alwas show status line "
execute pathogen#infect("~/.vimplugins/{}")

" Ignore case for searches Unless you type an uppercase letter, enable incremental
" searching. prepend a \v to every string you search for or you don't have to escape
" ), | and (.
set ignorecase
set smartcase
set incsearch
nnoremap / /\v
set hlsearch              " Highlight things that we find with the search

" highlight the remainder of lines longer than 100 characters.
" match Error /\%>100v/

" Folding settings
set foldmethod=indent   "manually fold code
set foldnestmax=10      "deepest fold is 10 levels
set foldlevel=1

" Ignore some files when autocompleting file names.
set wildignore=*.swp,*.pyc,*.class,*.aux,*.toc,*.pdf

" Highlight the line the cursor is curently on
" set cursorline

" Allow interaction throught the mouse
set mouse=a


" "------------------------------------------------------------------------------------" "
" "Key remappings"
"

" terminals send alt+x as <esc>x. So tell vim to interpret escape followed by a key as a
" <A-x> cosbination. Set the time out between the escape key and the next key to something
" resonable
set timeout ttimeoutlen=50
let c='a'
while c <= 'z'
	exec "set <A-".c.">=\e".c
	exec "imap \e".c." <A-".c.">"
	let c = nr2char(1+char2nr(c))
endw

"
" "Dvorak Key Remappings"
"

" movement mappings
noremap d h
noremap h k
noremap t j
noremap n l

onoremap d h
onoremap h k
onoremap t j
onoremap n l

" make large movements easier. Make it easeir to move the current line around on the
" screen
nnoremap <C-t> <S-l>
nnoremap <C-h> <S-h>
nnoremap zh zt
nnoremap zt zb
nnoremap <A-h> <S-h>zb
nnoremap <A-t> <S-l>zt

" Easier movement between split screens and tabs.
nnoremap <S-d> :tabp<cr>
nnoremap <S-n> :tabn<cr>
nnoremap jd <C-w>h
nnoremap jh <C-w>k
nnoremap jt <C-w>j
nnoremap jn <C-w>l
nnoremap js <C-W>=
nnoremap j<S-d> <C-w><C-t>

nnoremap <S-j> <nop>

nnoremap <S-j>h <C-W><S-k>
nnoremap <S-j>t <C-W><S-j>
nnoremap <S-j>d <C-W><S-h>
nnoremap <S-j>n <C-W><S-l>
nnoremap <S-j><S-t> <C-W><S-t>

" nnoremap <S-h> <S-h>
nnoremap <S-t> <S-l>


" I never use line undo (<S-u>), so put redo there (instead of the weird <C-r>.
nnoremap <S-u> <C-r>

" I use cl instead of C, but i do want to clear lines often.
nnoremap <S-c> cc<esc>

" join lines
nnoremap <S-s> <S-j>

" since command mode is now on a shifted character, put it on something more accesable
nnoremap , :
vnoremap , :
nnoremap : ,
vnoremap : ,

" since d has been remapped to a movement key, use e as 'erase' instead of d as delete.
noremap e d

" use m as e. m is located between other word movement keys
noremap m e

" I will probably use registers more often then marks. so swap ' and " (same key on
" dvorak).
noremap ' "
noremap " '

" use r and l to move to the first asd last character of a line. 'l' was a movement key
" anyway, and I never use replace (r) directly. Instead i tend to use 'c' together with
" the movements
noremap r ^
noremap l $
noremap f 0
noremap <S-r> t
noremap <S-l> f
noremap <C-r> <S-t>
noremap <C-l> <S-f>

" There are no more mappings for going to the previous or next find so basically swap
" the n and k keys
nnoremap k n
nnoremap <S-k> <S-n>

" Stop highlighting search results
nnoremap c/ :nohlsearch<CR>


" "General (more logical to me) mappings"
" remove the x mappings they suck. 'en' or 'cn' feel more natualer and don't take mure
" time. (I have never hit the x key intentionally ...)
nnoremap x <Nop>
nnoremap <S-x> <Nop>

" same trick as the jj in qverty, you don't type 'hh' either I hope.
inoremap hh <esc>

let mapleader = ";"

" Easier creation of split windows and tabs
nnoremap <leader>s :vs 
nnoremap <leader>n :sp 
nnoremap <leader>t :tabe 
" allow easy resourcing of .vimrc
nnoremap <leader>l :source $MYVIMRC<cr>
" Easier increment and decrement of numbers.
nnoremap + <C-a>
nnoremap - <C-x>

" map NerdTree command
nnoremap <F4> :NERDTreeToggle<cr>
nnoremap <F3> :NERDTreeMirror<cr>

" map TlistToggle command
nnoremap <F5> :TlistToggle<cr>
let Tlist_Use_Right_Window = 1

" use space to toggle foldings
vnoremap <space> zf
nnoremap <space> za

" Allow pasting without interpeting the input
set pastetoggle=<F2>

" Make indenting more natural (if i want te indent multiple lines i select them first
" anyway). And why would you want to drop out of visual mode when you change the
" indentation once?
nnoremap > >>
nnoremap < <<
vnoremap > >gv
vnoremap < <gv


" "------------------------------------------------------------------------------------" "
" "Ultisnip options."
"

let UltiSnipsExpandTrigger="<S-tab>"
let UltiSnipsJumpForwardTrigger="<S-tab>"
let UltiSnipsJumpBcakwardTrigger="<C-tab>"


" "------------------------------------------------------------------------------------" "
" "Indetnation options"
"

set autoindent
" set smartindent
" set cindent
" set cinkeys=0{,0},:,0#,!,!^r
filetype plugin on
filetype indent on

" Tab options
set shiftwidth=4
set tabstop=4


" "------------------------------------------------------------------------------------" "
" "File extensions and sintax hilighting."
"

set t_Co=256       " enable more colors, terminal supports them anyway"
syntax on          " enable sintax highlighting
if &t_Co >= 256 || has("gui_running")
	" kind of a useless check, but set fancier color scheme
	colorscheme mustang
else
	" set basic color scheme
	" does not exist anymore
	" colorscheme eigen
endif

" add custom whitespace charactesr and such.
set list
set listchars=eol:¶,tab:»·,extends:→,precedes:←,trail:ł

" More highlighting for python files
let python_highlight_all = 1
let java_highlight_java_lang_ids = 1
" let java_highlight_functions = 1
" let java_comment_strings = 1
let java_highlight_debug = 1

" make .rkt file be highlighted as scheme files.
au BufNewFile,BufRead *.rkt set filetype=scheme


" "------------------------------------------------------------------------------------" "
" "Some utility functions."

" Reindent using tabs instead of spaces (without having to run "gg=G".
command! -nargs=1 Redent :call Redent(<args>)
function! Redent( n )
	" need to excape forward slashes
	exec ":%s/^\\(\\t*\\)" . repeat(" ", a:n) . "/\\1\\t/g"
endfunc

" Show syntax highlighting groups for word under cursor
nmap <F5> :call SynStack()<CR>
function! SynStack()
	if !exists("*synstack")
		return
	endif
	echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
