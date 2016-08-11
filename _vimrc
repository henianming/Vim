set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

"启动不显示乌干达
set shortmess=atI
"显示行号
set nu
"配色方案
colorscheme delek
"设置高亮方案覆盖规则
syntax reset
"设置字体及大小
set guifont=Consolas:h11
"显示状态栏标尺
set ruler
"设置编码
set encoding=utf-8
set fileencoding=utf-8
"解决状态栏乱码
language message zh_CN.utf-8
"解决菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"代码补全
set completeopt=preview,menu
"Tab宽度
set tabstop=4
"统一缩进为4
set softtabstop=4
set shiftwidth=4
"不用空格代替制表符
set noexpandtab
"在行和段开始处使用制表符
set smarttab
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase
"关闭自动换行
set nowrap
"设置状态栏
set laststatus=2
hi User1 guifg=#FF0000 guibg=#000000
hi User2 guifg=#FF0000 guibg=#000000
hi User3 guifg=#FF0000 guibg=#000000
hi User4 guifg=#FF0000 guibg=#000000
hi User5 guifg=#FF0000 guibg=#000000
hi User6 guifg=#FF0000 guibg=#000000
hi User7 guifg=#FF0000 guibg=#000000
hi User8 guifg=#FF0000 guibg=#000000
hi User9 guifg=#FF0000 guibg=#000000
set statusline=%F\ [FORMAT=%1*%{&ff}%*:%1*%{&fenc!=''?&fenc:&enc}%*]
