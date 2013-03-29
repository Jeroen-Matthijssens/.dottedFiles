" Maintainer:	Henrique C. Alves (hcarvalhoalves@gmail.com)
" Version:      1.0
" Last Change:	September 25 2008

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

if has("gui_running") || &t_Co == 88 || &t_Co == 256
	let s:low_color = 0
else
	let s:low_color = 1
endif

let colors_name = "mustang"

" import the <code>SetColor</code> function
" <code>SetColor( groupName, foreground, background, attributes)</code>
source ~/.vim/colors/calcTermColors.vim

let s:white       = "eeeeee"
let s:black       = "0e0e0e"

let s:textlight   = "666666"
let s:text        = "cccccc"
let s:textdull    = "505050"

let s:bgfold      = "252525"
let s:bgvisual    = "303030"
let s:background  = "1c1c1c"

let s:cursor      = "626262"


" let s:green       = "b1d631"
" let s:green       = "afd75f"
let s:green       = "87af5f"
let s:lightgree   = "afff5f"
" let s:orange      = "ff9800"
let s:orange      = "ffaf00"
let s:yellow      = "e6ea50"
let s:lightyellow = "faf4c6"
" let s:blue        = "7e8aa2"
let s:blue        = "5f8787"
let s:lightred    = "ff835e"
let s:lightblue   = "00afff"
let s:lightpurple = "875fff"

echo 

" Vim >= 7.0 specific colors
if version >= 700
	" Personally I do not care for line and column highlights
	" hi CursorLine   guibg=#2d2d2d ctermbg=236
	" hi CursorColumn guibg=#2d2d2d ctermbg=236
	hi MatchParen   guifg=#d0ffc0 guibg=#2f2f2f gui=bold ctermfg=157 ctermbg=237 cterm=bold
	hi Pmenu        guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
	hi PmenuSel     guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
	call SetColor( "TabLine",     s:text,     s:textdull,    "" )
	call SetColor( "TabLineFill", "",          s:textdull,    "" )
	call SetColor( "TabLineSel",  s:black,     s:green,           "bold"      )
endif

" Interface
call SetColor( "Folded",       s:textlight,    s:bgfold,     ""          )
call SetColor( "Visual",       "",             s:bgvisual,   "none"      )
call SetColor( "Cursor",       s:white,        s:cursor,     "underline" )
call SetColor( "Normal",       s:text,         s:background, ""          )
call SetColor( "NonText",      s:textdull,     s:bgfold,     ""          )
call SetColor( "Search",       "",             "",           ""          )
call SetColor( "LineNr",       s:textlight,    s:black,      ""          )
call SetColor( "ColorColumn",  "",             s:bgfold,     ""          )

call SetColor( "StatusLine",   s:white,        s:black,      ""          )
call SetColor( "StatusLineNC", s:textlight,    s:black,      "italic"    )
call SetColor( "VertSplit",    s:textlight,    s:black,      ""          )

" General
call SetColor( "Comment",      s:textlight,    "",           "italic"    )
call SetColor( "SpecialKey",   s:textdull,     "",           "none"      )

call SetColor( "Todo",         s:black,        s:yellow,     "italic"    )
call SetColor( "Title",        s:white,        "",           "bold"      )
call SetColor( "ErrorMsg",     s:lightred,     s:bgfold,     "bold"      )
hi! link Error ErrorMsg

" Constants
call SetColor( "Constant",     s:orange,       "",           "none"      )
call SetColor( "String",       s:green,        "",           "italic"    )
hi! link Character Constant
hi! link Number Constant
" hi! link Boolean String
call SetColor( "Boolean",      s:green,        "",           "bold"      )
hi! link Float Number
hi! link StringDelimiter String

call SetColor( "Search",       s:yellow,       s:bgvisual,   "bold,underline" )
" Identifier
call SetColor( "Identifier",   s:green,        "",           "none"      )
call SetColor( "Function",     s:white,        "",           "bold"      )
hi! link PreFunction PreProc

"Statement
call SetColor( "Statement",    s:blue,         "",           "none"      )
hi! link Contitional Statement
hi! link Conditional Statement
hi! link Repeat Statement
hi! link Label Statement
hi! link Operator Statement
call SetColor( "Keyword",      s:orange,       "",           "none"      )
" hi! link Exception Statement
call SetColor( "Exception",    s:lightyellow,  "",           "bold"      )

" PreProc
call SetColor( "PreProc",      s:lightyellow,  "",           "none"      )
hi! link PreProc PreProc
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc

" Type
call SetColor( "Type",         "7d7d5f",         "",           "none"      )
hi! link StorageClass Statement
hi! link Structure Statement
hi! link Typedef Statement

" Special
hi! link Special Constant
hi! link SpecialChar Special
hi! link Tag Special
hi! link Delimiter Special
hi! link SpecialComment Special
hi! link Debug PreProc

" Spell Checking
call SetColor("SpellBad",      s:lightred,     "",           "bold"      )
call SetColor("SpellCap",      s:lightblue,    "",           "bold"      )
call SetColor("SpellRare",     s:lightpurple,  "",           "bold"      )
hi! link SpellLocal SpellBad




" "--------------------------------------------------------------------------------------"
" Code-specific colors
"

" PHP
hi! link phpVarSelector Identifier
hi! link phpBoolean Boolean
hi! link phpIdentifier Normal
hi! link phpParent Normal
hi! link phpDefine Function
" hi! link 

" Python
hi! link pythonBuiltin PreFunction

" HTML
hi! link htmlArg Define
" hi! link htmlLink helpUnderlined
hi! link htmlTagName Function

" NERDTree
hi! link Directory Function
hi! link NERDTreeExecFile String

" Java
hi! link javaBraces Normal
hi! link javaConstant Normal

" "--------------------------------------------------------------------------------------"
" Fixing issues with non gui versions

if !s:low_color
	hi Normal ctermbg=234
	hi StatusLine ctermbg=233
	hi StatusLineNC ctermbg=233
	hi LineNr ctermbg=233
	hi Folded ctermbg=235
	hi Visual ctermbg=236
	hi ColorColumn ctermbg=235
	hi ErrorMsg ctermbg=235
endif

