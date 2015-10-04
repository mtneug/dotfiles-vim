" Earthsong

" GUI color definitions
let s:gui_very_light_brown = "e4d1b9"
let s:gui_light_brown      = "988e81"
let s:gui_brown            = "7b7265"
let s:gui_dark_brown       = "514b43"
let s:gui_very_dark_brown  = "35312c"

let s:gui_green            = "94c464"
let s:gui_dark_green       = "5ea163"
let s:gui_red              = "db784d"
let s:gui_yellow           = "f6b855"
let s:gui_blue             = "81ADDB"
let s:gui_magenta          = "DB6B91"
let s:gui_cyan             = "9ADBD1"

" Terminal color definitions
let s:cterm_very_light_brown = "" " normal foreground color
let s:cterm_light_brown      = "07"
let s:cterm_brown            = "08"
let s:cterm_dark_brown       = "238"
let s:cterm_very_dark_brown  = "00"

let s:cterm_green            = "02"
let s:cterm_dark_green       = "71"
let s:cterm_red              = "01"
let s:cterm_yellow           = "03"
let s:cterm_blue             = "04"
let s:cterm_magenta          = "05"
let s:cterm_cyan             = "06"

" Theme setup
hi clear
syntax reset
let g:colors_name = "earthsong"

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Vim editor colors
call <sid>hi("Normal",        "none",           "",                    "none",             "",                      "")
call <sid>hi("Bold",          "",               "",                    "",                 "",                      "bold")
call <sid>hi("Italic",        "",               "",                    "",                 "",                      "none")
call <sid>hi("NonText",       s:gui_dark_brown, "",                    s:cterm_dark_brown, "",                      "")
call <sid>hi("SpecialKey",    s:gui_dark_brown, "",                    s:cterm_dark_brown, "",                      "")
call <sid>hi("TooLong",       s:gui_red,        "",                    s:cterm_red,        "",                      "")
call <sid>hi("Conceal",       s:gui_blue,       s:gui_very_dark_brown, s:cterm_blue,       s:cterm_very_dark_brown, "")

call <sid>hi("ErrorMsg",      s:gui_red,        s:gui_very_dark_brown, s:cterm_red,        s:cterm_very_dark_brown, "")
call <sid>hi("WarningMsg",    s:gui_yellow,     s:gui_very_dark_brown, s:cterm_yellow,     s:cterm_very_dark_brown, "")
call <sid>hi("ModeMsg",       s:gui_green,      "",                    s:cterm_green,      "",                      "")
call <sid>hi("MoreMsg",       s:gui_green,      "",                    s:cterm_green,      "",                      "")
call <sid>hi("Question",      s:gui_dark_green, "",                    s:cterm_dark_green, "",                      "")

call <sid>hi("FoldColumn",    "",                    s:gui_very_dark_brown, "",                      s:cterm_very_dark_brown, "")
call <sid>hi("Folded",        "none",                s:gui_brown,           "none",                  s:cterm_brown,           "")
call <sid>hi("IncSearch",     s:gui_very_dark_brown, s:gui_magenta,         s:cterm_very_dark_brown, s:cterm_magenta,         "none")
call <sid>hi("Search",        s:gui_very_dark_brown, s:gui_magenta,         s:cterm_very_dark_brown, s:cterm_magenta,         "")
call <sid>hi("Directory",     s:gui_green,           "",                    s:cterm_green,           "",                      "")
call <sid>hi("MatchParen",    "",                    s:gui_brown,           "",                      s:cterm_brown,           "")
call <sid>hi("WildMenu",      s:gui_dark_brown,      "",                    s:cterm_dark_brown,      "",                      "")
call <sid>hi("Title",         s:gui_dark_green,      "",                    s:cterm_dark_green,      "",                      "none")
call <sid>hi("ColorColumn",   "",                    s:gui_dark_brown,      "",                      s:cterm_dark_brown,      "none")
call <sid>hi("SignColumn",    "",                    s:gui_very_dark_brown, "",                      s:cterm_very_dark_brown, "none")
call <sid>hi("StatusLine",    "",                    s:gui_brown,           "",                      s:cterm_brown,           "none")
call <sid>hi("StatusLineNC",  "",                    s:gui_very_dark_brown, "",                      s:cterm_very_dark_brown, "none")
call <sid>hi("VertSplit",     s:gui_brown,           s:gui_brown,           s:cterm_brown,           s:cterm_brown,           "none")
call <sid>hi("Cursor",        s:gui_very_dark_brown, s:gui_very_dark_brown, s:cterm_very_dark_brown, s:cterm_very_dark_brown, "")
call <sid>hi("CursorColumn",  "",                    s:gui_dark_brown,      "",                      s:cterm_dark_brown,      "none")
call <sid>hi("CursorLine",    "",                    s:gui_dark_brown,      "",                      s:cterm_dark_brown,      "none")
call <sid>hi("CursorLineNr",  s:gui_yellow,          s:gui_dark_brown,      s:cterm_yellow,          s:cterm_dark_brown,      "")
call <sid>hi("LineNr",        s:gui_dark_brown,      s:gui_very_dark_brown, s:cterm_dark_brown,      s:cterm_very_dark_brown, "")
call <sid>hi("Visual",        "",                    s:gui_dark_brown,      "",                      s:cterm_dark_brown,      "")
call <sid>hi("VisualNOS",     s:gui_red,             "",                    s:cterm_red,             "",                      "")
call <sid>hi("PMenu",         s:gui_very_dark_brown, s:gui_brown,           s:cterm_very_dark_brown, s:cterm_brown,           "none")
call <sid>hi("PMenuSel",      s:gui_very_dark_brown, s:gui_yellow,          s:cterm_very_dark_brown, s:cterm_yellow,          "")
call <sid>hi("TabLine",       s:gui_very_dark_brown, s:gui_brown,           s:cterm_very_dark_brown, s:cterm_brown,           "none")
call <sid>hi("TabLineFill",   s:gui_very_dark_brown, s:gui_brown,           s:cterm_very_dark_brown, s:cterm_brown,           "none")
call <sid>hi("TabLineSel",    s:gui_very_dark_brown, s:gui_yellow,          s:cterm_very_dark_brown, s:cterm_yellow,          "none")

" Standard syntax highlighting
call <sid>hi("Comment",      s:gui_brown, "", s:cterm_brown, "", "")

call <sid>hi("Constant",     s:gui_red,    "", s:cterm_red,    "", "")
call <sid>hi("String",       s:gui_yellow, "", s:cterm_yellow, "", "")
call <sid>hi("Character",    s:gui_red,    "", s:cterm_red,    "", "")
call <sid>hi("Number",       s:gui_red,    "", s:cterm_red,    "", "")
call <sid>hi("Float",        s:gui_red,    "", s:cterm_red,    "", "")
call <sid>hi("Boolean",      s:gui_red,    "", s:cterm_red,    "", "")

call <sid>hi("Identifier",   s:gui_green, "", s:cterm_green, "", "none")
call <sid>hi("Function",     s:gui_green, "", s:cterm_green, "", "")

call <sid>hi("Statement",    "none",    "", "none",      "", "")
call <sid>hi("Conditional",  s:gui_red, "", s:cterm_red, "", "")
call <sid>hi("Repeat",       s:gui_red, "", s:cterm_red, "", "")
call <sid>hi("Label",        s:gui_red, "", s:cterm_red, "", "")
call <sid>hi("Operator",     s:gui_red, "", s:cterm_red, "", "none")
call <sid>hi("Keyword",      s:gui_red, "", s:cterm_red, "", "")
call <sid>hi("Exception",    s:gui_red, "", s:cterm_red, "", "")

call <sid>hi("PreProc",      s:gui_red, "", s:cterm_red, "", "")
call <sid>hi("Define",       s:gui_red, "", s:cterm_red, "", "none")
call <sid>hi("Include",      s:gui_red, "", s:cterm_red, "", "")
call <sid>hi("Macro",        s:gui_red, "", s:cterm_red, "", "")
call <sid>hi("PreCondit",    s:gui_red, "", s:cterm_red, "", "")

call <sid>hi("Type",         s:gui_green, "", s:cterm_green, "", "none")
call <sid>hi("StorageClass", s:gui_red,   "", s:cterm_red,   "", "")
call <sid>hi("Structure",    s:gui_red,   "", s:cterm_red,   "", "")
call <sid>hi("Typedef",      s:gui_red,   "", s:cterm_red,   "", "")

call <sid>hi("Special",        "none",     "", "none",       "", "")
call <sid>hi("SpecialChar",    s:gui_blue, "", s:cterm_blue, "", "")
call <sid>hi("Tag",            s:gui_blue, "", s:cterm_blue, "", "")
call <sid>hi("Delimiter",      s:gui_blue, "", s:cterm_blue, "", "")
call <sid>hi("SpecialComment", s:gui_blue, "", s:cterm_blue, "", "")
call <sid>hi("Debug",          s:gui_cyan, "", s:cterm_cyan, "", "")

call <sid>hi("Underlined", s:gui_blue, "", s:cterm_blue, "", "")

call <sid>hi("Error", s:gui_red, s:gui_very_dark_brown, s:cterm_red, s:cterm_very_dark_brown, "")

call <sid>hi("Todo", s:gui_green, s:gui_very_dark_brown, s:cterm_green, s:cterm_very_dark_brown, "")

" CSS highlighting
hi link cssBraces Normal
hi link cssProp   Normal

call <sid>hi("cssTagName",      s:gui_red, "", s:cterm_red, "", "")
call <sid>hi("cssClassName",    s:gui_dark_green, "", s:cterm_dark_green, "", "")
call <sid>hi("cssClassNameDot", s:gui_dark_green, "", s:cterm_dark_green, "", "")
call <sid>hi("cssIdentifier",   s:gui_dark_green, "", s:cterm_dark_green, "", "")

" Diff highlighting
call <sid>hi("diffFile",    s:gui_yellow,  "", s:cterm_yellow,  "", "")
call <sid>hi("diffRemoved", s:gui_red,     "", s:cterm_red,     "", "")
call <sid>hi("diffChanged", s:gui_blue,    "", s:cterm_blue,    "", "")
call <sid>hi("diffAdded",   s:gui_green,   "", s:cterm_green,   "", "")
call <sid>hi("diffLine",    s:gui_magenta, "", s:cterm_magenta, "", "")
call <sid>hi("diffSubname", s:gui_cyan,    "", s:cterm_cyan,    "", "")

" Git highlighting
hi link gitcommitOverflow Error
call <sid>hi("gitCommitSummary", s:gui_green, "", s:cterm_green, "", "")

" HTML highlighting
"call <sid>hi("htmlBold",    s:gui_yellow, "", s:cterm_yellow, "", "")
"call <sid>hi("htmlItalic",  s:gui_magenta, "", s:cterm0E, "", "")
"call <sid>hi("htmlEndTag",  s:gui05, "", s:cterm05, "", "")
"call <sid>hi("htmlTag",     s:gui05, "", s:cterm05, "", "")

" JavaScript highlighting
"call <sid>hi("javaScript",        s:gui05, "", s:cterm05, "", "")
"call <sid>hi("javaScriptBraces",  s:gui05, "", s:cterm05, "", "")
"call <sid>hi("javaScriptNumber",  s:gui_orange, "", s:cterm_light_red, "", "")

" Markdown highlighting
"call <sid>hi("markdownCode",              s:gui_green, "", s:cterm0B, "", "")
"call <sid>hi("markdownError",             s:gui05, s:gui_black, s:cterm05, s:cterm_black, "")
"call <sid>hi("markdownCodeBlock",         s:gui_green, "", s:cterm0B, "", "")
"call <sid>hi("markdownHeadingDelimiter",  s:gui_blue, "", s:cterm0D, "", "")

" Python highlighting
"call <sid>hi("pythonOperator",  s:gui_magenta, "", s:cterm0E, "", "")
"call <sid>hi("pythonRepeat",    s:gui_magenta, "", s:cterm0E, "", "")

" Ruby highlighting
"call <sid>hi("rubyAttribute",               s:gui_blue, "", s:cterm0D, "", "")
"call <sid>hi("rubyConstant",                s:gui_yellow, "", s:cterm_yellow, "", "")
"call <sid>hi("rubyInterpolation",           s:gui_green, "", s:cterm0B, "", "")
"call <sid>hi("rubyInterpolationDelimiter",  s:gui_brown, "", s:cterm0F, "", "")
"call <sid>hi("rubyRegexp",                  s:gui_cyan, "", s:cterm0C, "", "")
"call <sid>hi("rubySymbol",                  s:gui_green, "", s:cterm0B, "", "")
"call <sid>hi("rubyStringDelimiter",         s:gui_green, "", s:cterm0B, "", "")

" SASS highlighting
"call <sid>hi("sassidChar",     s:gui_red, "", s:cterm_red, "", "")
"call <sid>hi("sassClassChar",  s:gui_orange, "", s:cterm_light_red, "", "")
"call <sid>hi("sassInclude",    s:gui_magenta, "", s:cterm0E, "", "")
"call <sid>hi("sassMixing",     s:gui_magenta, "", s:cterm0E, "", "")
"call <sid>hi("sassMixinName",  s:gui_blue, "", s:cterm0D, "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash", s:gui_brown, "", s:cterm_brown, "", "")
call <sid>hi("NERDTreeExecFile", s:gui_red,   "", s:cterm_red,   "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",    s:gui_green,  s:gui_very_dark_brown, s:cterm_green,  s:cterm_very_dark_brown, "")
call <sid>hi("SignifySignChange", s:gui_blue, s:gui_very_dark_brown, s:cterm_blue, s:cterm_very_dark_brown, "")
call <sid>hi("SignifySignDelete", s:gui_red,    s:gui_very_dark_brown, s:cterm_red,    s:cterm_very_dark_brown, "")

" GitGutter highlighting
"call <sid>hi("GitGutterAdd",     s:gui_green, s:gui01, s:cterm0B, s:cterm01, "")
"call <sid>hi("GitGutterChange",  s:gui_blue, s:gui01, s:cterm0D, s:cterm01, "")
"call <sid>hi("GitGutterDelete",  s:gui_red, s:gui01, s:cterm_red, s:cterm01, "")
"call <sid>hi("GitGutterChangeDelete",  s:gui_magenta, s:gui01, s:cterm0E, s:cterm01, "")

" Syntastic
call <sid>hi("SyntasticWarningSign", s:gui_yellow, "",               s:cterm_yellow, "",                 "bold")
call <sid>hi("SyntasticError",       "",           s:gui_dark_brown, "",             s:cterm_dark_brown, "")
call <sid>hi("SyntasticWarning",     "",           s:gui_dark_brown, "",             s:cterm_dark_brown, "")

" Spelling highlighting
call <sid>hi("SpellBad",   s:gui_red, s:gui_dark_brown, s:cterm_red, s:cterm_dark_brown, "undercurl")
call <sid>hi("SpellLocal", s:gui_red, s:gui_dark_brown, s:cterm_red, s:cterm_dark_brown, "undercurl")
call <sid>hi("SpellCap",   s:gui_red, s:gui_dark_brown, s:cterm_red, s:cterm_dark_brown, "undercurl")
call <sid>hi("SpellRare",  s:gui_red, s:gui_dark_brown, s:cterm_red, s:cterm_dark_brown, "undercurl")

" Remove variables and functions
delf <sid>hi
unlet s:gui_very_light_brown s:gui_light_brown s:gui_brown s:gui_dark_brown s:gui_very_dark_brown s:gui_green s:gui_dark_green s:gui_red s:gui_yellow s:gui_blue s:gui_magenta s:gui_cyan
unlet s:cterm_very_light_brown s:cterm_light_brown s:cterm_brown s:cterm_dark_brown s:cterm_very_dark_brown s:cterm_green s:cterm_dark_green s:cterm_red s:cterm_yellow s:cterm_blue s:cterm_magenta s:cterm_cyan
