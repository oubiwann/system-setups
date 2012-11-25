set t_Co=256
"set t_AB=^[[48;5;%dm
"set t_AF=^[[38;5;%dm
call pathogen#infect()
" plugins
nnoremap <C-U><C-U> :GundoToggle<CR>
nnoremap <C-T><C-V> :VTreeExplore<CR>
nnoremap <C-T><C-N> :NERDTreeToggle<CR>
nnoremap <F2> :set modifiable<bar>:w!<CR>
autocmd BufReadPost fugitive://* set bufhidden=delete
let g:ConqueTerm_TERM = 'xterm-color'
nnoremap <C-P><C-B> :ConqueTerm bpython<CR>
nnoremap <C-P><C-I> :ConqueTerm ipython<CR>
nnoremap <C-B><C-S> :ConqueTerm bash<CR>

"set nocompatible
au! BufWritePost .vimrc source %
setlocal spell spelllang=en_us
set nospell
" tabs and backspaces
set wildignore=*.swp,*.swo,*.pyc,*.pyo
set wildmenu
set winfixwidth
set winfixheight
set encoding=utf-8
set backspace=indent,eol,start
set expandtab shiftwidth=4
set tabstop=4
set scrolloff=3     " always keep cursor in the middle of the page
set ruler           " show the cursor position all the time
"set ignorecase      " ignore case when searching
set noignorecase   " don't ignore case
set title           " show title in console title bar
set ttyfast         " smoother changes
"set paste
"set noautoindent    " set autoindent off
set autoindent    " set autoindent on
syntax on
filetype plugin on
filetype on
set textwidth=79
" set up line numbers
set number
nmap <C-N><C-N> :set invnumber <CR>
nmap <C-D><C-D> :set filetype=todo <CR>
" highlight text that is longer than the text width
"highlight LongLines ctermfg=black guifg=black ctermbg=red guibg=red
highlight LongLines ctermfg=yellow guifg=yellow ctermbg=black guibg=black
nmap <C-L><C-S> highlight LongLines ctermfg=black guifg=black ctermbg=red guibg=red
nmap <C-L><C-L> highlight LongLines ctermfg=green guifg=green ctermbg=black guibg=black
au BufEnter * if &textwidth > 0 | exec 'match LongLines /\%>' . &textwidth .  'v.\+/' | endif
" remember where we were in the file last time we closed it
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
set completeopt+=menu
au Syntax python set listchars=tab:\|\ | set list
" This will let you _very_easy_ indent/unindent groups of code - just " select
" lines using Visual and press " Shift+> or Shift+<
vnoremap < <gv
vnoremap > >gv
" highlighting and coloring
":python_hilight_all 1
"let python_highlight_all = 1
" set highlighting for non-standard files
au BufRead,BufNewFile *.tac set filetype=python
au BufRead,BufNewFile *.xhtml set filetype=html
" custom colors
"hi Folded ctermfg=LightBlue ctermbg=Black
"hi CursorColumn cterm=bold guibg=#222222
"hi CursorLine cterm=bold guibg=#222222
"hi MatchParen cterm=bold ctermfg=red ctermbg=black
"hi LineNr cterm=None ctermfg=red ctermbg=black
hi LineNr term=standout ctermfg=1 guifg=Red
hi Comment ctermfg=cyan
" Setup Line Folding
":set foldmethod=indent
":hi Folded ctermfg=0 ctermbg=2
autocmd FileType gitcommit DiffGitCached | wincmd L | wincmd p
set history=200
"vnoremap <C-s> <C-C>`<v`>s<Space><Esc>mq:e ispell.tmp<CR>i<C-R>"<Esc>:w<CR>:! xterm -bg ivory -fn 10x20 -e ispell %<CR><CR>:e %<CR><CR>ggVG<Esc>`<v`>s<Esc>:bwipeout!<CR>:!rm ispell.tmp*<CR>`q"_s<C-R>"<Esc>
" remove trailing white space upon write
nmap <C-N><C-W> :%s/\s\+$//<CR>
" show trailing white space
highlight SpecialKey ctermbg=red ctermfg=black guibg=red guifg=black
set list
set listchars=trail:\ ,tab:>-,nbsp:%
" hex-editor mode
map <Leader>hon :%!xxd<CR>
map <Leader>hof :%!xxd -r<CR>
" give a visual cue for cursor location
set cursorline
if has("gui_running")
    set cursorcolumn
endif
" cursor settings
set guicursor=n-v-c:block-Cursor/lCursor-blinkon0
set guicursor+=ve:ver35-Cursor-blinkon0
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor/lCursor-blinkwait150-blinkoff400-blinkon800 " slow blink during inserts
set guicursor+=r-cr:hor20-Cursor/lCursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175
" syntax hi-lighting stuff
autocmd BufRead *.zcml set filetype=xml
autocmd BufRead *.props set filetype=cfg
autocmd BufRead *.txt set filetype=doctest
" some Python syntax error highlights
"syn match pythonError "^\s*def\s\+\w\+(.*)\s*$" display
"syn match pythonError "^\s*class\s\+\w\+(.*)\s*$" display
"syn match pythonError "^\s*for\s.*[^:]$" display
"syn match pythonError "^\s*except\s*$" display
"syn match pythonError "^\s*finally\s*$" display
"syn match pythonError "^\s*try\s*$" display
"syn match pythonError "^\s*else\s*$" display
"syn match pythonError "^\s*else\s*[^:].*" display
"syn match pythonError "^\s*if\s.*[^\:]$" display
"syn match pythonError "^\s*except\s.*[^\:]$" display
"syn match pythonError "[;]$" display
"syn keyword pythonError         do
" a Python 'make' command for checking syntax errors
autocmd BufRead *.py set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
autocmd BufRead *.py set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
" evaluate highlighted Python code
"python << EOL
"import vim
"def EvaluateCurrentRange():
"    eval(compile('\n'.join(vim.current.range),'','exec'),globals())
"EOL
"map <C-h> :py EvaluateCurrentRange()
" add/remove breakpoints in Python code
"python << EOF
"def SetBreakpoint():
"    import re
"    nLine = int( vim.eval( 'line(".")'))
"
"    strLine = vim.current.line
"    strWhite = re.search( '^(\s*)', strLine).group(1)
"
"    vim.current.buffer.append(
"       "%(space)spdb.set_trace() # XXX breakpoint" %
"         {'space':strWhite}, nLine - 1)
"
"    for strLine in vim.current.buffer:
"        if strLine == "import pdb":
"            break
"    else:
"        vim.current.buffer.append( 'import pdb', 0)
"        vim.command( 'normal j1')
"
"vim.command( 'map <f7> :py SetBreakpoint()<cr>')

"def RemoveBreakpoints():
"    import re
"
"    nCurrentLine = int( vim.eval( 'line(".")'))
"
"    nLines = []
"    nLine = 1
"    for strLine in vim.current.buffer:
"        if strLine == 'import pdb' or strLine.lstrip()[:15] == 'pdb.set_trace()':
"            nLines.append( nLine)
"        nLine += 1
"
"    nLines.reverse()
"
"    for nLine in nLines:
"        vim.command( 'normal %dG' % nLine)
"        vim.command( 'normal dd')
"        if nLine < nCurrentLine:
"            nCurrentLine -= 1
"
"    vim.command( 'normal %dG' % nCurrentLine)
"
"vim.command( 'map <s-f7> :py RemoveBreakpoints()<cr>')
"EOF
" run the current Python file
map <f8> :!python % <CR>
" run the entire test suite
map <s-f8> :!./test -vcp1 % <CR>

"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
"set statusline=%#ErrorMsg#%{fugitive#statusline()}%#StatusLine#
"set statusline=%#StatusLineNC#\ Git\ %#ErrorMsg#\ %{fugitive#statusline()}\ %#StatusLine#
color duncan
