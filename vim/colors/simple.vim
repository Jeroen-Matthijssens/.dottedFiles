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
let s:text        = "c6c6c6"
let s:textdull    = "505050"

let s:bgfold      = "252525"
let s:bgvisual    = "303030"
let s:background  = "1c1c1c"

let s:cursor      = "626262"

let s:commentColor = "5f5f5f"
let s:commentTitleColor = "5faf87"
let s:stringColor  = "afd787"

let s:mono = "def5cf"
let s:offset = "fff4d2"

let s:controlColor = s:mono
let s:operatorColor = s:mono
let s:whitespaceColor = "3a3a3a"

let s:yellow      = "e6ea50"
let s:lightred    = "ff835e"
let s:lightblue   = "00afff"
let s:lightpurple = "875fff"

let s:diffBg    = s:bgfold
let s:diffBgAdd = "282b28"
let s:diffBgRm  = "2b2828"
echo

" Vim >= 7.0 specific colors
if version >= 700
	hi MatchParen   guifg=#d0ffc0 guibg=#2f2f2f gui=bold ctermfg=157 ctermbg=237 cterm=bold
	hi Pmenu        guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
	hi PmenuSel     guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
	hi! link PmenuSbar Pmenu
	hi! link PmenuThumb Pmenu
	call SetColor( "TabLine",     s:text,      s:textdull,    "" )
	call SetColor( "TabLineFill", "",          s:textdull,    "" )
	call SetColor( "TabLineSel",  s:black,     s:stringColor,           "bold"      )
	call SetColor( "WildMenu",    s:black,     s:stringColor,           "bold"      )
endif

" Interface
call SetColor( "Folded",             s:textlight,         s:bgfold,     ""          )
call SetColor( "Visual",             "",                  s:bgvisual,   "none"      )
call SetColor( "Cursor",             s:white,             s:cursor,     "underline" )
call SetColor( "Normal",             s:text,              s:background, ""          )
call SetColor( "NonText",            s:whitespaceColor,   "",           ""          )
call SetColor( "Search",             "",                  "",           ""          )
call SetColor( "LineNr",             s:textlight,         s:black,      ""          )
hi! link SignColumn LineNr
call SetColor( "ColorColumn",        "",                  s:bgfold,     ""          )

call SetColor( "StatusLine",         s:white,             s:black,      ""          )
call SetColor( "StatusLineNC",       s:textlight,         s:black,      "italic"    )
call SetColor( "VertSplit",          s:textlight,         s:black,      ""          )

" Highlighting choises
call SetColor ("Regular", s:text, "", "")
call SetColor ("RegularBold", s:text, "", "bold")
call SetColor ("Bright", s:white, "", "")
call SetColor ("BrightBold", s:white, "", "bold")
call SetColor ("Mono", s:mono, "", "")
call SetColor ("MonoBold", s:mono, "", "bold")
call SetColor ("Offset", s:offset, "", "")
call SetColor ("OffsetBold", s:offset, "", "bold")

" General
call SetColor( "Comment",            s:commentColor,      "",           ""          )
hi! link SpecialKey NonText
call SetColor( "Todo",               s:black,             s:yellow,     "italic"    )
call SetColor( "Title",              s:white,             "",           "bold"      )
call SetColor( "ErrorMsg",           s:lightred,          s:bgfold,     ""          )
hi! link Error ErrorMsg

" Constants
hi! link Constant Mono
hi! link String Bright
hi! link Character Constant
hi! link Number String
hi! link Boolean Constant
hi! link Float Number
hi! link StringDelimiter Constant

call SetColor( "Search",             s:yellow,            s:bgvisual,   "bold,underline" )

" Identifier
hi! link Identifier Mono
hi! link Function MonoBold
hi! link PreFunction PreProc

"Statement
hi! link Statement MonoBold
hi! link Conditional Mono
hi! link Repeat Conditional
hi! link Label Statement
" hi! link Operator Conditional
hi! link Operator Mono
hi! link Keyword Mono
hi! link Exception Mono

" PreProc
hi! link PreProc Bright
hi! link Include PreProc
hi! link Define PreProc
hi! link Macro PreProc
hi! link PreCondit PreProc

" lef gutter
hi! link FoldColumn Normal

" Type
hi! link Type Constant
hi! link StorageClass Statement
hi! link Structure Conditional
hi! link Typedef Constant

" Special
hi! link Special Bright
hi! link SpecialChar BrightBold
hi! link Tag Special
hi! link Delimiter Special
hi! link SpecialComment Special
hi! link Debug PreProc

" Spell Checking
call SetColor("SpellBad",            s:lightred,          "",           "bold"      )
call SetColor("SpellCap",            s:lightblue,         "",           "bold"      )
call SetColor("SpellRare",           s:lightpurple,       "",           "bold"      )
hi! link SpellLocal SpellBad

" diff colors
call SetColor("DiffAdd",             "",                  s:diffBgAdd,  ""          )
call SetColor("DiffDelete",          s:black,             s:diffBgRm,   ""          )
call SetColor("DiffChange",          "",                  s:diffBg,     ""          )
call SetColor("DiffText",            s:yellow,            s:diffBg,     "bold"      )
if !s:low_color
	hi DiffAdd ctermbg=233
	hi DiffDelete ctermbg=233 ctermfg=52
	hi DiffChange ctermbg=235
	hi DiffText ctermbg=235
endif
call SetColor ( "SignifySignAdd",    s:stringColor,       s:black,      ""          )
call SetColor ( "SignifySignChange", s:controlColor,      s:black,      ""          )
call SetColor ( "SignifySignDelete", s:operatorColor,     s:black,      ""          )
if !s:low_color
	hi signifySignAdd ctermbg=233
	hi signifySignChange ctermbg=233
	hi signifySignDelete ctermbg=233
endif

" other stuff
hi! link Question Normal
hi! link MoreMsg Normal
hi! link ModeMsg Normal


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

" Javascript
hi! link javaScriptStatement Conditional

" XML
hi! link xmlEndTag xmlTagName

" NERDTree
hi! link Directory BrightBold
hi! link NERDTreeExecFile String

" Java
hi! link javaTypedef BrightBold
hi! link javaBraces Conditional
" hi! link javaConstant Normal
hi! link javaStatement Conditional
hi! link javaDebug Normal
hi! link javaLangObject Normal
hi! link javaAnnotation BrightBold

" perl
hi! link perlStatementControl Conditional

" Git
hi! link gitcommitSummary Title
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
