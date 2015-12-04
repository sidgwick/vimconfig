"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""   VundleVim configure    """"""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'molokai'
Plugin 'phpcs.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Indent-Guides'
" Plugin 'mopp/tailCleaner.vim'
Plugin 'SuperTab'
Plugin 'janitor.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'OmniCppComplete'
Plugin 'taglist.vim'
" Plugin 'std_c.zip'
Plugin 'assistant'
" Plugin 'autoproto.vim'
" Plugin 'code_complete'
Plugin 'captbaritone/better-indent-support-for-php-with-html'
Plugin 'hameedullah/PDV--phpDocumentor-for-Vim'
Plugin 'sidgwick/ManPageView'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'szw/vim-ctrlspace'
Plugin 'scrooloose/syntastic'
" Some plugs for fun
Plugin 'ryanoasis/vim-devicons'
" Plugin 'Lokaltog/vim-powerline'
" Nice statusline/ruler for vim
Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""" End of VundleVim configure """"""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 行号
set nu
" 语法支持
syntax on
" 粘贴模式, 默认不要打开, 有粘贴需求再打开
"set paste
" 允许文件类型插件
filetype plugin on
" 按照文件类型缩进
filetype indent on

" 自动缩进
set autoindent
set smartindent
set cindent
" 设定 cinoption的值, 控制缩进风格
set cino=:0(0

" 设定缩进宽度
set tabstop=4
set softtabstop=4
set shiftwidth=4
" 空格代替TAB缩进
set expandtab

" 每行最多字符
set textwidth=78
" 折行, 离textwidth这么多字符时, 就开始折行
set wrapmargin=10

" 终端256色
set t_Co=256

" UTF-8编码
set encoding=utf-8
set history=2000
set directory=/tmp

" 开启光亮光标行
set cursorline
hi CursorLine ctermbg=016 ctermfg=white guibg=darkred guifg=white
" 开启高亮光标列
set cursorcolumn
hi CursorColumn ctermbg=016 ctermfg=white guibg=darkred guifg=white

" 颜色设置
colorscheme molokai

" CtrlSpace
set hidden

" 代码折叠方式
" set foldmethod=indent

" cscope索引文件的位置
set tags+=~/.vim/tags/sys_tags
set tags+=./tags
cs add ./cscope.out

" 特殊文件类型的特殊处理
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType html,htm,tex,js,css,less set shiftwidth=2 | set expandtab | set textwidth=125 | set wrapmargin=10


" au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
" set completeopt=menuone,menu,longest

" 缩进层次
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
" 缩进对齐线的颜色设置
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236

" 设置NerdTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>

" cscope快捷键设置
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" phpDocumentor
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>
" phpDocumentor variables
let g:pdv_cfg_Type = "mixed"
let g:pdv_cfg_Package = ""
let g:pdv_cfg_Version = "$id$"
let g:pdv_cfg_Author = "Zhigang Song <1005411480a@gmail.com>"
let g:pdv_cfg_Copyright = ""
let g:pdv_cfg_License = ""
let g:pdv_cfg_ReturnVal = "void"

" Always show the statusline
set laststatus=2
" let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
" 配套字体-Monaco
" https://github.com/nicholasc/vim-monaco-webdevicons

" syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_enable_highlighting = 1

" 各个语法检查工具的配置
let g:syntastic_php_phpcs_args = "--standard=Yii2 --encoding=utf-8"
" 手动检查快捷键
nmap sc :SyntasticCheck<CR>

" 快速关闭syntastic
nmap lc :lclose<CR>

" PSR2标准要求case缩进在switch之后, 而不与之对齐
let g:PHP_vintage_case_default_indent = 1
