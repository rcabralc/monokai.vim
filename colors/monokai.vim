" Name:   Monokai Colorscheme for Vim.
" Author: rcabralc <rcabralc@gmail.com>
" URL:    https://github.com/rcabralc/monokai.vim
" Note:   Colorscheme based on the original TextMate's Monokai theme by Wimer
"         Hazenberg, which can be found at
"         http://www.monokai.nl/blog/2006/07/15/textmate-color-theme/).
"
"         Technique based on Solarized by Ethan Schoonover
"         (https://github.com/altercation/vim-colors-solarized) and
"         vim-monokai by Marcin Kulik (https://github.com/sickill/vim-monokai).

" Palette
let s:black     = "#272822"
let s:darkgray  = "#49483e"
let s:lightgray = "#75715e"
let s:white     = "#f8f8f2"
let s:lime      = "#a6e22e"
let s:yellow    = "#e6db74"
let s:purple    = "#ae81ff"
let s:cyan      = "#66d9ef"
let s:orange    = "#fd971f"
let s:magenta   = "#f92672"

" Terminal versions
let s:tblack     = 235
let s:tdarkgray  = 238
let s:tlightgray = 242
let s:twhite     = 255
let s:tlime      = 148
let s:tyellow    = 186
let s:tpurple    = 141
let s:tcyan      = 81
let s:torange    = 208
let s:tmagenta   = 197

if exists("g:monokai_transparent_background") && g:monokai_transparent_background == 1
    let s:blackbg = "NONE"
    let s:tblackbg = "NONE"
else
    let s:blackbg = s:black
    let s:tblackbg = s:tblack
endif

hi clear
if exists("syntax on")
    syntax reset
endif

set t_Co=256
let g:colors_name = "monokai"

" For relevant help:
" :help highlight-groups
" :help cterm-colors
" :help group-name

" For testing:
" :source $VIMRUNTIME/syntax/hitest.vim

exe "hi! Normal         ctermfg=".s:twhite    ." ctermbg=".s:tblackbg  ." cterm=NONE              guifg=".s:white    ." guibg=".s:blackbg  ." gui=NONE"

exe "hi! Comment        ctermfg=".s:tlightgray." ctermbg=NONE"         ." cterm=NONE              guifg=".s:lightgray." guibg=NONE            gui=italic"
"       *Comment        any comment

exe "hi! Constant       ctermfg=".s:tpurple   ." ctermbg=NONE             cterm=bold              guifg=".s:purple   ." guibg=NONE            gui=bold"
"       *Constant       any constant
"        String         a string constant: "this is a string"
"        Character      a character constant: 'c', '\n'
"        Number         a number constant: 234, 0xff
"        Boolean        a boolean constant: TRUE, false
"        Float          a floating point constant: 2.3e10
exe "hi! String         ctermfg=".s:tyellow   ." ctermbg=NONE             cterm=NONE              guifg=".s:yellow   ." guibg=NONE            gui=NONE"
exe "hi! Number         ctermfg=".s:tpurple   ." ctermbg=NONE             cterm=NONE              guifg=".s:purple   ." guibg=NONE            gui=NONE"
exe "hi! Boolean        ctermfg=".s:tcyan     ." ctermbg=NONE             cterm=NONE              guifg=".s:cyan     ." guibg=NONE            gui=NONE"

exe "hi! Identifier     ctermfg=".s:tlime     ." ctermbg=NONE             cterm=NONE              guifg=".s:lime     ." guibg=NONE            gui=NONE"
"       *Identifier     any variable name
"        Function       function name (also: methods for classes)

exe "hi! Statement      ctermfg=".s:tmagenta  ." ctermbg=NONE             cterm=bold              guifg=".s:magenta  ." guibg=NONE            gui=bold"
"       *Statement      any statement
"        Conditional    if, then, else, endif, switch, etc.
"        Repeat         for, do, while, etc.
"        Label          case, default, etc.
"        Operator       "sizeof", "+", "*", etc.
"        Keyword        any other keyword
"        Exception      try, catch, throw
exe "hi! Operator       ctermfg=".s:tmagenta  ." ctermbg=NONE             cterm=NONE              guifg=".s:magenta  ." guibg=NONE            gui=NONE"
exe "hi! Exception      ctermfg=".s:tlime     ." ctermbg=NONE             cterm=bold              guifg=".s:lime     ." guibg=NONE            gui=bold"

exe "hi! PreProc        ctermfg=".s:tmagenta  ." ctermbg=NONE             cterm=bold              guifg=".s:magenta  ." guibg=NONE            gui=bold"
"       *PreProc        generic Preprocessor
"        Include        preprocessor #include
"        Define         preprocessor #define
"        Macro          same as Define
"        PreCondit      preprocessor #if, #else, #endif, etc.

exe "hi! Type           ctermfg=".s:tcyan     ." ctermbg=NONE             cterm=NONE              guifg=".s:cyan     ." guibg=NONE            gui=italic"
"       *Type           int, long, char, etc.
"        StorageClass   static, register, volatile, etc.
"        Structure      struct, union, enum, etc.
"        Typedef        A typedef
exe "hi! StorageClass   ctermfg=".s:tmagenta  ." ctermbg=NONE             cterm=bold              guifg=".s:magenta  ." guibg=NONE            gui=bold"

exe "hi! Special        ctermfg=".s:torange   ." ctermbg=NONE             cterm=NONE              guifg=".s:orange   ." guibg=NONE            gui=NONE"
"       *Special        any special symbol
"        SpecialChar    special character in a constant
"        Tag            you can use CTRL-] on this
"        Delimiter      character that needs attention
"        SpecialComment special things inside a comment
"        Debug          debugging statements
exe "hi! Tag            ctermfg=".s:tmagenta  ." ctermbg=NONE             cterm=bold              guifg=".s:magenta  ." guibg=NONE             gui=bold"
exe "hi! SpecialComment ctermfg=".s:twhite    ." ctermbg=NONE             cterm=bold              guifg=".s:white    ." guibg=NONE             gui=bold"

exe "hi! Underlined     ctermfg=NONE             ctermbg=NONE             cterm=underline         guifg=NONE            guibg=NONE             gui=underline"
"       *Underlined     text that stands out, HTML links

exe "hi! Ignore         ctermfg=NONE             ctermbg=NONE             cterm=NONE              guifg=NONE            guibg=NONE             gui=NONE"
"       *Ignore         left blank, hidden |hl-Ignore|

exe "hi! Error          ctermfg=".s:tmagenta  ." ctermbg=NONE             cterm=bold,reverse      guifg=".s:magenta  ." guibg=NONE             gui=bold,reverse"
"       *Error          any erroneous construct

exe "hi! Todo           ctermfg=".s:twhite    ." ctermbg=NONE             cterm=bold              guifg=".s:white    ." guibg=NONE             gui=bold"
"       *Todo           anything that needs extra attention; mostly the
"                       keywords TODO FIXME and XXX


" Extended highlighting
exe "hi! SpecialKey     ctermfg=".s:torange   ." ctermbg=NONE             cterm=NONE              guifg=".s:orange   ." guibg=NONE            gui=NONE"
exe "hi! NonText        ctermfg=".s:tdarkgray ." ctermbg=NONE             cterm=NONE              guifg=".s:darkgray ." guibg=NONE            gui=NONE"
exe "hi! StatusLine     ctermfg=".s:twhite    ." ctermbg=".s:tdarkgray ." cterm=bold              guifg=".s:white    ." guibg=".s:darkgray ." gui=bold"
exe "hi! StatusLineNC   ctermfg=".s:tblack    ." ctermbg=".s:tlightgray." cterm=NONE              guifg=".s:black    ." guibg=".s:lightgray." gui=NONE"
exe "hi! Visual         ctermfg=NONE             ctermbg=".s:tdarkgray ." cterm=NONE              guifg=NONE            guibg=".s:darkgray ." gui=NONE"
exe "hi! Directory      ctermfg=".s:tpurple   ." ctermbg=NONE             cterm=NONE              guifg=".s:purple   ." guibg=NONE            gui=NONE"
exe "hi! ErrorMsg       ctermfg=".s:twhite    ." ctermbg=".s:tmagenta  ." cterm=bold              guifg=".s:white    ." guibg=".s:magenta  ." gui=bold"
exe "hi! IncSearch      ctermfg=".s:tblack    ." ctermbg=".s:tyellow   ." cterm=NONE              guifg=".s:black    ." guibg=".s:yellow   ." gui=NONE"
exe "hi! Search         ctermfg=NONE             ctermbg=NONE             cterm=underline         guifg=NONE            guibg=NONE            gui=underline"
exe "hi! MoreMsg        ctermfg=".s:tblack    ." ctermbg=".s:tcyan     ." cterm=NONE              guifg=".s:black    ." guibg=".s:cyan     ." gui=NONE"
exe "hi! ModeMsg        ctermfg=".s:tlime     ." ctermbg=".s:tblackbg  ." cterm=NONE              guifg=".s:lime     ." guibg=".s:blackbg  ." gui=NONE"
exe "hi! LineNr         ctermfg=".s:tlightgray." ctermbg=".s:tblackbg  ." cterm=NONE              guifg=".s:lightgray." guibg=".s:blackbg  ." gui=NONE"
exe "hi! Question       ctermfg=".s:tcyan     ." ctermbg=NONE             cterm=bold              guifg=".s:cyan     ." guibg=NONE            gui=bold"
exe "hi! VertSplit      ctermfg=".s:tlightgray." ctermbg=".s:tdarkgray ." cterm=NONE              guifg=".s:lightgray." guibg=".s:darkgray ." gui=NONE"
exe "hi! Title          ctermfg=".s:twhite    ." ctermbg=NONE             cterm=bold              guifg=".s:white    ." guibg=NONE            gui=bold"
exe "hi! VisualNOS      ctermfg=NONE             ctermbg=".s:tdarkgray ." cterm=standout          guifg=NONE            guibg=".s:darkgray ." gui=standout"
exe "hi! WarningMsg     ctermfg=".s:tblack    ." ctermbg=".s:tyellow   ." cterm=bold              guifg=".s:black    ." guibg=".s:yellow   ." gui=bold"
exe "hi! WildMenu       ctermfg=".s:tcyan     ." ctermbg=".s:tblackbg  ." cterm=NONE              guifg=".s:cyan     ." guibg=".s:blackbg  ." gui=NONE"
exe "hi! Folded         ctermfg=".s:tlightgray." ctermbg=".s:tblackbg  ." cterm=NONE              guifg=".s:lightgray." guibg=".s:blackbg  ." gui=NONE"
exe "hi! FoldColumn     ctermfg=".s:tlightgray." ctermbg=".s:tblackbg  ." cterm=NONE              guifg=".s:lightgray." guibg=".s:blackbg  ." gui=NONE"
exe "hi! DiffAdd        ctermfg=".s:tblack    ." ctermbg=".s:tlime     ." cterm=NONE              guifg=".s:black    ." guibg=".s:lime     ." gui=NONE"
exe "hi! DiffChange     ctermfg=".s:tblack    ." ctermbg=".s:tyellow   ." cterm=NONE              guifg=".s:black    ." guibg=".s:yellow   ." gui=NONE"
exe "hi! DiffDelete     ctermfg=".s:tblack    ." ctermbg=".s:tmagenta  ." cterm=NONE              guifg=".s:black    ." guibg=".s:magenta  ." gui=NONE"
exe "hi! DiffText       ctermfg=".s:tblack    ." ctermbg=".s:tcyan     ." cterm=NONE              guifg=".s:black    ." guibg=".s:cyan     ." gui=NONE"
exe "hi! SignColumn     ctermfg=".s:tlime     ." ctermbg=".s:tblackbg  ." cterm=NONE              guifg=".s:lime     ." guibg=".s:blackbg  ." gui=NONE"
exe "hi! Conceal        ctermfg=".s:tdarkgray ." ctermbg=NONE             cterm=NONE              guifg=".s:darkgray ." guibg=NONE            gui=NONE"
exe "hi! SpellBad       ctermfg=NONE             ctermbg=NONE             cterm=NONE              guifg=NONE            guibg=NONE            gui=undercurl guisp=".s:magenta
exe "hi! SpellCap       ctermfg=NONE             ctermbg=NONE             cterm=NONE              guifg=NONE            guibg=NONE            gui=undercurl guisp=".s:cyan
exe "hi! SpellRare      ctermfg=NONE             ctermbg=NONE             cterm=NONE              guifg=NONE            guibg=NONE            gui=undercurl guisp=".s:white
exe "hi! SpellLocal     ctermfg=NONE             ctermbg=NONE             cterm=NONE              guifg=NONE            guibg=NONE            gui=undercurl guisp=".s:cyan
exe "hi! Pmenu          ctermfg=".s:tdarkgray ." ctermbg=".s:twhite    ." cterm=NONE              guifg=".s:darkgray ." guibg=".s:white    ." gui=NONE"
exe "hi! PmenuSel       ctermfg=".s:torange   ." ctermbg=".s:tdarkgray ." cterm=bold              guifg=".s:orange   ." guibg=".s:darkgray ." gui=bold"
exe "hi! PmenuSbar      ctermfg=NONE             ctermbg=".s:tlightgray." cterm=NONE              guifg=NONE            guibg=".s:lightgray." gui=NONE"
exe "hi! PmenuThumb     ctermfg=NONE             ctermbg=".s:tdarkgray ." cterm=NONE              guifg=NONE            guibg=".s:darkgray ." gui=NONE"
exe "hi! TabLine        ctermfg=".s:tblack    ." ctermbg=".s:tlightgray." cterm=NONE              guifg=".s:black    ." guibg=".s:lightgray." gui=NONE"
exe "hi! TabLineFill    ctermfg=".s:tlightgray." ctermbg=".s:tlightgray." cterm=NONE              guifg=".s:lightgray." guibg=".s:lightgray." gui=NONE"
exe "hi! TabLineSel     ctermfg=".s:twhite    ." ctermbg=".s:tdarkgray ." cterm=bold              guifg=".s:white    ." guibg=".s:darkgray ." gui=bold"
exe "hi! CursorColumn   ctermfg=NONE             ctermbg=".s:tdarkgray ." cterm=NONE              guifg=NONE            guibg=".s:darkgray ." gui=NONE"
exe "hi! CursorLine     ctermfg=NONE             ctermbg=".s:tdarkgray ." cterm=NONE              guifg=NONE            guibg=".s:darkgray ." gui=NONE"
exe "hi! CursorLineNr   ctermfg=".s:tlime     ." ctermbg=".s:tblackbg  ." cterm=NONE              guifg=".s:lime     ." guibg=".s:blackbg  ." gui=NONE"
exe "hi! ColorColumn    ctermfg=NONE             ctermbg=".s:tdarkgray ." cterm=NONE              guifg=NONE            guibg=".s:darkgray ." gui=NONE"
exe "hi! Cursor         ctermfg=".s:tblack    ." ctermbg=".s:twhite    ." cterm=NONE              guifg=".s:black     " guibg=".s:white    ." gui=NONE"
hi! link lCursor Cursor
exe "hi! MatchParen     ctermfg=NONE             ctermbg=NONE             cterm=reverse,underline guifg=NONE            guibg=NONE            gui=reverse,underline"


" Must be at the end due to a bug in VIM trying to figuring out automagically
" if the background set through Normal highlight group is dark or light.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark

" Additions for vim-gitgutter
exe "hi! GitGutterAdd          ctermfg=".s:tlime     ." guifg=".s:lime
exe "hi! GitGutterChange       ctermfg=".s:tyellow   ." guifg=".s:yellow
exe "hi! GitGutterDelete       ctermfg=".s:tmagenta  ." guifg=".s:magenta
exe "hi! GitGutterChangeDelete ctermfg=".s:tmagenta  ." guifg=".s:magenta
