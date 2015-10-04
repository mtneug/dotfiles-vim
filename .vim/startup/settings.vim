" Enable filetype recognition
filetype plugin indent on

" Change mapleader
let mapleader=","

" Local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*


" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Highlight line 80
set colorcolumn=80
" Copy indent from last line when starting new line.
set autoindent
set backspace=indent,eol,start
" Highlight current line
set cursorline
" Add vertical spaces to keep right and left aligned
set diffopt=filler
" Ignore whitespace changes (focus on code changes)
set diffopt+=iwhite
" Use UTF-8 without BOM which often causes trouble
set encoding=utf-8 nobomb
" Allow cursor keys in insert mode.
set esckeys
" Don’t add empty newlines at the end of files
set binary
set noeol
" Expand tabs to spaces
set expandtab
" Column to show folds
set foldcolumn=4
set foldenable
set foldlevel=2
" Sets `foldlevel` when editing a new buffer
" set foldlevelstart=2
" Markers are used to specify folds.
set foldmethod=syntax
" Allow folding single lines
set foldminlines=0
" Set max fold nesting level
set foldnestmax=3
set formatoptions=
" Format comments
set formatoptions+=c
" Continue comments by default
set formatoptions+=r
" Make comment when using o or O from comment line
set formatoptions+=o
" Format comments with gq
set formatoptions+=q
" Recognize numbered lists
set formatoptions+=n
" Use indent from 2nd line of a paragraph
set formatoptions+=2
" Don't break lines that are already long
set formatoptions+=l
" Break before 1-letter words
set formatoptions+=1
" By default add g flag to search/replace. Add g to toggle.
set gdefault
" When a buffer is brought to foreground, remember undo history and marks.
set hidden
" Increase history from 20 default to 1000
set history=1000
" Highlight searches
set hlsearch
" Ignore case of searches.
set ignorecase
" Highlight dynamically as pattern is typed.
set incsearch
" Always show status line
set laststatus=2
" Compojure
set lispwords+=defroutes
" Noir core
set lispwords+=defpartial,defpage
" Ciste core
set lispwords+=defaction,deffilter,defview,defsection
" Speclj TDD/BDD
set lispwords+=describe,it
" Enable extended regexes.
set magic
" Enable mouse in all modes.
set mouse=a
" Disable error bells.
set noerrorbells
" Only insert single space after a '.', '?' and '!' with a join command.
set nojoinspaces
" Don't reset cursor to start of line when moving around.
set nostartofline
" Do not wrap lines.
set nowrap
" Enable line numbers.
set number
" Set omni-completion method.
set ofu=syntaxcomplete#Complete
" Show all changes.
set report=0
" Show the cursor position
set ruler
" Start scrolling three lines before horizontal border of window.
set scrolloff=3
set sidescrolloff=3
" The # of spaces for indenting.
set shiftwidth=2
" Don't show the intro message when starting vim.
set shortmess=atI
" Show the current mode.
set showmode
" Always show tab bar.
set showtabline=2
" Show the (partial) command as it’s being typed
set showcmd
" Ignore 'ignorecase' if search patter contains uppercase characters.
set smartcase
" At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set smarttab
" Tab key results in 2 spaces
set softtabstop=2
" New window goes below
set splitbelow
" New windows goes right
set splitright
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
" Show the filename in the window titlebar.
set title
" Optimize for fast terminal connections - Send more characters at a given time.
set ttyfast
" Set mouse type to xterm.
set ttymouse=xterm
" Persistent Undo.
set undofile
" Use visual bell instead of audible bell (annnnnoying)
set visualbell
" Character for CLI expansion (TAB-completion).
set wildchar=<TAB>
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*
" Hitting TAB in command mode will show possible completions above command line.
set wildmenu
" Hitting TAB in command mode will show possible completions above command line.
set wildmode=longest:full,list:full
" Complete only until point of ambiguity.
" set wildmode=list:longest
" Allow splits to be reduced to a single line.
set winminheight=0
" Searches wrap around end of file
set wrapscan
" activate spell checking
set spell spelllang=en_us

" Use relative line numbers
if exists("&relativenumber")
  set relativenumber
  au BufReadPost * set relativenumber
endif

" Show “invisible” characters
set list
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-

" NERDTree (File Explorer)
let NERDTreeChDirMode     = 1 " change CWD when init NERD tree
let NERDTreeBookmarksFile = "~/.vim/sessions/NERDTreeBookmarks"
let NERDTreeShowHidden    = 1 " show hidden files
let NERDTreeMinimalUI     = 1 " deaktivates 'Press ? for help'
let NERDTreeCasadeOpenSingleChildDir    = 1 " open directories recursively if only an oher directory is present
let g:nerdtree_tabs_open_on_gui_startup = 0 " don't open on startup
map <C-b> <plug>NERDTreeTabsToggle<CR>

" NERDCommenter
"let g:NERDSpaceDelims        = 1
"let g:NERDCompactSexyComs    = 1

" YouCompleteMe
let g:ycm_complete_in_comments = 1 " enables completition in comments
let g:ycm_complete_in_strings  = 1 " enables completition in strings
let g:ycm_add_preview_to_completeopt = 1 " show more information in a window
let g:ycm_autoclose_preview_window_after_completion = 1 " close the window after completition

" Syntastic (Linting)
let g:syntastic_check_on_open        = 1   " check on opening
let g:syntastic_aggregate_errors     = 1   " run all linter and aggregate the errors
let g:syntastic_auto_loc_list        = 1   " open and close location list automatically
let g:syntastic_error_symbol         = '✗' " error symbol
let g:syntastic_style_error_symbol   = '✗' " error style symbol
let g:syntastic_warning_symbol       = '!' " warning symbol
let g:syntastic_style_warning_symbol = '!' " warning style symbol
let g:syntastic_stl_format           = '[%E{Err: %fe #%e}%B{, }%W{Warn: %fw #%w}]' " status line format

" ag.vim (Searching)
let g:agprg = "ag --column --smart-case" " command to execute

" delimitMate
let g:delimitMate_balance_matchpairs = 1 " match pairs
let g:delimitMate_expand_cr          = 2 " expand <CR>
let g:delimitMate_expand_space       = 1 " expand <Space>
au FileType python let b:delimitMate_nesting_quotes = ['"']

" Signify (VCS)
let g:signify_option_vcs_list = ['git'] " use only git

" Sessions
let g:session_verbose_messages  = 0     " don't print a verbose message
let g:session_autosave_periodic = 1     " save every minute
let g:session_autoload          = 'no'  " automatically load the default session on startup
"let g:session_default_to_last  = 1     " the last sesstion will be the default
"let g:session_autosave         = 'yes' " automatically save session

" UltiSnips
function! g:UltiSnips_Complete()
  call UltiSnips_ExpandSnippet()
  if g:ulti_expand_res == 0
    if pumvisible()
      return "\<C-n>"
    else
      call UltiSnips_JumpForwards()
      if g:ulti_jump_forwards_res == 0
        return "\<TAB>"
      endif
    endif
  endif
  return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"

let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"

"let g:UltiSnipsExpandTrigger      = "<C-m>"
"let g:UltiSnipsJumpForwardTrigger = "<Tab>"
"let g:UltiSnipsJumpBackwardTrigger= "<Tab>"

" CtrlP
let g:ctrlp_show_hidden = 1 " show hidden files
let g:ctrlp_follow_symlinks = 1 " follow symlinks
