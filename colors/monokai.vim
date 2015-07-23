" Name:   Monokai Colorscheme for Vim.
" Author: rcabralc <rcabralc@gmail.com>
" URL:    https://github.com/rcabralc/monokai.vim
" Note:   Colorscheme based on the original TextMate's Monokai theme by Wimer
"         Hazenberg, which can be found at
"         http://www.monokai.nl/blog/2006/07/15/textmate-color-theme/).
"
"         Thanks to Jørgen Ibsen (https://github.com/jibsen/tmcolorconv) for
"         pointing out the need for gamma correction.


" Palette definition.
"
" The colors originally defined by Wimer Hazenberg were probably defined in a
" generic RGB profile in an Apple computer, whose default gamma was 1.8.
" Windows and Linux, and nowaday Macs use sRGB (gamma 2.2).  So, by default,
" sRGB display is assumed and a gamma correction is applied to the original
" pallete values in order to be more accurate about the original author
" intentions.
"
" To avoid this correction which is applied now by default, set
" g:monokai_colorscheme#output_srgb to 0.
"
" See details in http://www.hardtoc.com/archives/310.

if !exists("g:monokai_colorscheme#output_srgb")
    let g:monokai_colorscheme#output_srgb = 1
endif

if !exists("g:monokai_colorscheme#transparent_background")
    let g:monokai_colorscheme#transparent_background = 0
endif

if !exists("g:monokai_colorscheme#use_default_term_colors")
    let g:monokai_colorscheme#use_default_term_colors = 0
endif

if g:monokai_colorscheme#output_srgb == 0
    " Original pallete values, generic RGB.
    let s:palette = {
        \ 'NONE':      { 'gui': 'NONE',    'term': 'NONE', 'term_default': 'NONE' },
        \ 'black':     { 'gui': '#272822', 'term': 235,    'term_default': 0      },
        \ 'darkgray':  { 'gui': '#49483e', 'term': 238,    'term_default': 8      },
        \ 'lightgray': { 'gui': '#75715e', 'term': 242,    'term_default': 7      },
        \ 'white':     { 'gui': '#f8f8f2', 'term': 255,    'term_default': 15     },
        \ 'lime':      { 'gui': '#a6e22e', 'term': 148,    'term_default': 2      },
        \ 'yellow':    { 'gui': '#e6db74', 'term': 186,    'term_default': 11     },
        \ 'purple':    { 'gui': '#ae81ff', 'term': 141,    'term_default': 5      },
        \ 'cyan':      { 'gui': '#66d9ef', 'term': 81,     'term_default': 6      },
        \ 'orange':    { 'gui': '#fd971f', 'term': 208,    'term_default': 3      },
        \ 'magenta':   { 'gui': '#f92672', 'term': 197,    'term_default': 1      }
    \ }
else
    " Gamma-corrected values.
    let s:palette = {
        \ 'NONE':      { 'gui': 'NONE',    'term': 'NONE', 'term_default': 'NONE' },
        \ 'black':     { 'gui': '#34352d', 'term': 236,    'term_default': 0      },
        \ 'darkgray':  { 'gui': '#5b5a4f', 'term': 240,    'term_default': 8      },
        \ 'lightgray': { 'gui': '#888471', 'term': 244,    'term_default': 7      },
        \ 'white':     { 'gui': '#f9f9f5', 'term': 231,    'term_default': 15     },
        \ 'lime':      { 'gui': '#b3e43b', 'term': 149,    'term_default': 2      },
        \ 'yellow':    { 'gui': '#ebe086', 'term': 186,    'term_default': 11     },
        \ 'purple':    { 'gui': '#bd99ff', 'term': 141,    'term_default': 5      },
        \ 'cyan':      { 'gui': '#75e0f2', 'term': 117,    'term_default': 6      },
        \ 'orange':    { 'gui': '#ffa727', 'term': 214,    'term_default': 3      },
        \ 'magenta':   { 'gui': '#fd4485', 'term': 204,    'term_default': 1      }
    \ }
endif

if g:monokai_colorscheme#transparent_background == 1
    let s:palette['blackbg'] = { 'gui': 'NONE', 'term': 'NONE', 'term_default': 'NONE' }
else
    let s:palette['blackbg'] = {
        \ 'gui': s:palette['black']['gui'],
        \ 'term': s:palette['black']['term'],
        \ 'term_default': s:palette['black']['term_default']
    \ }
endif

if g:monokai_colorscheme#use_default_term_colors == 1
    let s:term_key = 'term_default'
else
    let s:term_key = 'term'
endif

function! s:hl(group, fg, bg, ...)
    let fg_color = s:palette[a:fg]
    let bg_color = s:palette[a:bg]
    let gui_fg = fg_color['gui']
    let gui_bg = bg_color['gui']
    let term_fg = fg_color[s:term_key]
    let term_bg = bg_color[s:term_key]
    let gui_sp = ''

    if a:0 > 0
        let gui_mod = a:1
        if a:0 > 1
            let term_mod = a:2
        else
            let term_mod = a:1
        endif

        if a:0 > 2
            let gui_sp = ' guisp=' . s:palette[a:3]['gui']
        endif
    else
        let gui_mod = 'NONE'
        let term_mod = 'NONE'
    endif

    if term_mod == 'bold' && term_fg < 8
        let term_mod = 'NONE'
    endif

    exe "hi! " . a:group .
        \ " ctermfg=" . term_fg .
        \ " ctermbg=" . term_bg .
        \ " cterm="   . term_mod .
        \ " guifg="   . gui_fg .
        \ " guibg="   . gui_bg .
        \ " gui="     . gui_mod .
        \ gui_sp
endfunction

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

call s:hl('Normal',         'white',     'blackbg')
call s:hl('Comment',        'lightgray', 'NONE')
"         *Comment        any comment

call s:hl('Constant',       'purple',    'NONE', 'bold')
"         *Constant       any constant
"          String         a string constant: "this is a string"
"          Character      a character constant: 'c', '\n'
"          Number         a number constant: 234, 0xff
"          Boolean        a boolean constant: TRUE, false
"          Float          a floating point constant: 2.3e10
call s:hl('String',         'yellow',    'NONE')
call s:hl('Number',         'purple',    'NONE')
call s:hl('Boolean',        'cyan',      'NONE')

call s:hl('Identifier',     'lime',      'NONE')
"         *Identifier     any variable name
"          Function       function name (also: methods for classes)

call s:hl('Statement',      'magenta',   'NONE', 'bold')
"         *Statement      any statement
"          Conditional    if, then, else, endif, switch, etc.
"          Repeat         for, do, while, etc.
"          Label          case, default, etc.
"          Operator       "sizeof", "+", "*", etc.
"          Keyword        any other keyword
"          Exception      try, catch, throw
call s:hl('Operator',       'magenta',   'NONE')
call s:hl('Exception',      'lime',      'NONE', 'bold')

call s:hl('PreProc',        'magenta',   'NONE', 'bold')
"         *PreProc        generic Preprocessor
"          Include        preprocessor #include
"          Define         preprocessor #define
"          Macro          same as Define
"          PreCondit      preprocessor #if, #else, #endif, etc.

call s:hl('Type',           'cyan',      'NONE', 'bold')
"         *Type           int, long, char, etc.
"          StorageClass   static, register, volatile, etc.
"          Structure      struct, union, enum, etc.
"          Typedef        A typedef
call s:hl('StorageClass',   'magenta',   'NONE', 'bold')

call s:hl('Special',        'orange',    'NONE')
"         *Special        any special symbol
"          SpecialChar    special character in a constant
"          Tag            you can use CTRL-] on this
"          Delimiter      character that needs attention
"          SpecialComment special things inside a comment
"          Debug          debugging statements
call s:hl('Tag',            'magenta',   'NONE', 'bold')
call s:hl('SpecialComment', 'white',     'NONE', 'bold')

call s:hl('Underlined',     'NONE',      'NONE', 'underline')
"         *Underlined     text that stands out, HTML links

call s:hl('Ignore',         'NONE',      'NONE')
"         *Ignore         left blank, hidden |hl-Ignore|

call s:hl('Error',          'magenta',   'NONE', 'bold,reverse')
"         *Error          any erroneous construct

call s:hl('Todo',           'white',     'NONE', 'bold')
"         *Todo           anything that needs extra attention; mostly the
"                         keywords TODO FIXME and XXX


" Extended highlighting
call s:hl('SpecialKey',   'orange',    'NONE')
call s:hl('NonText',      'darkgray',  'NONE')
call s:hl('StatusLine',   'white',     'darkgray',  'bold')
call s:hl('StatusLineNC', 'black',     'lightgray')
call s:hl('Visual',       'NONE',      'darkgray')
call s:hl('Directory',    'purple',    'NONE')
call s:hl('ErrorMsg',     'white',     'magenta',   'bold')
call s:hl('IncSearch',    'black',     'yellow')
call s:hl('Search',       'NONE',      'darkgray',  'underline')
call s:hl('MoreMsg',      'black',     'cyan')
call s:hl('ModeMsg',      'lime',      'blackbg')
call s:hl('LineNr',       'lightgray', 'blackbg')
call s:hl('Question',     'cyan',      'NONE',      'bold')
call s:hl('VertSplit',    'lightgray', 'darkgray')
call s:hl('Title',        'white',     'NONE',      'bold')
call s:hl('VisualNOS',    'black',     'white')
call s:hl('WarningMsg',   'black',     'orange')
call s:hl('WildMenu',     'cyan',      'blackbg')
call s:hl('Folded',       'lightgray', 'blackbg')
call s:hl('FoldColumn',   'lightgray', 'blackbg')
call s:hl('DiffAdd',      'lime',      'NONE',      'bold')
call s:hl('DiffChange',   'yellow',    'NONE',      'bold')
call s:hl('DiffDelete',   'magenta',   'NONE',      'bold')
call s:hl('DiffText',     'cyan',      'NONE',      'bold')
call s:hl('SignColumn',   'lime',      'blackbg')
call s:hl('Conceal',      'darkgray',  'NONE')
call s:hl('SpellBad',     'NONE',      'NONE',      'undercurl', 'NONE', 'magenta')
call s:hl('SpellCap',     'NONE',      'NONE',      'undercurl', 'NONE', 'cyan')
call s:hl('SpellRare',    'NONE',      'NONE',      'undercurl', 'NONE', 'white')
call s:hl('SpellLocal',   'NONE',      'NONE',      'undercurl', 'NONE', 'orange')
call s:hl('Pmenu',        'darkgray',  'white')
call s:hl('PmenuSel',     'orange',    'darkgray',  'bold')
call s:hl('PmenuSbar',    'NONE',      'lightgray')
call s:hl('PmenuThumb',   'NONE',      'darkgray')
call s:hl('TabLine',      'black',     'lightgray')
call s:hl('TabLineFill',  'lightgray', 'lightgray')
call s:hl('TabLineSel',   'white',     'darkgray',  'bold')
call s:hl('CursorColumn', 'NONE',      'darkgray')
call s:hl('CursorLine',   'NONE',      'darkgray')
call s:hl('CursorLineNr', 'lime',      'blackbg')
call s:hl('ColorColumn',  'NONE',      'darkgray')
call s:hl('Cursor',       'black',     'white')
hi! link lCursor Cursor
call s:hl('MatchParen',   'NONE',      'NONE',      'reverse,underline')


" Must be at the end due to a bug in VIM trying to figuring out automagically
" if the background set through Normal highlight group is dark or light.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark

" Additions for vim-gitgutter
call s:hl('GitGutterAdd',          'lime',    'NONE')
call s:hl('GitGutterChange',       'yellow',  'NONE')
call s:hl('GitGutterDelete',       'magenta', 'NONE')
call s:hl('GitGutterChangeDelete', 'magenta', 'NONE')
