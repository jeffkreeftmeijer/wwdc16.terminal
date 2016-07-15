highlight SpecialKey     guifg=#716EB1
highlight TermCursor     gui=reverse
highlight NonText        guifg=#B1AEF1
highlight Directory      guifg=#716EB1
highlight ErrorMsg       guifg=#FFFFFF guibg=#D2242E
highlight IncSearch      gui=reverse
highlight Search         guifg=NONE guibg=#FFB98B
highlight MoreMsg        guifg=#84BD5C
highlight ModeMsg        gui=bold
highlight CursorLineNr   guifg=#C9794B
highlight Question       guifg=#84BD5C
highlight StatusLine     gui=bold,reverse
highlight StatusLineNC   gui=reverse
highlight VertSplit      gui=reverse
highlight Title          guifg=#A52281
highlight WarningMsg     guifg=#D2242E
highlight WildMenu       guifg=#292C36 guibg=#FFB98B
highlight SignColumn     guifg=#716EB1 guibg=#A9ACB6
highlight Conceal        guifg=#A9ACB6 guibg=#A9ACB6
highlight SpellBad       guibg=#84BD5C
highlight SpellCap       guibg=#379D92
highlight SpellRare      guibg=#A52281
highlight SpellLocal     guibg=#77DDD2
highlight PmenuSbar      guibg=#434650
highlight PmenuThumb     guibg=#292C36
highlight TabLine        gui=underline guifg=#292C36 guibg=#A9ACB6
highlight TabLineSel     gui=bold
highlight TabLineFill    gui=reverse
highlight CursorColumn   guibg=#A9ACB6
highlight CursorLine     gui=underline
highlight MatchParen     guibg=#77DDD2
highlight Constant       guifg=#D2242E
highlight Special        guifg=#A52281
highlight Identifier     gui=NONE guifg=#379D92
highlight Statement      guifg=#C9794B
highlight PreProc        guifg=#A52281
highlight Type           guifg=#84BD5C
highlight Underlined     gui=underline guifg=#A52281
highlight Ignore         guifg=#FFFFFF
highlight Error          guifg=#FFFFFF guibg=#FF646E
highlight Todo           guifg=#292C36 guibg=#FFB98B
highlight DiffAdd        guifg=#292C36 guibg=#84BD5C
highlight DiffChange     guifg=#292C36 guibg=#C9794B
highlight DiffDelete     guifg=#292C36 guibg=#D2242E
highlight DiffText       guifg=#292C36 guibg=#FFB98B gui=bold
highlight Visual         guifg=NONE guibg=NONE gui=inverse
if &background == "light"
  highlight LineNr      guifg=#A9ACB6
  highlight Comment     guifg=#A9ACB6
  highlight ColorColumn guifg=#434650 guibg=#A9ACB6
  highlight Folded      guifg=#434650 guibg=#A9ACB6
  highlight FoldColumn  guifg=#434650 guibg=#A9ACB6
  highlight Pmenu       guifg=#292C36 guibg=#A9ACB6
  highlight PmenuSel    guifg=#A9ACB6 guibg=#A9ACB6
else
  highlight LineNr      guifg=#434650
  highlight Comment     guifg=#434650
  highlight ColorColumn guifg=#A9ACB6 guibg=#434650
  highlight Folded      guifg=#A9ACB6 guibg=#434650
  highlight FoldColumn  guifg=#A9ACB6 guibg=#434650
  highlight Pmenu       guifg=#FFFFFF guibg=#434650
  highlight PmenuSel    guifg=#434650 guibg=#FFFFFF
endif
highlight Normal     guifg=#FFFFFF guibg=#292C36
