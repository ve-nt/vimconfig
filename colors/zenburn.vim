" Vim color file
" Maintainer:   Jani Nurminen <slinky@iki.fi>
" Last Change:  $Id: zenburn.vim,v 2.21 2011/04/26 12:13:41 slinky Exp slinky $
" URL:        http://slinky.imukuppi.org/zenburnpage/
" License:    GNU GPL <http://www.gnu.org/licenses/gpl.html>
"
" Nothing too fancy, just some alien fruit salad to keep you in the zone.
" This syntax file was designed to be used with dark environments and
" low light situations. Of course, if it works during a daybright office, go
" ahead :)
"
" Owes heavily to other Vim color files! With special mentions
" to "BlackDust", "Camo" and "Desert".
"
" To install, copy to ~/.vim/colors directory.
"
" Alternatively, you can use Vimball installation:
"    vim zenburn.vba
"    :so %
"    :q
"
" For details, see :help vimball
"
" After installation, use it with :colorscheme zenburn.
" See also :help syntax
"
" Credits:
"  - Jani Nurminen - original Zenburn, maintainer
"  - Steve Hall & Cream posse - higher-contrast Visual selection
"  - Kurt Maier - 256 color console coloring, low and high contrast toggle,
"                bug fixing
"  - Charlie - spotted too bright StatusLine in non-high contrast mode
"  - Pablo Castellazzi - CursorLine fix for 256 color mode
"  - Tim Smith - force dark background
"  - John Gabriele - spotted bad Ignore-group handling
"  - Zac Thompson - spotted invisible NonText in low contrast mode
"  - Christophe-Marie Duquesne - suggested making a Vimball,
"   suggested support for ctags_highlighting.vim
"  - Andrew Wagner - noted the CursorColumn bug (guifg was unintentionally set),
"                   unify CursorColumn colour
"  - Martin Langasek - clarify the license, whitespace fixes
"  - Marcin Szamotulski - support autocomplete for Zenburn configuration
"                        parameters
"  - Clayton Parker (claytron) - Convinced by Kurt Maier to use Zenburn. Point
"   out issues with LineNr, fix directory styles, and their usage in MacVim.
"  - Paweł Piekarski - Spotted bad FoldColumn and TabLine. Made better
"                     FoldColumn colors, fixed TabLine colors.
"
" CONFIGURABLE PARAMETERS:
"
" You can use the default (don't set any parameters), or you can
" set some parameters to tweak the Zenburn colours.
"
" To use them, put them into your .vimrc file before loading the color scheme,
" example:
"   let g:zenburn_high_Contrast=1
"   colors zenburn
"
" You can also do ":let g:zenburn" then hit Ctrl-d or Tab to scroll through the
" list of configurable parameters.
"
" * You can now set a darker background for bright environments. To activate, use:
"   contrast Zenburn, use:
"
"     let g:zenburn_high_Contrast = 1
"
" * For example, Vim help files uses the Ignore-group for the pipes in tags
"   like "|somelink.txt|". By default, the pipes are not visible, as they
"   map to Ignore group. If you wish to enable coloring of the Ignore group,
"   set the following parameter to 1. Warning, it might make some syntax files
"   look strange.
"
"     let g:zenburn_color_also_Ignore = 1
"
" * To get more contrast to the Visual selection, use
"
"     let g:zenburn_alternate_Visual = 1
"
"   Note: this is enabled only if the old-style Visual
"   if used, see g:zenburn_old_Visual
"
" * To use alternate colouring for Error message, use
"
"     let g:zenburn_alternate_Error = 1
"
" * The new default for Include is a duller orange. To use the original
"   colouring for Include, use
"
"     let g:zenburn_alternate_Include = 1
"
" * Work-around to a Vim bug, it seems to misinterpret ctermfg and 234 and 237
"   as light values, and sets background to light for some people. If you have
"   this problem, use:
"
"     let g:zenburn_force_dark_Background = 1
"
" * By default the CursorColumn is of a lighter colour. I find it more readable
"   that way, but some people may want to align it with the darker CursorLine
"   color, for visual uniformity. To do so, use:
"
"     let g:zenburn_unified_CursorColumn = 1
"
"   Note: you can ignore this unless you use
"   ":set cursorline cursorcolumn", since otherwise the effect won't be
"   seen.
"
" * New (dark) Visual coloring has been introduced.
"   The dark Visual is more aligned with the rest of the colour scheme,
"   especially if you use line numbers. If you wish to use the
"   old Visual coloring, use
"
"     let g:zenburn_old_Visual = 1
"
"   Default is to use the new Visual.
"
"  * EXPERIMENTAL FEATURE: Zenburn will automatically detect if you
"   have ctags_highlighting.vim (by Al Budden,
"   http://www.vim.org/scripts/script.php?script_id=2646) enabled, and
"   will set sensible highlight links. Nothing will happen if you do
"   not have ctags_highlighting.vim. If you do not want this feature, you can
"   override the check with:
"
"   let g:zenburn_disable_ctags_highlighting_support = 1
"
" NOTE:
"
" * To turn the parameter(s) back to defaults, use UNLET or set them to 0:
"
"     unlet g:zenburn_alternate_Include
"   or
"     let g:zenburn_alternate_Include = 0
"
"
" That's it, enjoy!
"
" TODO
"   - Visual alternate color is broken? Try GVim >= 7.0.66 if you have trouble
"   - IME colouring (CursorIM)

" Set defaults, but keep any parameters already set by the user
" -----------------------------------------------
let g:colors_name="zenburn"
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

" Entering Kurt zone
hi Boolean          ctermfg=181
hi Character        ctermfg=181     cterm=bold
hi Comment          ctermfg=108
hi Conditional      ctermfg=223     cterm=bold
hi Constant         ctermfg=181     cterm=bold
hi Cursor           ctermfg=233     ctermbg=109     cterm=bold
hi Debug            ctermfg=181     cterm=bold
hi Define           ctermfg=223     cterm=bold
hi Delimiter        ctermfg=245
hi DiffAdd          ctermfg=66      ctermbg=0       cterm=bold
hi DiffChange       ctermbg=236
hi DiffDelete       ctermfg=236     ctermbg=238
hi DiffText         ctermfg=217     ctermbg=0       cterm=bold
hi Directory        ctermfg=109     cterm=bold
hi ErrorMsg         ctermfg=115     ctermbg=236     cterm=bold
hi Exception        ctermfg=249     cterm=bold
hi Float            ctermfg=251
hi Function         ctermfg=230
hi Identifier       ctermfg=223
hi IncSearch        ctermbg=228     ctermfg=238
hi Keyword          ctermfg=223     cterm=bold
hi Label            ctermfg=187     cterm=underline
hi LineNr           ctermfg=248     ctermbg=235
hi CursorLineNr     ctermfg=248     ctermbg=235     cterm=bold
hi Macro            ctermfg=223
hi ModeMsg          ctermfg=223     cterm=none
hi MoreMsg          ctermfg=15      cterm=bold
hi Number           ctermfg=116
hi Operator         ctermfg=230
hi PreCondit        ctermfg=180     cterm=bold
hi PreProc          ctermfg=223     cterm=bold
hi Question         ctermfg=15      cterm=bold
hi Repeat           ctermfg=223     cterm=bold
hi Search           ctermfg=230     ctermbg=236
hi SpecialChar      ctermfg=181     cterm=bold
hi SpecialComment   ctermfg=108     cterm=bold
hi Special          ctermfg=181
hi SpecialKey       ctermfg=151
hi Statement        ctermfg=187     ctermbg=0       cterm=none
hi StatusLine       ctermfg=236     ctermbg=186
hi StatusLineNC     ctermfg=235     ctermbg=108
hi StorageClass     ctermfg=249     cterm=bold
hi String           ctermfg=174
hi Structure        ctermfg=229     cterm=bold
hi Tag              ctermfg=181     cterm=bold
hi Title            ctermfg=7       ctermbg=0       cterm=bold
hi Todo             ctermfg=108     ctermbg=0       cterm=bold
hi Typedef          ctermfg=253     cterm=bold
hi Type             ctermfg=187     cterm=bold
hi Underlined       ctermfg=188     ctermbg=0       cterm=bold
hi VertSplit        ctermfg=236     ctermbg=65
hi VisualNOS        ctermfg=236     ctermbg=210     cterm=bold
hi WarningMsg       ctermfg=15      ctermbg=236     cterm=bold
hi WildMenu         ctermbg=236     ctermfg=194     cterm=bold

" spellchecking,    always background
hi SpellLocal       ctermfg=14      ctermbg=0
hi SpellBad         ctermfg=9       ctermbg=0
hi SpellCap         ctermfg=12      ctermbg=0
hi SpellRare        ctermfg=13      ctermbg=0

" pmenu
hi PMenu            ctermfg=248     ctermbg=0
hi PMenuSel         ctermfg=223     ctermbg=235

hi Normal           ctermfg=188     ctermbg=0
hi Cursor           ctermbg=109
hi diffadd          ctermbg=0
hi diffdelete       ctermbg=238
hi difftext         ctermbg=0
hi errormsg         ctermbg=0
hi incsearch        ctermbg=0       ctermfg=123
hi linenr           ctermbg=235
hi search           ctermbg=238
hi statement        ctermbg=0
hi statusline       ctermbg=144
hi statuslinenc     ctermbg=108
hi title            ctermbg=0
hi todo             ctermbg=0
hi underlined       ctermbg=0
hi vertsplit        ctermbg=65
hi visualnos        ctermbg=210
hi warningmsg       ctermbg=236
hi wildmenu         ctermbg=236
hi NonText          ctermfg=240

" normal mode, lighter CursorLine
hi CursorLine       ctermbg=238     cterm=none
hi CursorColumn     ctermbg=239     cterm=none

" default is something more zenburn-compatible
hi Error            ctermfg=172 ctermbg=234 cterm=bold

hi Visual           ctermbg=0
hi Visual           ctermbg=237
hi VisualNOS        ctermbg=237

hi FoldColumn       ctermbg=236     ctermfg=109
hi Folded           ctermbg=236     ctermfg=109
hi TabLine          ctermbg=235     ctermfg=188     cterm=none
hi TabLineSel       ctermbg=238     ctermfg=254     cterm=bold
hi TabLineFill      ctermbg=0       ctermfg=235
