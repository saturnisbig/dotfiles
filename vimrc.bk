"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer:	Teddy Fish<i.kenting at gmail.com>
" Version: 1.0
" Last Change: 2016-07-06 23:13:05
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
"fun! MySys()
"  if has("win32")
"    return "windows"
"  else
"    return "linux"
"  endif
"endfun

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
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'hynek/vim-python-pep8-indent'
"Plugin 'davidhalter/jedi-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" 这个插件可以显示文件的 Git 增删状态
"Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdtree'
" comment code
Plugin 'scrooloose/nerdcommenter'
" 全局搜索 
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'Valloric/YouCompleteMe'
" 启动后会自动折叠代码，蛋疼
 Plugin 'tmhedberg/SimpylFold'
" class method and function list
Plugin 'majutsushi/tagbar'
Plugin 'python-mode/python-mode'

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

"Fast saving
nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>

"Fast reloading of the .vimrc
"map <leader>s :source! ~/.vim/vimrc<cr>
"Fast editing of .vimrc
map <leader>e :e! ~/.vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vim/vimrc

" syntastic checker 2013-09-30 13:26:06 Teddy Fish 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers = ['flake8', 'pylint']
let g:syntastic_python_checkers = []

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
"
"""syntax": "markdown"
"
"let g:molokai_original=0
"let g:rehash256=1
"
""Set font to Monaco 10pt
"if MySys() == "mac"
"  set gfn=Bitstream\ Vera\ Sans\ Mono:h14
"  set nomacatsui
"  set termencoding=macroman
"elseif MySys() == "linux"
"  "set gfn=Monospace\ 11
"  "set gfn=Inconsolata-g\ 12
"  "set gfn=Panic\ Sans\ 12
"  "set gfn=Monaco\ 12
"  set gfn=Anonymous\ Pro\ 12
"  set guifontwide=WenQuanYi\ Zen\ Hei\ 12
"  "set guifontwide=WenQuanYi\ Micro\ Hei\ 11
"elseif MySys() == "windows"
"  "set guifont=Courier_New:h12:cANSI
"  au BufRead set guifontwide=Consolas:h12
"  set guifont=Consolas:h12,\ Courier_New:h12:cANSI
"  "set guifont=Courier_New:h12:cANSI
"  "au GUIEnter * simalt ~x "maxize
"  "set gfn=Consolas\ 14
"  "set gfn=Inconsolata\ 14
"endif
"
if has("gui_running")
  set guioptions-=T
  set background=dark
  "colorscheme molokai
  colorscheme solarized
else
  "set background=light
  set background=dark
  if(strftime("%w") == 0 || strftime("%w") == 1)
    "colorscheme molokai
    colorscheme zenburn
  elseif(strftime("%w") == 2 || strftime("%w") == 3)
    colorscheme molokai
     "colorscheme Tomorrow-Night
     "colorscheme tango
  elseif(strftime("%w") == 4)
     colorscheme peaksea
  else
    colorscheme Tomorrow-Night-Eighties
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

"autocmd BufEnter * :syntax sync fromstart
"
""Highlight current
"if has("gui_running")
"  set cursorline
"  hi cursorline guibg=#333333 
"  hi CursorColumn guibg=#333333
"endif
"
""Omni menu colors
""hi Pmenu guibg=#333333
""hi PmenuSel guibg=#555555 guifg=#ffffff
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Fileformats
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Favorite filetypes
set ffs=unix,dos,mac

"nmap <leader>fd :se ff=dos<cr>
"nmap <leader>fu :se ff=unix<cr>
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => VIM userinterface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Set 7 lines to the curors - when moving vertical..
"set so=7
"
""Turn on WiLd menu
""set wildmenu
"
""Always show current position
"set ruler
"
""The commandbar is 2 high
"set cmdheight=2
"
""Show line number, and relativenumber
set nu
set relativenumber

""Do not redraw, when running macros.. lazyredraw
""set lz
"
""Change buffer - without saving
"set hid
"
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
"set t_vb=
"
""show matching bracets
"set showmatch
"
""How many tenths of a second to blink
"set mat=2
"
"Highlight search things
set hlsearch

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
"Always hide the statusline
"The default setting of 'laststatus' is for the statusline to not appear until a split is created. If you want it to appear all the time, add the following to your vimrc: set laststatus=2
set laststatus=2

"function! CurDir()
"  "let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
"  let curdir = substitute(getcwd(), '/Users/teddy/', "~/", "g")
"  return curdir
"endfunction
"
""Format the statusline
""set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
"" 2011年10月30日 10:47:48  add the fileencoding support http://vim.wikia.com/wiki/Show_fileencoding_and_bomb_in_the_status_line
""set statusline=\ %f%m%r%h\ %y%{\"[\".(&fenc==\"\"?&enc:&fenc).\"]\"}\ \ CWD:\ %r%{CurDir()}%h\ \ Line:\ %l/%L:%c
"
"
"
"""""""""""""""""""""""""""""""
"" => Visual
"""""""""""""""""""""""""""""""
""Basically you press * or # to search for the current selection !! Really useful
"vnoremap <silent> * :call VisualSearch('f')<CR>
"vnoremap <silent> # :call VisualSearch('b')<CR>
"
"
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

""Actually, the tab does not switch buffers, but my arrows
""Bclose function ca be found in "Buffer related" section
""map <leader>bd :Bclose<cr>
""map <down> <leader>bd
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
"iab tdate <c-r>=strftime("=%d%m%Y")<cr>
"
"iab xname Amir Salihefendic
"iab xdate <c-r>=strftime("%Y年%m月%d日 %H:%M:%S")<cr>
nnoremap <F5> "=strftime("%Y-%m-%d %H:%M:%S")<CR>gP



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Editing mappings etc.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap VIM 0
map 0 ^
"
""Move a line of text using control
""nmap <M-j> mz:m+<cr>`z
""nmap <M-k> mz:m-2<cr>`z
""vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
""vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
" 将多余的空白字符标出来, Teddy Fish 2016-07-06 23:29:43 
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

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
"nnoremap <space> za

" SimpyIFold settings
let g:SimpylFold_docstring_preview=1
autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Text options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set expandtab
"set shiftwidth=2
"
"map <leader>t2 :set shiftwidth=2<cr>
"map <leader>t4 :set shiftwidth=4<cr>
"au FileType vim,javascript setl shiftwidth=2
"au FileType vim,javascript setl tabstop=2
"au FileType java,php setl shiftwidth=4
"au FileType java,php setl tabstop=4
" tabstop for HTML and JS CSS - 2016-07-06 23:27:20
"au BufNewFile,BufRead *.js, *.html, *.css
"\ set tabstop=2
"\ set softtabstop=2
"\ set shiftwidth=2
" for Markdown syntax 
autocmd FileType markdown,html setl shiftwidth=4 sts=4 ts=4
" Teddy Fish added for python indent 2016-07-06 23:25:49 
"autocmd BufNewFile,BufRead *.py
"\ set tabstop=4
"\ set softtabstop=4
"\ set shiftwidth=4
"\ set textwidth=79
"\ set expandtab
"\ set autoindent
"\ set fileformat=unix
"\ let python_highlight_all=1
autocmd FileType python setl ts=4 et sta sw=4 sts=4
"" PEP-8 friendly 2013-12-16 22:22:52 
"" see http://segmentfault.com/q/1010000000170746
"autocmd FileType python set textwidth=79 
" turn on python syntax highlight 2012年04月12日 01:04:17 
let python_highlight_all = 1
""set iskeyword+=:
"
"set smarttab
"set lbr
"set tw=500
""Teddy Fish 2011年05月28日 15:17:31 
"set list
"set listchars=tab:▸\ ,eol:¬
""set listchars=tab:>- ,eol:<
"
"""""""""""""""""""""""""""""""
"" => Indent
"""""""""""""""""""""""""""""""
""Auto indent
"set ai
"
""Smart indet
"set si
"
""C-style indeting
"set cindent
"
""Wrap lines
"set wrap
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => Plugin configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""
"" => Python section
"""""""""""""""""""""""""""""""
""Run the current buffer in python - ie. on leader+space
""au FileType python so ~/vim_local/syntax/python.vim
"autocmd FileType python map <buffer> <leader><space> :w!<cr>:!python %<cr>
""autocmd FileType python so ~/vim_local/plugin/python_fold.vim
"
""Set some bindings up for 'compile' of python
"autocmd FileType python set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
"autocmd FileType python set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m
"
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
"
"
  """""""""""""""""""""""""""""""
  " => Python
  """""""""""""""""""""""""""""""
  autocmd FileType python inorea <buffer> cfun <c-r>=IMAP_PutTextWithMovement("def <++>(<++>):\n<++>\nreturn <++>")<cr>
  autocmd FileType python inorea <buffer> cclass <c-r>=IMAP_PutTextWithMovement("class <++>:\n<++>")<cr>
  autocmd FileType python inorea <buffer> cfor <c-r>=IMAP_PutTextWithMovement("for <++> in <++>:\n<++>")<cr>
  autocmd FileType python inorea <buffer> cif <c-r>=IMAP_PutTextWithMovement("if <++>:\n<++>")<cr>
  autocmd FileType python inorea <buffer> cifelse <c-r>=IMAP_PutTextWithMovement("if <++>:\n<++>\nelse:\n<++>")<cr>

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
let g:ycm_python_binary_path = 'python'
let g:ycm_filetype_blacklist = {'vimwiki': 1, 'md': 1}

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
let g:tagbar_width=26                          " Default is 40, seems too wide
noremap <leader>y :TagbarToggle<CR>       " Display panel with y (or ,y)
" python_pep8_indent 配置
let g:python_pep8_indent_multipline_string=-2
" python-mode
"hi pythonSelf ctermfg=174 guifg=#6094DB cterm=bold gui=bold
