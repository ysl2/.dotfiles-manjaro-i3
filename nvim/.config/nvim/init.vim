" ====================
" === Editor Setup ===
" ====================



" ===
" === System
" ===
let &t_ut=''
set autochdir


" ===
" === Editor behavior
" ===
set exrc
set secure
set number
set relativenumber
set cursorline
set hidden
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set list
set listchars=tab:\|\ ,trail:▫
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set nowrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set completeopt=longest,noinsert,menuone,noselect,preview
set ttyfast "should make scrolling faster
set lazyredraw "same as above
"set visualbell
silent !mkdir -p ~/.config/nvim/tmp/backup
silent !mkdir -p ~/.config/nvim/tmp/undo
"silent !mkdir -p ~/.config/nvim/tmp/sessions
set backupdir=~/.config/nvim/tmp/backup,.
set directory=~/.config/nvim/tmp/backup,.
if has('persistent_undo')
	set undofile
	set undodir=~/.config/nvim/tmp/undo,.
endif
"set colorcolumn=100
set updatetime=100
set virtualedit=block



" ===
" === key bindings
" ===
let mapleader = '\'
noremap S <Nop>
noremap s <Nop>
noremap <c-\> <Nop>
noremap <leader>V :e $MYVIMRC<CR>
noremap <leader>M :w<CR>:source $MYVIMRC<CR>
noremap <leader>PI :PlugInstall<CR>
noremap <leader>PC :PlugClean<CR>


" ===
" === Plugin list
" ===
call plug#begin('~/.config/nvim/plugged')
Plug 'https://hub.fastgit.org/chun-yang/auto-pairs.git'

Plug 'https://hub.fastgit.org/anyakichi/vim-surround.git'

Plug 'https://hub.fastgit.org/justinmk/vim-sneak.git'

Plug 'https://hub.fastgit.org/skwp/vim-easymotion.git'

Plug 'https://hub.fastgit.org/vim-airline/vim-airline.git'

Plug 'https://hub.fastgit.org/preservim/nerdtree.git'

Plug 'https://hub.fastgit.org/xuyuanp/nerdtree-git-plugin.git'

Plug 'https://hub.fastgit.org/morhetz/gruvbox.git'

Plug 'https://hub.fastgit.org/luochen1990/rainbow.git'
" Switch between Chinese and English
Plug 'https://hub.fastgit.org/rlue/vim-barbaric.git'

Plug 'https://hub.fastgit.org/junegunn/fzf.vim.git'
" ranger的依赖插件
Plug 'https://hub.fastgit.org/rbgrouleff/bclose.vim.git'

Plug 'https://hub.fastgit.org/francoiscabrol/ranger.vim.git'

Plug 'https://hub.fastgit.org/neoclide/coc.nvim.git'
call plug#end()



" ===
" === Dress up my vim
" ===
colorscheme gruvbox
set termguicolors " enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" ===
" === theme: gruvbox
" ===
let g:gruvbox_contrast_dark = 'soft'


" 设置背景透明（不起效果）
"hi Normal ctermfg=250 ctermbg=none


" ===
" === nerdtree
" ===
map <C-E> :NERDTreeToggle<CR>
autocmd ColorScheme * highlight NERDTreeFile ctermfg=251
autocmd ColorScheme * highlight Normal ctermbg=NONE
" 当nerdtree是最后一个窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 显示行号
let NERDTreeShowLineNumbers=1
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
" 忽略以下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }



" ===
" === vim-airline
" ===
set laststatus=2  "永远显示状态栏
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline_extensions_tabline_enabled = 1 " 显示窗口tab和buffer

if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'



" ===
" === vim-easymotion
" ===
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_do_shade = 0
let g:EasyMotion_smartcase = 1



" ===
" === rainbow
" ===
let g:rainbow_active = 1



" ===
" === xtabline
" ===
let g:xtabline_settings = {}
let g:xtabline_settings.enable_mappings = 0
let g:xtabline_settings.tabline_modes = ['tabs', 'buffers']
let g:xtabline_settings.enable_persistance = 0
let g:xtabline_settings.last_open_first = 1
noremap to :XTabCycleMode<CR>
noremap \p :echo expand('%:p')<CR>



" ===
" === vim-barbaric
" ===
set ttimeoutlen=0


" ===
" === ranger
" ===
let g:ranger_map_keys = 0
noremap <leader>r :Ranger<CR>

" ===
" === fzf.vim
" ===
noremap <leader>f :Files
