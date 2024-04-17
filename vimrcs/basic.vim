"""""""""""""""""""""""""""""""""""""""""""""""""""""'
"MAPS
"""""""""""""""""""""""""""""""""""""""""""""""""""""
" crtl+n abre a nerdtree
map <C-n> :NERDTreeToggle<CR>

let mapleader = " "
let g:neocomplete#enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""
"INDENTATION
"""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
set autoindent "indentacao automatica
set cindent "indentacao para linguagem C
set smartindent "identacao geral
set backspace=indent,eol,start
"nova linha quando eh criado um {}
set shiftwidth=4 "tamanho do tab na indentacao
set tabstop=4 softtabstop=4 "tab 4 espacos
set smarttab "auto explicativo
"set expandtab "spaces, not tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""
"GERAL
"""""""""""""""""""""""""""""""""""""""""""""""""""""
set rnu "numero das linhas relativos ao da atual
set wrap "linha n se separa ao sair da tela
set cursorline "destaca linha atual
set lazyredraw "desempenho
set showcmd "mostra comandos
set hidden "melhor uso de buffers na msm janela
set ttyfast "ver :h ttyfast, desempenho
set title "muda titulo
set scrolloff=8
set noerrorbells "sem barulho chato
set novisualbell
set belloff=all "barulho chato voltou no kitty, tirando ele
set signcolumn=yes
" Retorna a posicao que estava quando o arquivo foi fechado
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \| exe "normal! g'\"" | endif
endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"DESLIGANDO SETAS DO TECLADO
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
for key in ['<Up>', '<Down>', '<Left>', '<Right>']
  exec 'noremap' key '<Nop>'
  exec 'inoremap' key '<Nop>'
  exec 'cnoremap' key '<Nop>'
endfor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"PESQUISA
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set smartcase "case search
set hlsearch "highlight search
set incsearch "mordern browsers search
set ignorecase
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Parenthesis/bracket expanding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
""""""""""""""""""""""""""""""""""""""""""""""
"Arquivos
""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowb
set noswapfile
set nowritebackup
""""""""""""""""""""""""""""""""""""""""""""""
" Italic configuration
" """"""""""""""""""""""""""""""""""""""""""""
if $TERM != 'xterm-kitty'
    set t_ZH=^[[3m
    set t_ZR=^[[23m]]]]
endif

try
    colorscheme gruvbox
catch
endtry
