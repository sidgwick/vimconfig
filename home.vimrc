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
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Indent-Guides'
" Plugin 'mopp/tailCleaner.vim'
" Plugin 'kuoe0/vim-janitor' "删除行尾空白
" Plugin 'janitor.vim' "删除行尾空白
Plugin 'sidgwick/janitor.vim' "删除行尾空白
" Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-ctrlspace/vim-ctrlspace'
" Plugin 'SuperTab'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'zxqfl/tabnine-vim'
Plugin 'mileszs/ack.vim'
" Plugin 'SirVer/ultisnips'
Plugin 'taglist.vim'
Plugin 'assistant'
" Plugin 'autoproto.vim'
" Plugin 'code_complete'
Plugin 'sidgwick/ManPageView'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'scrooloose/syntastic'
" Some plugs for fun
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'ryanoasis/vim-devicons'
" Plugin 'Lokaltog/vim-powerline'
" Nice statusline/ruler for vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" lisp
Plugin 'kovisoft/slimv'
" Plugin 'vim-scripts/slimv.vim'
" Plugin 'jpalardy/vim-slime'

" elixir
Plugin 'elixir-editors/vim-elixir'

" PHP
Plugin 'captbaritone/better-indent-support-for-php-with-html'
Plugin 'hameedullah/PDV--phpDocumentor-for-Vim'
Plugin 'phpcs.vim'

" Plugin 'hallettj/jslint.vim'
" Plugin 'jshint/jshint'
Plugin 'mxw/vim-jsx'
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/yajs.vim'
Plugin 'burnettk/vim-angular'
Plugin 'posva/vim-vue'
" Plugin 'jmcantrell/vim-virtualenv'

" C/CPP
" Plugin 'OmniCppComplete'
" Plugin 'std_c.zip'
Plugin 'octol/vim-cpp-enhanced-highlight'

" Python
" Plugin 'python-mode/python-mode'
Plugin 'Vimjas/vim-python-pep8-indent' " included in python mode

" Plugins for css3, html5
" Plugin 'hail2u/vim-css3-syntax'
Plugin 'JulesWang/css.vim'
Plugin 'othree/html5.vim'

" Plugins for YII2
" Plugin 'mikehaertl/yii2-apidoc-vim'

" Rust
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

" solidity
Plugin 'tomlion/vim-solidity'

" toml
Plugin 'cespare/vim-toml'

" dot/graphviz
Plugin 'wannesm/wmgraphviz.vim'

" jsonc
Plugin 'neoclide/jsonc.vim'

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

" debug
" set vbs=4

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

" set mouse=nicr
set mouse=a

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
" mac 上 insert 模式不能使用 delete 键
set backspace=indent,eol,start

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

" 颜色设置
colorscheme molokai
" 开启光亮光标行
set cursorline
hi CursorLine term=bold cterm=bold ctermbg=016
hi CursorLineNr term=bold cterm=bold
" 开启高亮光标列
set cursorcolumn
hi CursorColumn ctermbg=016
""hi CursorColumn ctermbg=016 ctermfg=white guibg=darkred guifg=white


" 目录自动切换
set autochdir

" 代码折叠
set fdm=marker

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
autocmd FileType html,htm,tex,js,jsx,javascript,javascript.jsx,css,less set shiftwidth=2 | set expandtab | set textwidth=125 | set wrapmargin=10 | set cino=:0
autocmd FileType javascript.jsx,javascript,js,jsx set cino=

autocmd FileType markdown set shiftwidth=2 | set expandtab | set textwidth=0

" python yapf格式化
autocmd FileType python nnoremap <leader>= :%!yapf<CR>

" au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
" set completeopt=menuone,menu,longest

" 缩进层次
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
" 缩进对齐线的颜色设置
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red ctermbg=234
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236

" rainbow parentheses, always on
autocmd FileType lisp :RainbowParenthesesToggle
autocmd FileType lisp :RainbowParenthesesLoadRound
autocmd FileType lisp :RainbowParenthesesLoadSquare
autocmd FileType lisp :RainbowParenthesesLoadBraces

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

" JSX
let g:jsx_ext_required = 0

let g:janitor_auto_clean_up_on_write = 1
let g:janitor_exclude_on_trailing_spaces = ['diff']

" phpDocumentor variables
let g:pdv_cfg_Type = "mixed"
let g:pdv_cfg_Package = ""
let g:pdv_cfg_Version = "$id$"
let g:pdv_cfg_Author = "Zhigang Song <1005411480a@gmail.com>"
let g:pdv_cfg_Copyright = ""
let g:pdv_cfg_License = ""
let g:pdv_cfg_ReturnVal = "void"

" Python mode
let g:pymode_python = 'python3'
let g:pymode_folding = 0
let g:pymode_options_colorcolumn = 0
let g:pymode_doc_bind = 'K'
let g:pymode_virtualenv_path = '.venv'

" Always show the statusline
set laststatus=2
" let g:Powerline_symbols = 'fancy'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_theme='badwolf'
" 配套字体-Monaco
" https://github.com/nicholasc/vim-monaco-webdevicons

" syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = {"mode": "active", "passive_filetypes": ["tex"] }

let g:syntastic_rust_checkers = ['cargo']

"let g:syntastic_loc_list_height = 5
"let g:syntastic_enable_highlighting = 1

" 各个语法检查工具的配置
" let g:syntastic_python_checkers = ['pylint']
" let g:syntastic_python_python_exec = "python"
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_php_phpcs_args = "--standard=Yii2 --encoding=utf-8"
" 手动检查快捷键
nmap sc :SyntasticCheck<CR>

" 快速关闭syntastic
nmap slc :lclose<CR>

" PSR2标准要求case缩进在switch之后, 而不与之对齐
let g:PHP_vintage_case_default_indent = 1

" YCM
"let g:ycm_rust_src_path = '/usr/src/rust/src'
let g:ycm_rust_src_path = '/usr/lib/rustlib/src/rust/src'

let g:ycm_key_invoke_completion = '<C-x>'
" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" 回车即选中当前项
imap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" Ycm ignore this file types
let g:ycm_filetype_blacklist={'notes': 1, 'markdown': 1, 'unite': 1, 'tagbar': 1, 'pandoc': 1, 'qf': 1, 'vimwiki': 1, 'text': 1, 'infolog': 1, 'mail': 1}
" 开启基于tag的补全，可以在这之后添加需要的标签路径
let g:ycm_collect_identifiers_from_tags_files= 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 输入第 2 个字符开始补全
let g:ycm_min_num_of_chars_for_completion= 2
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax= 1
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 在注释里收集补全字符串
let g:ycm_collect_identifiers_from_comments_and_strings = 1
" let g:ycm_show_diagnostics_ui = 0
let g:ycm_confirm_extra_conf = 0

let g:ycm_python_binary_path = 'python'
let g:ycm_key_list_stop_completion = ['<CR>']


" lisp
let g:slimv_lisp = 'clisp'
" let g:slimv_impl = 'clisp'
let g:slimv_python_version = 'python2'
" let g:slimv_swank_cmd = '! xterm -e sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp &'
" open swank server manualy to avoid the ugly xterm window
let g:slimv_swank_cmd = ''
" let g:lisp_rainbow = 1
let g:paredit_mode = 0
let g:slimv_repl_split = 2
let g:slimv_repl_split_size = 4
" autocmd BufEnter REPL :res -10

" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
"let g:UltiSnipsJumpForwardTrigger = "<tab>"
"let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" let g:ctrlp_map = '<C-_>p'
" let g:ctrlp_cmd = 'CtrlP'

let g:CtrlSpaceDefaultMappingKey = "<C-_>x"
nmap <C-_>a :Ack <CR>
if executable("ag")
    let g:CtrlSpaceGlobCommand = 'ag -l --nocolor -g ""'
    let g:ackprg = 'ag --vimgrep'
endif

let g:WMGraphviz_output = "svg"
