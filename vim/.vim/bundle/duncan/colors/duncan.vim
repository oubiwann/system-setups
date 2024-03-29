" Duncan's Vim Color Scheme
" =========================
"
" author:   Duncan McGreggor <duncan@adytum.us>

set background=dark

hi SpecialKey      term=bold ctermfg=0 ctermbg=1 guifg=black guibg=red
hi NonText         term=bold cterm=bold ctermfg=4 gui=bold guifg=Blue
hi Directory       term=bold ctermfg=4 guifg=Blue
hi ErrorMsg        term=standout cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red
hi IncSearch       term=reverse cterm=reverse gui=reverse
hi Search          term=reverse ctermfg=0 ctermbg=3 guibg=Yellow
hi MoreMsg         term=bold ctermfg=2 gui=bold guifg=SeaGreen
hi ModeMsg         term=bold cterm=bold gui=bold
hi LineNr          term=standout ctermfg=1 guifg=Red
hi Question        term=standout ctermfg=2 gui=bold guifg=SeaGreen
hi StatusLine      term=bold,reverse cterm=bold,reverse gui=bold,reverse
hi StatusLineNC    term=reverse cterm=reverse gui=reverse
hi VertSplit       term=reverse cterm=reverse gui=reverse
hi Title           term=bold ctermfg=5 gui=bold guifg=Magenta
hi Visual          term=reverse cterm=reverse guibg=LightGrey
hi VisualNOS       term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg      term=standout ctermfg=1 guifg=Red
hi WildMenu        term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Yellow
hi Folded          term=standout cterm=bold ctermfg=4 ctermbg=0 guifg=DarkBlue guibg=LightGrey
hi FoldColumn      term=standout ctermfg=4 ctermbg=7 guifg=DarkBlue guibg=Grey
hi DiffAdd         term=bold ctermbg=4 guibg=LightBlue
hi DiffChange      term=bold ctermbg=5 guibg=LightMagenta
hi DiffDelete      term=bold cterm=bold ctermfg=4 ctermbg=6 gui=bold guifg=Blue guibg=LightCyan
hi DiffText        term=reverse cterm=bold ctermbg=1 gui=bold guibg=Red
hi SignColumn      term=standout ctermfg=4 ctermbg=7 guifg=DarkBlue guibg=Grey
hi SpellBad        term=reverse ctermbg=1 gui=undercurl guisp=Red
hi SpellCap        term=reverse ctermbg=4 gui=undercurl guisp=Blue
hi SpellRare       term=reverse ctermbg=5 gui=undercurl guisp=Magenta
hi SpellLocal      term=underline ctermbg=6 gui=undercurl guisp=DarkCyan
hi Pmenu           ctermbg=5 guibg=LightMagenta
hi PmenuSel        ctermbg=7 guibg=Grey
hi PmenuSbar       ctermbg=7 guibg=Grey
hi PmenuThumb      cterm=reverse gui=reverse
hi TabLine         term=underline cterm=underline ctermfg=0 ctermbg=7 gui=underline guibg=LightGrey
hi TabLineSel      term=bold cterm=bold gui=bold
hi TabLineFill     term=reverse cterm=reverse gui=reverse
hi CursorColumn    term=reverse cterm=bold ctermbg=7 guibg=#222222
hi CursorLine      term=underline cterm=bold guibg=#222222
hi Cursor          guifg=bg guibg=fg
hi lCursor         guifg=bg guibg=fg
hi MatchParen      term=reverse cterm=bold ctermfg=1 ctermbg=0 guifg=black guibg=red
hi Comment         term=bold cterm=bold ctermfg=6 guifg=Blue
hi Constant        term=underline ctermfg=1 guifg=Magenta
hi Special         term=bold ctermfg=5 guifg=SlateBlue
hi Identifier      term=underline ctermfg=6 guifg=DarkCyan
hi Statement       term=bold ctermfg=3 gui=bold guifg=Brown
hi PreProc         term=underline ctermfg=5 guifg=Purple
hi Type            term=underline ctermfg=2 gui=bold guifg=SeaGreen
hi Underlined      term=underline cterm=underline ctermfg=5 gui=underline guifg=SlateBlue
hi Ignore          cterm=bold ctermfg=7 guifg=bg
hi Error           term=reverse cterm=bold ctermfg=7 ctermbg=1 guifg=White guibg=Red
hi Todo            term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow
hi LongLines       cterm=bold ctermfg=3 ctermbg=0 guifg=yellow guibg=black
hi User1           gui=bold guifg=cyan guibg=black
hi User2           gui=bold guifg=black guibg=red
hi String          guifg=#ed9d13

" custom colors
hi Normal       guibg=black guifg=#00ff00
hi Folded       guifg=#009933 guibg=#333333
hi CursorColumn cterm=bold ctermbg=8 guibg=#222222
hi CursorLine   cterm=bold ctermbg=8 guibg=#222222
hi Folded       ctermfg=LightBlue ctermbg=Black guifg=LightBlue
hi MatchParen   cterm=bold ctermfg=red ctermbg=black
hi LineNr       term=standout ctermfg=1 guifg=red guibg=black
hi Comment      ctermfg=cyan guifg=LightBlue
hi Statement    term=bold ctermfg=3 gui=bold guifg=yellow
hi Directory    term=bold ctermfg=yellow guifg=cyan
hi String       guifg=LightRed
hi Identifier   term=underline cterm=bold ctermfg=6 guifg=cyan
hi StatusLine   term=bold,reverse cterm=bold,reverse guibg=yellow guifg=black gui=bold
hi StatusLineNC term=reverse cterm=reverse guibg=green guifg=black gui=bold
