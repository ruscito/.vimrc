" Gruber Darker color scheme for Vim
" Based on Tsoding's Emacs setup
" Minimal highlighting - keywords yellow, strings green, types dim gray

set background=dark
highlight clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "gruber-darker"

" ============================================
" Color palette
" ============================================
" bg:       234  (very dark gray, almost black)
" fg:       255  (bright white - normal text)
" type:     250  (dim gray for types)
" yellow:   220  (keywords)
" green:    149  (strings)
" brown:    172  (comments)
" linenr:   243  (line numbers)

" Editor UI
hi Normal          ctermfg=255  ctermbg=234  cterm=NONE
hi Cursor          ctermfg=234  ctermbg=220  cterm=NONE
hi CursorLine      ctermfg=NONE ctermbg=235  cterm=NONE
hi CursorLineNr    ctermfg=220  ctermbg=NONE cterm=NONE
hi LineNr          ctermfg=243  ctermbg=NONE cterm=NONE
hi SignColumn      ctermfg=NONE ctermbg=234  cterm=NONE
hi ColorColumn     ctermfg=NONE ctermbg=235  cterm=NONE
hi VertSplit       ctermfg=238  ctermbg=234  cterm=NONE
hi StatusLine      ctermfg=255  ctermbg=236  cterm=NONE
hi StatusLineNC    ctermfg=243  ctermbg=236  cterm=NONE
hi TabLine         ctermfg=243  ctermbg=236  cterm=NONE
hi TabLineFill     ctermfg=NONE ctermbg=236  cterm=NONE
hi TabLineSel      ctermfg=220  ctermbg=234  cterm=bold
hi Folded          ctermfg=172  ctermbg=235  cterm=NONE
hi FoldColumn      ctermfg=243  ctermbg=234  cterm=NONE
hi MatchParen      ctermfg=255  ctermbg=238  cterm=bold
hi Visual          ctermfg=NONE ctermbg=238  cterm=NONE
hi VisualNOS       ctermfg=NONE ctermbg=238  cterm=NONE
hi Search          ctermfg=16   ctermbg=220  cterm=NONE
hi IncSearch       ctermfg=16   ctermbg=149  cterm=NONE
hi WildMenu        ctermfg=16   ctermbg=220  cterm=NONE
hi Pmenu           ctermfg=255  ctermbg=236  cterm=NONE
hi PmenuSel        ctermfg=255  ctermbg=238  cterm=NONE
hi PmenuSbar       ctermfg=NONE ctermbg=238  cterm=NONE
hi PmenuThumb      ctermfg=NONE ctermbg=243  cterm=NONE
hi Question        ctermfg=149  ctermbg=NONE cterm=NONE
hi MoreMsg         ctermfg=149  ctermbg=NONE cterm=NONE
hi ModeMsg         ctermfg=255  ctermbg=NONE cterm=bold
hi ErrorMsg        ctermfg=203  ctermbg=234  cterm=bold
hi WarningMsg      ctermfg=220  ctermbg=NONE cterm=NONE
hi Directory       ctermfg=255  ctermbg=NONE cterm=NONE
hi Title           ctermfg=220  ctermbg=NONE cterm=bold
hi NonText         ctermfg=238  ctermbg=NONE cterm=NONE
hi SpecialKey      ctermfg=238  ctermbg=NONE cterm=NONE
hi Conceal         ctermfg=243  ctermbg=234  cterm=NONE
hi EndOfBuffer     ctermfg=234  ctermbg=NONE cterm=NONE

" Diff
hi DiffAdd         ctermfg=149  ctermbg=235  cterm=NONE
hi DiffChange      ctermfg=220  ctermbg=235  cterm=NONE
hi DiffDelete      ctermfg=203  ctermbg=235  cterm=NONE
hi DiffText        ctermfg=220  ctermbg=238  cterm=bold

" Spelling
hi SpellBad        ctermfg=203  ctermbg=NONE cterm=underline
hi SpellCap        ctermfg=220  ctermbg=NONE cterm=underline
hi SpellLocal      ctermfg=149  ctermbg=NONE cterm=underline
hi SpellRare       ctermfg=140  ctermbg=NONE cterm=underline

" ===========================================
" Syntax highlighting - MINIMAL like Tsoding
" ===========================================

" Comments - brown/orange
hi Comment         ctermfg=172  ctermbg=NONE cterm=NONE

" Constants - same as normal text
hi Constant        ctermfg=255  ctermbg=NONE cterm=NONE
hi Number          ctermfg=255  ctermbg=NONE cterm=NONE
hi Boolean         ctermfg=255  ctermbg=NONE cterm=NONE
hi Float           ctermfg=255  ctermbg=NONE cterm=NONE
hi Character       ctermfg=149  ctermbg=NONE cterm=NONE

" Strings - green
hi String          ctermfg=149  ctermbg=NONE cterm=NONE

" Identifiers - same as normal text
hi Identifier      ctermfg=255  ctermbg=NONE cterm=NONE
hi Function        ctermfg=255  ctermbg=NONE cterm=NONE

" Statements/Keywords - yellow
hi Statement       ctermfg=220  ctermbg=NONE cterm=NONE
hi Conditional     ctermfg=220  ctermbg=NONE cterm=NONE
hi Repeat          ctermfg=220  ctermbg=NONE cterm=NONE
hi Label           ctermfg=220  ctermbg=NONE cterm=NONE
hi Operator        ctermfg=255  ctermbg=NONE cterm=NONE
hi Keyword         ctermfg=220  ctermbg=NONE cterm=NONE
hi Exception       ctermfg=220  ctermbg=NONE cterm=NONE

" Preprocessor - dim gray
hi PreProc         ctermfg=250  ctermbg=NONE cterm=NONE
hi Include         ctermfg=250  ctermbg=NONE cterm=NONE
hi Define          ctermfg=250  ctermbg=NONE cterm=NONE
hi Macro           ctermfg=250  ctermbg=NONE cterm=NONE
hi PreCondit       ctermfg=250  ctermbg=NONE cterm=NONE

" Types - DIM GRAY but lighter than line numbers
hi Type            ctermfg=250  ctermbg=NONE cterm=NONE
hi StorageClass    ctermfg=220  ctermbg=NONE cterm=NONE
hi Structure       ctermfg=220  ctermbg=NONE cterm=NONE
hi Typedef         ctermfg=220  ctermbg=NONE cterm=NONE

" Special
hi Special         ctermfg=255  ctermbg=NONE cterm=NONE
hi SpecialChar     ctermfg=220  ctermbg=NONE cterm=NONE
hi Tag             ctermfg=220  ctermbg=NONE cterm=NONE
hi Delimiter       ctermfg=255  ctermbg=NONE cterm=NONE
hi SpecialComment  ctermfg=172  ctermbg=NONE cterm=bold
hi Debug           ctermfg=203  ctermbg=NONE cterm=NONE

hi Underlined      ctermfg=255  ctermbg=NONE cterm=underline
hi Ignore          ctermfg=238  ctermbg=NONE cterm=NONE
hi Error           ctermfg=203  ctermbg=234  cterm=bold
hi Todo            ctermfg=220  ctermbg=234  cterm=bold

" Custom type highlight group - use for your own typedef names
hi CustomType      ctermfg=250  ctermbg=NONE cterm=NONE

" C specific
hi cType           ctermfg=250  ctermbg=NONE cterm=NONE
hi cStorageClass   ctermfg=220  ctermbg=NONE cterm=NONE
hi cStructure      ctermfg=220  ctermbg=NONE cterm=NONE
hi cConditional    ctermfg=220  ctermbg=NONE cterm=NONE
hi cRepeat         ctermfg=220  ctermbg=NONE cterm=NONE
hi cOperator       ctermfg=255  ctermbg=NONE cterm=NONE
hi cPreProc        ctermfg=250  ctermbg=NONE cterm=NONE
hi cInclude        ctermfg=250  ctermbg=NONE cterm=NONE
hi cDefine         ctermfg=250  ctermbg=NONE cterm=NONE
hi cMacro          ctermfg=250  ctermbg=NONE cterm=NONE
hi cString         ctermfg=149  ctermbg=NONE cterm=NONE
hi cNumber         ctermfg=255  ctermbg=NONE cterm=NONE

" Rust
hi rustKeyword     ctermfg=220  ctermbg=NONE cterm=NONE
hi rustFuncName    ctermfg=255  ctermbg=NONE cterm=NONE
hi rustFuncCall    ctermfg=255  ctermbg=NONE cterm=NONE
hi rustType        ctermfg=250  ctermbg=NONE cterm=NONE
hi rustString      ctermfg=149  ctermbg=NONE cterm=NONE
hi rustNumber      ctermfg=255  ctermbg=NONE cterm=NONE
hi rustBoolean     ctermfg=255  ctermbg=NONE cterm=NONE
hi rustMacro       ctermfg=250  ctermbg=NONE cterm=NONE
hi rustAttribute   ctermfg=250  ctermbg=NONE cterm=NONE
hi rustLifetime    ctermfg=250  ctermbg=NONE cterm=NONE

" Python
hi pythonStatement   ctermfg=220  ctermbg=NONE cterm=NONE
hi pythonFunction    ctermfg=255  ctermbg=NONE cterm=NONE
hi pythonBuiltin     ctermfg=255  ctermbg=NONE cterm=NONE
hi pythonDecorator   ctermfg=250  ctermbg=NONE cterm=NONE
hi pythonString      ctermfg=149  ctermbg=NONE cterm=NONE
hi pythonNumber      ctermfg=255  ctermbg=NONE cterm=NONE
hi pythonOperator    ctermfg=255  ctermbg=NONE cterm=NONE
hi pythonException   ctermfg=220  ctermbg=NONE cterm=NONE
hi pythonInclude     ctermfg=220  ctermbg=NONE cterm=NONE
hi pythonClass       ctermfg=250  ctermbg=NONE cterm=NONE

" Go
hi goPackage       ctermfg=220  ctermbg=NONE cterm=NONE
hi goImport        ctermfg=220  ctermbg=NONE cterm=NONE
hi goFunction      ctermfg=255  ctermbg=NONE cterm=NONE
hi goType          ctermfg=250  ctermbg=NONE cterm=NONE
hi goStatement     ctermfg=220  ctermbg=NONE cterm=NONE
hi goConditional   ctermfg=220  ctermbg=NONE cterm=NONE
hi goRepeat        ctermfg=220  ctermbg=NONE cterm=NONE
hi goBuiltins      ctermfg=255  ctermbg=NONE cterm=NONE
hi goString        ctermfg=149  ctermbg=NONE cterm=NONE
hi goNumber        ctermfg=255  ctermbg=NONE cterm=NONE

" JavaScript
hi javaScriptBraces     ctermfg=255  ctermbg=NONE cterm=NONE
hi javaScriptFunction   ctermfg=220  ctermbg=NONE cterm=NONE
hi javaScriptIdentifier ctermfg=255  ctermbg=NONE cterm=NONE
hi javaScriptNull       ctermfg=255  ctermbg=NONE cterm=NONE
hi javaScriptNumber     ctermfg=255  ctermbg=NONE cterm=NONE
hi javaScriptString     ctermfg=149  ctermbg=NONE cterm=NONE

" HTML
hi htmlTag         ctermfg=255  ctermbg=NONE cterm=NONE
hi htmlEndTag      ctermfg=255  ctermbg=NONE cterm=NONE
hi htmlTagName     ctermfg=220  ctermbg=NONE cterm=NONE
hi htmlArg         ctermfg=255  ctermbg=NONE cterm=NONE
hi htmlSpecialChar ctermfg=255  ctermbg=NONE cterm=NONE

" CSS
hi cssClassName    ctermfg=255  ctermbg=NONE cterm=NONE
hi cssClassNameDot ctermfg=255  ctermbg=NONE cterm=NONE
hi cssIdentifier   ctermfg=255  ctermbg=NONE cterm=NONE
hi cssBraces       ctermfg=255  ctermbg=NONE cterm=NONE
hi cssTagName      ctermfg=220  ctermbg=NONE cterm=NONE
hi cssColor        ctermfg=255  ctermbg=NONE cterm=NONE

" Markdown
hi markdownH1              ctermfg=220  ctermbg=NONE cterm=bold
hi markdownH2              ctermfg=220  ctermbg=NONE cterm=bold
hi markdownH3              ctermfg=220  ctermbg=NONE cterm=bold
hi markdownH4              ctermfg=220  ctermbg=NONE cterm=bold
hi markdownH5              ctermfg=220  ctermbg=NONE cterm=bold
hi markdownH6              ctermfg=220  ctermbg=NONE cterm=bold
hi markdownHeadingDelimiter ctermfg=220 ctermbg=NONE cterm=NONE
hi markdownCode            ctermfg=149  ctermbg=NONE cterm=NONE
hi markdownCodeBlock       ctermfg=149  ctermbg=NONE cterm=NONE
hi markdownCodeDelimiter   ctermfg=149  ctermbg=NONE cterm=NONE
hi markdownLinkText        ctermfg=255  ctermbg=NONE cterm=underline
hi markdownUrl             ctermfg=255  ctermbg=NONE cterm=NONE
hi markdownBold            ctermfg=255  ctermbg=NONE cterm=bold
hi markdownItalic          ctermfg=255  ctermbg=NONE cterm=italic

" Lua
hi luaFunction           ctermfg=220  ctermbg=NONE cterm=NONE
hi luaFunc               ctermfg=255  ctermbg=NONE cterm=NONE
hi luaString             ctermfg=149  ctermbg=NONE cterm=NONE
hi luaStringDelimiter    ctermfg=149  ctermbg=NONE cterm=NONE
hi luaNumber             ctermfg=255  ctermbg=NONE cterm=NONE
hi luaStatement          ctermfg=220  ctermbg=NONE cterm=NONE
hi luaRepeat             ctermfg=220  ctermbg=NONE cterm=NONE
hi luaCondition          ctermfg=220  ctermbg=NONE cterm=NONE
hi luaTable              ctermfg=255  ctermbg=NONE cterm=NONE
hi luaConstant           ctermfg=255  ctermbg=NONE cterm=NONE
hi luaOperator           ctermfg=255  ctermbg=NONE cterm=NONE

" Netrw (file explorer)
hi netrwDir        ctermfg=255  ctermbg=NONE cterm=NONE
hi netrwClassify   ctermfg=220  ctermbg=NONE cterm=NONE
hi netrwLink       ctermfg=255  ctermbg=NONE cterm=NONE
hi netrwSymLink    ctermfg=149  ctermbg=NONE cterm=NONE
hi netrwExe        ctermfg=149  ctermbg=NONE cterm=NONE
hi netrwComment    ctermfg=172  ctermbg=NONE cterm=NONE
hi netrwList       ctermfg=255  ctermbg=NONE cterm=NONE
hi netrwTreeBar    ctermfg=238  ctermbg=NONE cterm=NONE

" QuickFix
hi qfLineNr        ctermfg=220  ctermbg=NONE cterm=NONE
hi qfFileName      ctermfg=255  ctermbg=NONE cterm=NONE

" vim: set sw=4 ts=4 sts=4 et tw=80 ft=vim:
