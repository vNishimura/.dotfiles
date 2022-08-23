""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pluggin Install
""""""""""""""""""""""""""""""""""""""""""""""""""""

"Instala automaticamente o gerenciador de plugins Vim Plug e instala os
if empty(glob('~/.vim/autoload/plug.vim'))
 silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" autocmd VimEnter * PlugInstall --sync | source $MYVIMRC "instala automaticamente os plugins
endif

" :PlugInstall para instalar os plugins listados abaixo
call plug#begin('~/.vim/plugged')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'lervag/vimtex' "LaTeX
	Plug 'tpope/vim-fugitive' "Git/GHub integration
	Plug 'preservim/nerdtree'
	Plug 'airblade/vim-gitgutter'
	"Plug 'SirVer/ultisnips'
	Plug 'w0rp/ale'       " Syntax check
    Plug 'gruvbox-community/gruvbox'
    "Plug 'nvim-telescope/telescope.nvim'
    Plug 'rhysd/vim-clang-format', {'for' : ['c', 'cpp']}
    Plug 'luochen1990/rainbow'
    Plug 'sheerun/vim-polyglot'
    Plug 'https://github.com/McSinyx/vim-octave.git', {'for': 'octave'}
 "   Plug 'vim-syntastic/syntastic'

    let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#end()
""""""""""""""""""
let g:clang_format#auto_format=0
let g:clang_format#detect_style_file=1

""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim-Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 1
set termguicolors "set true colors 
syntax enable
""""""""""""""""""""""""""""""""""""""""""""""""""""
"GRUVBOX THEME!! 
"""""""""""""""""""""""""""""""""""""""""""""""""""" 
set background=dark
let g:gruvbox_italic=1 "enable italics
let g:gruvbox_contrast_dark='hard' "dark mode contrast;default = medium;overrides contrast option
let g:gruvbox_italicize_strings=1 "enables italic for string
let g:gruvbox_improved_warnings=1
colorscheme gruvbox
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"ARRUMAR FONTE DO POWERLINE
"""""""""""""""""""""""""""""""""""""""""""""""""""""
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

hi Normal guibg=NONE ctermbg=NONE 
"fundo transparente


"""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
