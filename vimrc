set tabstop=4
set softtabstop=4
set autoindent
set expandtab
set shiftwidth=4
"set mouse=a

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

if has("autocmd")
  filetype indent on
  autocmd FileType make set noexpandtab
endif

filetype plugin on
set ofu=syntaxcomplete#Complete

set number
set ruler

set nolinebreak
set showmatch
set shortmess=atI
if has("autochdir")
  set autochdir
endif

syntax on

"记住上次打开的位置
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
