"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:	Teddy Fish<i.kenting at gmail.com>
" Version: 1.0
" Last Change: 2017-05-15 07:04:37
"
" Sections:
" ----------------------
"   *> General
"   *> Colors and Fonts
"   *> Fileformats
"   *> VIM userinterface
"   ------ *> Statusline
"   *> Visual
"   *> Moving around and tabs
"   *> General Autocommands
"   *> Parenthesis/bracket expanding
"   *> General Abbrevs
"   *> Editing mappings etc.
"   *> Command-line config
"   *> Buffer realted
"   *> Files and backups
"   *> Folding
"   *> Text options
"   ------ *> Indent
"   *> Spell checking
"   *> Plugin configuration
"   ------ *> Yank ring
"   ------ *> File explorer
"   ------ *> Minibuffer
"   ------ *> Tag list (ctags) - not used
"   ------ *> LaTeX Suite things
"   *> Filetype generic
"   ------ *> Todo
"   ------ *> VIM
"   ------ *> HTML related
"   ------ *> Python section
"   ------ *> Vim section
"   ------ *> C mappings
"   *> Snippets
"   ------ *> Python
"   ------ *> javaScript
"   *> Cope
"   *> MISC
"
"  Tip:
"   If you find anything that you can't understand than do this:
"   help keyword OR helpgrep keywords
"  Example:
"   Go into command-line mode and type helpgrep nocompatible, ie.
"   :helpgrep nocompatible
"   then press <leader>c to see the results, or :botright cw
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"add file encode related
" see http://edyfox.codecarver.org/html/vim_fileencodings_detection.html 
set encoding=utf-8
" 避免Windows下菜单及系统提示乱码，可作如下设置
"set langmenu=zh_CN.UTF-8
"language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,GB18030,big5,euc-jp,euc-kr,gbk,latin1

"Get out of VI's compatible mode..
set nocompatible
filetype off
" 启用matchit，匹配关键字
runtime macros/matchit.vim

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" git interface
Plugin 'tpope/vim-fugitive'
" vimwiki
Plugin 'vimwiki/vimwiki'
" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
" 语法检查
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" 这个插件可以显示文件的 Git 增删状态
Plugin 'scrooloose/nerdtree'
" comment code
Plugin 'scrooloose/nerdcommenter'
" 全局搜索 
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
" 启动后会自动折叠代码，蛋疼
 Plugin 'tmhedberg/SimpylFold'
" class method and function list
Plugin 'majutsushi/tagbar'
Plugin 'python-mode/python-mode', {'for': 'python'}
" 配色
Plugin 'dracula/vim', {'as':'dracula'}
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'jnurmine/Zenburn'
Plugin 'tpope/vim-surround'
Plugin 'tpope/tpope-vim-abolish'
Plugin 'tpope/vim-markdown'
" ale语法检查
Plugin 'w0rp/ale'
" Go
Plugin 'fatih/vim-go'

call vundle#end()

"Enable filetype plugin
filetype plugin on
filetype plugin indent on

"Sets how many lines of history VIM har to remember
set history=400
"
"Set to auto read when a file is changed from the outside
set autoread

"Have the mouse enabled all the time:
set mouse=a

"Set mapleader
let mapleader = ","
let g:mapleader = ","
" 重新映射,
noremap \ ,

"Fast saving
nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>

"Fast reloading of the .vimrc
map <leader>e :e! ~/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost ~/.vimrc source ~/dotfiles/vimrc

"" set 256 colors 
set t_Co=256
set magic

" Vimwiki to use markdow syntax to replace wiki syntax
let wiki_1 = {}
let wiki_1.path = '~/Documents/Wiki/Default/' 
let g:vimwiki_list = [
      \{'path': '~/Documents/Wiki/Default/',
      \ 'path_html': '~/Documents/Wiki/Sites/wiki/',
      \ 'html_footer': '~/Documents/Wiki/Default/footer.tpl',
      \ 'html_header': '~/Documents/Wiki/Default/header.tpl',
      \ 'syntax': 'markdown',
      \ 'auto_export': 0}
      \]

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax hl
syntax on

set background=dark
if has("gui_running")
  set guioptions-=T
  "colorscheme molokai
  colorscheme solarized
else
  if (strftime("%w") % 2 == 0)
    colorscheme dracula
  else
    colorscheme molokai
  endif 
endif

"Some nice mapping to switch syntax (useful if one mixes different languages in one file)
map <leader>1 :set syntax=cheetah<cr>
map <leader>2 :set syntax=xhtml<cr>
map <leader>3 :set syntax=python<cr>
map <leader>4 :set syntax=javascript<cr>
map <leader>$ :syntax sync fromstart<cr>
map <leader>5 :set syntax=markdown<cr>
map <leader>6 :set syntax=htmldjango<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fileformats
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Favorite filetypes
set ffs=unix,dos,mac

nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => VIM userinterface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn on WiLd menu
set wildmenu
set wildmode=full
"
""Show line number, and relativenumber
set nu
set relativenumber

""Set backspace
set backspace=eol,start,indent

""Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l
"
"Ignore case when searching, smartcase for case sensitive if Caps in search
set ignorecase smartcase
set incsearch

"Set magic on
set magic

"No sound on errors.
set noerrorbells
set novisualbell
"Highlight search things
set hlsearch

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Teddy Fish 2012年03月31日 20:02:58 
" When quit and reopen the file, return to the last edit place when quit.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" airline plugin
let g:airline#extension#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled = 1

let g:airline_theme="molokai"
"let g:airline_section_z = ''%3pp %l:%c %L'
function! AirlineInit()
  call airline#parts#define_raw('linenr', '%l')
  call airline#parts#define_accent('linenr', 'bold')
  let g:airline_section_z = airline#section#create(['linenr', ':%c ', '%3p%%', g:airline_symbols.linenr, '%L '])
endfunction
autocmd VimEnter * call AirlineInit()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around and tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map space to / and c-space to ?
map <space> /
map <c-space> ?

"Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Use the arrows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>
"
"Tab configuration
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
try
  set switchbuf=usetab
  set stal=2
catch
endtry

"Moving fast to front, back and 2 sides ;)
imap <m-$> <esc>$a
imap <m-0> <esc>0i
imap <D-$> <esc>$a
imap <D-0> <esc>0i


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => General Autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Switch to current dir
map <leader>cd :cd %:p:h<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket expanding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
")
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $w <esc>`>a"<esc>`<i"<esc>

"Map auto complete of (, ", ', [
inoremap $1 ()<esc>:let leavechar=")"<cr>i
inoremap $2 []<esc>:let leavechar="]"<cr>i
inoremap $4 {<esc>o}<esc>:let leavechar="}"<cr>O
inoremap $3 {}<esc>:let leavechar="}"<cr>i
inoremap $q ''<esc>:let leavechar="'"<cr>i
inoremap $w ""<esc>:let leavechar='"'<cr>i
au BufNewFile,BufRead *.\(vim\)\@! inoremap " ""<esc>:let leavechar='"'<cr>i
au BufNewFile,BufRead *.\(txt\)\@! inoremap ' ''<esc>:let leavechar="'"<cr>i

imap <m-l> <esc>:exec "normal f" . leavechar<cr>a
imap <d-l> <esc>:exec "normal f" . leavechar<cr>a


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => General Abbrevs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""My information
iab xdate <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
iab xname Teddy Fish
iab xspace ------------------------------------------------------
nnoremap <F5> "=strftime("%Y-%m-%d %H:%M:%S")<CR>gP

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Editing mappings etc.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap VIM 0
map 0 ^

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Files and backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn backup off
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable folding, I find it very useful
set nofen
set foldmethod=indent
set foldlevel=99
" SimpyIFold settings
let g:SimpylFold_docstring_preview=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Text options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType markdown,html setl shiftwidth=4 sts=4 ts=4
" 2017-06-30 13:30:40  markdown语法
let g:markdown_syntax_conceal = 0
autocmd FileType python setl ts=4 et sta sw=4 sts=4
"" PEP-8 friendly 2013-12-16 22:22:52 
"" see http://segmentfault.com/q/1010000000170746
let python_highlight_all = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Plugin configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""
"" => Python section
"""""""""""""""""""""""""""""""
"按F5运行python"
function! RunPython()
	let mp = &makeprg 
	let ef = &errorformat 
	let exeFile =expand("%:t") 
	setlocal makeprg=python\ -u
       	set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m 
	silent make %
       	copen
       	let &makeprg = mp
       	let &errorformat = ef
endfunction
map <F5> :call RunPython()<CR>

"Run in the Python interpreter
function! Python_Eval_VSplit() range
  let src = tempname()
  let dst = tempname()
  execute ": " . a:firstline . "," . a:lastline . "w " . src
  execute ":!python " . src . " > " . dst
  execute ":pedit! " . dst
endfunction
au FileType python vmap <F7> :call Python_Eval_VSplit()<cr> 
"au FileType python map <leader>r :call Python_Eval_VSplit()<cr> 
" use templates for new .py file
autocmd BufNewFile *.py 0r ~/.vim/templates/python_tpl.py
  """""""""""""""""""""""""""""""
  " => Python
  """""""""""""""""""""""""""""""
  autocmd FileType python inorea <buffer> cfun <c-r>=IMAP_PutTextWithMovement("def <++>(<++>):\n<++>\nreturn <++>")<cr>
  autocmd FileType python inorea <buffer> cclass <c-r>=IMAP_PutTextWithMovement("class <++>:\n<++>")<cr>
  autocmd FileType python inorea <buffer> cfor <c-r>=IMAP_PutTextWithMovement("for <++> in <++>:\n<++>")<cr>
  autocmd FileType python inorea <buffer> cif <c-r>=IMAP_PutTextWithMovement("if <++>:\n<++>")<cr>
  autocmd FileType python inorea <buffer> cifelse <c-r>=IMAP_PutTextWithMovement("if <++>:\n<++>\nelse:\n<++>")<cr>

" YCM settings --  
" 往前跳为C-O往后为C-I
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>gd  :YcmCompleter GoToDeclaration<CR>
map <leader>gf  :YcmCompleter GoToDefinition<CR>
map <leader>gg  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"python with virtualenv support
"YCM will use the first python executable it finds in the PATH to run jedi. This means that if you are in a virtual environment and you start vim in that directory, the first python that YCM will find will be the one in the virtual environment, so jedi will be able to provide completions for every package you have in the virtual environment.
let g:ycm_python_binary_path = 'python3'
let g:ycm_filetype_blacklist = {'vimwiki': 1, 'md': 1}
" 开始补全的字符数
let g:ycm_min_num_of_chars_for_completion=2
" 禁止缓存匹配项
let g:ycm_cache_omnifunc=0
" 字符串中也开启补全
let g:ycm_complete_in_strings=1
" 是否在注释中也开启补全
let g:ycm_complete_in_comments=1
" 支持Python3引用 2020-03-01 01:09:06 
let g:ycm_python_interpreter_path = ''
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'

" Ultisnips settings
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" NERDTree 设置
map <leader>n :NERDTreeToggle<CR>
let NERDTreeWinSize=24
let NERDTreeIgnore=['\.pyc', '\.swp', '\~']
" tagbar
nmap <F4> :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=28                          " Default is 40, seems too wide
noremap <leader>y :TagbarToggle<CR>       " Display panel with y (or ,y)
" python_pep8_indent 配置
"let g:python_pep8_indent_multipline_string=-2

" python-mode Settings {{{
hi pythonSelf ctermfg=174 guifg=#6094DB cterm=bold gui=bold
" 2020-03-01 13:37:44 python3 as default
let g:pymode_python = 'python3'
" 2020-03-01 13:41:13 support vim motion
let g:pymode_motion = 1

let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_doc = 0
let g:pymode_folding = 0
" 2018-05-12 13:47:15 pep8 indent style
let g:pymode_indent = 1
" enable automatic virtualenv detection
let g:pymode_virtualenv = 1
" run code
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>r'
" 2018-05-12 13:53:26 
let g:pymode_lint = 0
"let g:pymode_lint_write = 0
" }}}
" ale
" 在进入的时候不检查文件语法
let g:ale_lint_on_enter = 0
" 使用quickfix来替换loclist，并打开窗口显示相应的信息
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
" let g:ale_open_list = 1
" 让窗口一直打开着
"let g:ale_keep_list_window_open = 1
" support mouse copy
if has('mouse')
	set mouse-=a
endif
