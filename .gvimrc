" guioptions
set guioptions+=c " use console insted of dialogs
set guioptions-=m " don't show the menu bar
set guioptions-=t " don't show the toolbar
set guioptions-=T " don't show the toolbar
set guioptions-=r " don't show the right scrollbar
set guioptions-=R " don't show the right scrollbar
set guioptions-=l " don't show the left scrollbar
set guioptions-=L " don't show the left scrollbar

" enable balloon if can
if has("balloon_eval")
  set ballooneval
endif

" set the cursor
set guicursor=a:ver10-blinkwait500-blinkon500-blinkoff550,o:hor15

" set font
set guifont=Monaco\ for\ Powerline:h16

if has("mac")
  set antialias
  " show syntax definitions in the menu
  let do_syntax_sel_menu = 1|runtime! synmenu.vim|aunmenu &Syntax.&Show\ filetypes\ in\ menu
endif
