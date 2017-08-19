set guifont=Consolas:h11
set helplang=cn  
set encoding=utf-8  
set cscopequickfix=s-,c-,d-,i-,t-,e-  
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>  
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>  
let g:miniBufExplMapCTabSwitchBufs = 1  
let g:miniBufExplMapWindowNavVim = 1  
let g:miniBufExplMapWindowNavArrows = 1  
nnoremap <silent> <F12> :A<CR>  
nnoremap <silent> <F3> :Grep<CR>  
let g:SuperTabRetainCompletionType=2  
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
" 自动语法高亮  
syntax on  
" 检测文件类型  
filetype on  
" 检测文件类型插件  
filetype plugin on  
" 不设定在插入状态无法用退格键和 Delete 键删除回车符  
set backspace=indent,eol,start  
set whichwrap+=<,>,h,l  
" 显示行号  
set number  
" 上下可视行数  
set scrolloff=6  
" replace tab with space  
set expandtab  
" 设定 tab 长度为 4  
set tabstop=4  
" 设置按BackSpace的时候可以一次删除掉4个空格  
set softtabstop=4  
" 设定 << 和 >> 命令移动时的宽度为 4  
set shiftwidth=4  
set smarttab  
set history=1024  
" 不突出显示当前行  
set nocursorline  
" 覆盖文件时不备份  
set nobackup  
" 自动切换当前目录为当前文件所在的目录  
set autochdir  
" 搜索时忽略大小写，但在有一个或以上大写字母时仍大小写敏感  
set ignorecase  
set smartcase  
" 搜索到文件两端时不重新搜索  
set nowrapscan  
" 实时搜索  
set incsearch  
" 搜索时高亮显示被找到的文本  
set hlsearch  
" 关闭错误声音  
set noerrorbells  
set novisualbell  
"set t_vb=  
  
" 不自动换行  
"set nowrap  
"How many tenths of a second to blink  
set mat=2  
" 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存  
set hidden  
" 智能自动缩进  
set smartindent  
" 设定命令行的行数为 1  
set cmdheight=1  
" 显示状态栏 (默认值为 1, 无法显示状态栏)  
set laststatus=2  
  
" 解决自动换行格式下, 如高度在折行之后超过窗口高度结果这一行看不到的问题  
set display=lastline  
" 设定配色方案  
colorscheme evening  
" 设置在状态行显示的信息  
set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ [%{(&fenc==\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %c:%l/%L%)  
  
" 显示Tab符  
set list  
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<  
"启动时不显示 捐赠提示  
set shortmess=atl  
  
"blank      空白  
"buffers    缓冲区  
"curdir     当前目录  
"folds      折叠  
"help       帮助  
"options    选项  
"tabpages   选项卡  
"winsize    窗口大小  
"slash      转换文件路径中的\为/以使session文件兼容unix  
"unix       设置session文件中的换行模式为unix  
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,slash,unix,resize  
  
" 允许backspace和光标键跨越行边界  
set whichwrap+=<,>,h,l  
  
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）  
set mouse=a  
set selection=exclusive  
set selectmode=mouse,key  
  
" 在被分割的窗口间显示空白，便于阅读  
set fillchars=vert:\ ,stl:\ ,stlnc:\  
  
" 高亮显示匹配的括号  
set showmatch  
  
" 匹配括号高亮的时间（单位是十分之一秒）  
set matchtime=5  
  
"编码设置  
set enc=utf-8  
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936  
  
" set mapleader  
let mapleader=","  
  
nmap J 5j  
nmap K 5k  
  
" Ctrl+a  
nmap <silent> <C-a> ggvG$  
  
" 选中状态下 Ctrl+c 复制  
vnoremap <c-c> "+y  
  
" Ctrl+v  
nmap <silent> <C-v> "+p  
