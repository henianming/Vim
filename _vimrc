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

"��������ʾ�ڸɴ�
set shortmess=atI
"��ʾ�к�
set nu
"��ɫ����
colorscheme delek
"���ø����������ǹ���
syntax reset
"�������弰��С
set guifont=Consolas:h11
"��ʾ״̬�����
set ruler
"���ñ���
set encoding=utf-8
set fileencoding=utf-8
"���״̬������
language message zh_CN.utf-8
"����˵�����
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"���벹ȫ
set completeopt=preview,menu
"Tab���
set tabstop=4
"ͳһ����Ϊ4
set softtabstop=4
set shiftwidth=4
"���ÿո�����Ʊ��
set noexpandtab
"���кͶο�ʼ��ʹ���Ʊ��
set smarttab
"��ֹ������ʱ�ļ�
set nobackup
set noswapfile
"�������Դ�Сд
set ignorecase
"�ر��Զ�����
set nowrap
"����״̬��
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
