set termguicolors


call plug#begin('~/.vim/plugged')

" vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" Theme
Plug 'overcache/NeoSolarized'

" Nerd-Tree
Plug 'preservim/nerdtree'

" Initialize plugin system
call plug#end()


"==========================================
" Language setting
"==========================================


"=========
" Go
"========

" disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0

let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

"=======================================================
" GO-Unit test
" ======================================================
" run all tests in the file 
autocmd BufEnter *.go nmap <leader>t  <Plug>(go-test)
" run current test 
autocmd BufEnter *.go nmap <leader>tt <Plug>(go-test-func)

autocmd BufEnter *.go nmap <leader>c  <Plug>(go-coverage-toggle)

"===============================
" Inspect go codebase
" ==============================
"
" Show the function signature for a given routine with \ + i:
autocmd BufEnter *.go nmap <leader>i  <Plug>(go-info)

" Show the interfaces a type implements with \ + ii:
autocmd BufEnter *.go nmap <leader>ii  <Plug>(go-implements)

" Describe the definition of a given type with \ + ci:
autocmd BufEnter *.go nmap <leader>ci  <Plug>(go-describe)

"See the callers of a given function with \ + cc:
autocmd BufEnter *.go nmap <leader>cc  <Plug>(go-callers)

" Find all references of a given type/function in the codebase with \ + cr:
nmap <leader>cr <Plug>(coc-references)

" Go to definition/Go back with Ctrl+d and Ctrl+a:
nmap <C-a> <C-o>
nmap <C-d> <Plug>(coc-definition)

"Refactor Go Code
" Not many options here, but there’s renaming the symbol your cursor is on with \ + r:
nmap <leader>r <Plug>(coc-rename)

"==============
" Go - End
"============

"=================================

"============= VIM ===================================

"--------------
" NerdTree
"--------------
" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


"---------------
" VIM-Airline
"---------------
let g:airline#extensions#tabline#enabled = 1


"---------------
" THEME
"---------------
colorscheme NeoSolarized
" Default value is "normal", Setting this option to "high" or "low" does use the
" same Solarized palette but simply shifts some values up or down in order to
" expand or compress the tonal range displayed.
let g:neosolarized_contrast = "normal"

" Special characters such as trailing whitespace, tabs, newlines, when displayed
" using ":set list" can be set to one of three levels depending on your needs.
" Default value is "normal". Provide "high" and "low" options.
let g:neosolarized_visibility = "normal"

" I make vertSplitBar a transparent background color. If you like the origin
" solarized vertSplitBar style more, set this value to 0.
let g:neosolarized_vertSplitBgTrans = 1

" If you wish to enable/disable NeoSolarized from displaying bold, underlined
" or italicized" typefaces, simply assign 1 or 0 to the appropriate variable.
" Default values:
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 0

" Used to enable/disable "bold as bright" in Neovim terminal. If colors of bold
" text output by commands like `ls` aren't what you expect, you might want to
" try disabling this option. Default value:
let g:neosolarized_termBoldAsBright = 1

set background=light
