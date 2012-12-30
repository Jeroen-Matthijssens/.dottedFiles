" Vim color file
"
"  "    __       _ _       _                             "
"  "    \ \  ___| | |_   _| |__   ___  __ _ _ __  ___    "
"  "     \ \/ _ \ | | | | |  _ \ / _ \/ _  |  _ \/ __|   "
"  "  /\_/ /  __/ | | |_| | |_| |  __/ |_| | | | \__ \   "
"  "  \___/ \___|_|_|\__  |____/ \___|\____|_| |_|___/   "
"  "                 \___/                               "
"
"         "A colorful, dark color scheme for Vim."
"
" File:         jellybeans.vim
" Maintainer:   NanoTech <http://nanotech.nanotechcorp.net/>
" Version:      1.5
" Last Change:  January 15th, 2012
" Contributors: Daniel Herbert <http://pocket-ninja.com/>,
"               Henry So, Jr. <henryso@panix.com>,
"               David Liang <bmdavll at gmail dot com>,
"               Rich Healey (richoH),
"               Andrew Wong (w0ng)
"
" Copyright (c) 2009-2012 NanoTech
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in
" all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
" THE SOFTWARE.

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "jellybeans"

if has("gui_running") || &t_Co == 88 || &t_Co == 256
  let s:low_color = 0
else
  let s:low_color = 1
endif

" import the <code>SetColor</code> function
" <code>SetColor( groupName, foreground, background, attributes)</code>
source ~/.vim/colors/calcTermColors.vim


set background=dark

if version >= 700
	call SetColor("CursorLine","","1c1c1c","")
	call SetColor("CursorColumn","","1c1c1c","")
	call SetColor("MatchParen","ffffff","80a090","bold")
	
	call SetColor("TabLine","000000","b0b8c0","italic")
	call SetColor("TabLineFill","9098a0","","")
	call SetColor("TabLineSel","000000","f0f0f0","italic,bold")
	
	" Auto-completion
	call SetColor("Pmenu","ffffff","606060","")
	call SetColor("PmenuSel","101010","eeeeee", "")
endif

let s:darkblue     = "6d92ab"
let s:dullblue     = "668799"
let s:blue         = "8fbfdc"
let s:brightblue   = "a6ddff"

let s:darkyellow   = "c7a561"
let s:yellow       = "fad07a"
let s:brightyellow = "ffd47c"

let s:darkgreen    = "268e00"
let s:green        = "99ad6a"
let s:brightgreen  = "c6e089"

let s:darkoker     = "9c5039"
let s:oker         = "cf6a4c"
let s:brightoker   = "ff835e"

let s:darkpurple   = "9b8eba"
let s:purple       = "7c1F7c"
let s:brightpurple = "ccbacc"

let s:bgdark       = "121212"
let s:bgfold       = "252525"
let s:bgbright     = "404040"

let s:forground    = "cccccc"
let s:faded        = "808080"
let s:cfaded       = "807580"

" Interface
call SetColor("Visual",          "",             s:bgbright,  "")
call SetColor("Cursor",          "",             s:bgbright,  "")
call SetColor("LineNr",          s:cfaded,       s:bgdark,    "")
call SetColor("Search",          s:brightyellow, s:bgbright,  "underline")

call SetColor("StatusLine",      s:bgdark,       s:cfaded, "italic")
call SetColor("StatusLineNC",    s:cfaded,       s:bgbright,  "italic")
call SetColor("VertSplit",       s:cfaded,       s:bgdark,    "")
call SetColor("WildMenu",        "f0a0c0",       "302028",    "")

call SetColor("Folded",          s:faded,        s:bgfold,    "none")
" call SetColor("Folded",          "a0a8b0",       "384048",    "italic")
call SetColor("FoldColumn",      "535D66",       "1f1f1f",    "")
" call SetColor("FoldColumn",      "535D66",       "1f1f1f",    "")
call SetColor("SignColumn",      "777777",       "333333",    "")
call SetColor("ColorColumn",     "",             "000000",    "")

call SetColor("Title",           "70b950",       "",          "bold")

" General
call SetColor("Normal",          s:forground,    s:bgdark,    "")
call SetColor("Comment",         s:faded,        "",          "italic")
call SetColor("Todo",            s:faded,        "",          "bold")
call SetColor("NonText",         s:faded,        s:bgdark,    "")
call SetColor("Directory",       s:oker,         "",          "")
call SetColor("ErrorMsg",        s:brightoker,   s:bgbright,  "")
hi! link Error ErrorMsg
hi! link MoreMsg Special
call SetColor("Question",        "65C254",       "",          "")

"Constant
call SetColor("Constant",        s:oker,         "",          "")
call SetColor("String",          s:green,        "",          "")
call SetColor("Character",       s:darkoker,     "",          "")
call SetColor("Number",          s:oker,         "",          "")
call SetColor("Boolean",         s:oker,         "",          "")
call SetColor("Float",           s:oker,         "",          "")
call SetColor("StringDelimiter", s:green,        "",          "")

" Identifier
call SetColor("Identifier",      s:blue,         "",          "")
call SetColor("Function",        s:brightpurple, "",          "")
call SetColor("PreFunction",     s:brightgreen,  "",          "")

" Statement
call SetColor("Statement",       s:blue,         "",          "")
call SetColor("Conditional",     s:blue,         "",          "")
call SetColor("Repeat",          s:blue,         "",          "")
call SetColor("Label",           s:blue,         "",          "")
call SetColor("Operator",        s:blue,         "",          "")
call SetColor("Keyword",         s:blue,         "",          "")
call SetColor("Exception",       s:blue,         "",          "")

" PreProc
call SetColor("PreProc",         s:darkyellow,   "",          "")
call SetColor("Include",         s:darkblue,     "",          "")
call SetColor("Define",          s:darkyellow,   "",          "")
call SetColor("Macro",           s:darkyellow,   "",          "")
call SetColor("PreCondit",       s:darkyellow,   "",          "")

" Type
call SetColor("Type",            s:darkyellow,   "",          "")
call SetColor("StorageClass",    s:darkyellow,   "",          "")
call SetColor("Structure",       s:darkyellow,   "",          "")
call SetColor("Typedef",         s:darkyellow,   "",          "")

" Special
call SetColor("Special",         s:green,        "",          "")
call SetColor("SpecialChar",     s:green,        "",          "")
call SetColor("Tag",             s:green,        "",          "")
call SetColor("Delimiter",       s:dullblue,     "",          "")
call SetColor("SpecialComment",  s:green,        "",          "")
call SetColor("Debug",           s:green,        "",          "")
call SetColor("SpecialKey",      "444444",       s:bgdark,    "")

" Spell Checking

call SetColor("SpellBad",        s:oker,         "",          "underline,bold")
call SetColor("SpellCap",        s:brightoker,   "",          "underline,bold")
call SetColor("SpellRare",       s:darkoker,     "",          "underline,bold")
call SetColor("SpellLocal",      s:darkoker,     s:bgbright,  "underline,bold")

" Diff

hi! link diffRemoved Constant
hi! link diffAdded String

" VimDiff

call SetColor("DiffAdd",         "D2EBBE",       "437019",    "")
call SetColor("DiffDelete",      "40000A",       "700009",    "")
call SetColor("DiffChange",      "",             "2B5B77",    "")
call SetColor("DiffText",        "8fbfdc",       "000000",    "reverse")

" PHP

hi! link phpFunctions Function
call SetColor("StorageClass","c59f6f","","")
hi! link phpSuperglobal Identifier
hi! link phpQuoteSingle StringDelimiter
hi! link phpQuoteDouble StringDelimiter
hi! link phpBoolean Constant
hi! link phpNull Constant
hi! link phpArrayPair Operator

" Python
hi! link pythonBuiltin PreFunction

" Ruby

hi! link rubySharpBang Comment
"call SetColor("rubyClass","447799","","")
hi! link rubyClass Keyword
call SetColor("rubyRegexpDelimiter", s:darkgreen, "", "")
call SetColor("rubyRegexp",          s:darkgreen, "", "")
call SetColor("rubyRegexpSpecial",   s:darkgreen, "", "")

call SetColor("rubyIdentifier","c6b6fe","","")
hi! link rubyConstant Type
hi! link rubyFunction Function

call SetColor("rubyInstanceVariable","c6b6fe","","")
hi! link rubySumbol Character
hi! link rubyGlobalVariable rubyInstanceVariable
hi! link rubyModule rubyClass
call SetColor("rubyControl","7597c6","","")

hi! link rubyString String
hi! link rubyStringDelimiter StringDelimiter
hi! link rubyInterpolationDelimiter Identifier

" call SetColor("rubyPredefinedIdentifier","de5577","","")

" JavaScript

hi! link javaScriptValue Constant
hi! link javaScriptRegexpString rubyRegexp
hi! link javaScriptFunction Statement
hi! link javaScriptMember PreProc
hi! link javaScriptBraces Delimiter

" CoffeeScript

hi! link coffeeRegExp javaScriptRegexpString

" Lua

hi! link luaOperator Conditional

" C

hi! link cOperator Constant

" Objective-C/Cocoa

hi! link objcClass Type
hi! link cocoaClass objcClass
hi! link objcSubclass objcClass
hi! link objcSuperclass objcClass
hi! link objcDirective rubyClass
hi! link objcStatement Constant
hi! link cocoaFunction Function
hi! link objcMethodName Identifier
hi! link objcMethodArg Normal
hi! link objcMessageName Identifier

" Scheme/racket

hi! link SchemeFunc PreFunction
hi! link SchemeQuoted String

" Debugger.vim

call SetColor("DbgCurrent","DEEBFE","345FA8","")
call SetColor("DbgBreakPt","","4F0037","")

" vim-indent-guides

if !exists("g:indent_guides_auto_colors")
  let g:indent_guides_auto_colors = 0
endif
call SetColor("IndentGuidesOdd","","202020","")
call SetColor("IndentGuidesEven","","1c1c1c","")

" Plugins, etc.

hi! link TagListFileName Directory
call SetColor("PreciseJumpTarget","B9ED67","405026","")

" Manual overrides for 256-color terminals. Dark colors auto-map badly.
if !s:low_color
"  hi StatusLineNC ctermbg=235
"  hi Folded ctermbg=236
"  hi FoldColumn ctermbg=234
"  hi SignColumn ctermbg=236
"  hi CursorColumn ctermbg=234
"  hi CursorLine ctermbg=234
   hi SpecialKey ctermbg=233
"  hi NonText ctermbg=233
   hi LineNr ctermbg=233
"  hi DiffText ctermfg=81
   hi Normal ctermbg=233
"  hi DbgBreakPt ctermbg=53
   hi VertSplit ctermbg=233
   hi Directory ctermbg=233
endif
