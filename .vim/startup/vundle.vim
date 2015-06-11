" Enabled later, after vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" custom Bundles

" Theme
Bundle 'chriskempson/base16-vim'

" File Explorer
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'

" Editorconfiguration for vim
Bundle 'editorconfig/editorconfig-vim'

" Linter for vim
Bundle 'scrooloose/syntastic'

" CtrlP fuzzy file finder
Bundle 'kien/ctrlp.vim'

" The Silver Searcher integration
Bundle 'rking/ag.vim'

" Snippets
Bundle 'SirVer/ultisnips'

" fuzzy-search code completion engine
"Bundle 'Valloric/YouCompleteMe'

" close quotes and other things
Bundle 'Raimondi/delimitMate'

" mulible cursors
Bundle 'terryma/vim-multiple-cursors'

" VCS infos
Bundle 'mhinz/vim-signify'

" Save Sessions
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-session'

" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

if ! has('gui_running')
  set ttimeoutlen=10
  augroup FastEscape
    autocmd!
    au InsertEnter * set timeoutlen=0
    au InsertLeave * set timeoutlen=1000
  augroup END
endif
