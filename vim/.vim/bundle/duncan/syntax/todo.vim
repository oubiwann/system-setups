" Vim syntax file
" Language: TODO
" Author:   Matthew Urry
" Created:  Thu 16 Apr 2009 10:18:10 AM BST
" Modified: Thu 16 Apr 2009 03:29:34 PM BST

if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn match tododone /DONE/
syn match todoinprogress /INPROGRESS/
syn match todoblocked /BLOCKED/
syn match todopostponed /POSTPONED/
syn match todowontdo /WONTDO/
syn match todotodo /TODO/
syn match todotoday /#today/
syn match todo1on1 /#1on1/
syn match tododate /\d\{2}\/\d\{2}\/\d\{2}/
syn region done start=/\*\*DONE/ end=/\*\*/
syn region inprogress start=/\*\*INPROGRESS/ end=/\*\*/
syn region matttodo start=/\*\*TODO/ end=/\*\*/
syn region majorpoint start=/==>/ end=/-->/me=s-3 contains=ALL
syn match minorpoint /-->/
syn region todomodified start=/Modified:/ end=/$/

if !exists("did_todo_syntax_inits")
    let did_todo_syntax_inits = 1
    "
    hi link tododone tDone
    hi link done tDone
    hi default tDone ctermfg=Black guifg=Black ctermbg=DarkGreen guibg=DarkGreen
    "
    hi link todoblocked tBlocked
    hi link blocked tBlocked
    hi default tBlocked ctermfg=Red guifg=Red
    "
    hi link todopostponed tPostponed
    hi link postponed tPostponed
    hi default tPostponed ctermfg=Cyan guifg=Cyan
    "
    hi link todowontdo tWontdo
    hi link wontdo tWontdo
    hi default tWontdo ctermfg=Magenta guifg=Magenta
    "
    hi link todoinprogress tProgress
    hi link inprogress tProgress
    hi default tProgress ctermfg=DarkYellow guifg=DarkYellow
    "
    hi link todotodo tTodo
    hi link matttodo tTodo
    hi default tTodo ctermfg=White ctermbg=Red guifg=White guibg=Red
    "
    hi link todotoday tToday
    hi default tToday ctermfg=Red ctermbg=Yellow guifg=Red guibg=Yellow
    "
    hi link todo1on1 t1On1
    hi default t1On1 ctermfg=Black ctermbg=Magenta guifg=Black guibg=Magenta
    "
    hi link majorpoint tMajor
    hi default tMajor ctermfg=DarkMagenta guifg=DarkMagenta
    hi link minorpoint tMinor
    hi default tMinor ctermfg=DarkBlue guifg=DarkBlue
    hi link tododate tdate
    hi link todomodified tdate
    hi default tdate ctermfg=DarkRed guifg=DarkRed

endif

let b:current_syntax="todo"
