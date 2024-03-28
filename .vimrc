" @autor: josuerom
syntax enable
set background=dark
set clipboard=unnamedplus
set smartindent
set autoindent
set tabstop=3
set shiftwidth=3
set expandtab
set number
set mouse=a
set laststatus=2

autocmd FileType cpp :call RunCpp()
autocmd FileType java :call RunJava()

" solo compilar. <F5>
" ejecutar con entrada por archivo. <F6>
" ejecutar con entrada manual. <Ctrl + r>
" para c++ >= 11
function! RunCpp()
   nmap <f5> :w<CR> :!clear && g++ -std=c++17 -O2 -DLOCAL % -o ~/workspace/bin/sol<CR>
   imap <f5> <Esc> :w<CR> :!clear && g++ -std=c++17 -O2 -DLOCAL % -o ~/workspace/bin/sol<CR>
   nmap <C-r> :w<CR> :!clear && ~/workspace/bin/sol<CR>
   imap <C-r> <Esc> :w<CR> :!clear && ~/workspace/bin/sol<CR>
   nmap <f6> :w<CR> :!clear && ~/workspace/bin/sol <in1
   imap <f6> <Esc> :w<CR> :!clear && ~/workspace/bin/sol <in1
   nmap <f7> :w<CR> :tabnew in1
   imap <f7> <Esc> :w<CR> :tabnew in1
   tmap <f9> ~/workspace/bin/sol<CR>
endfunction

" compilar & ejecutar con entrada por archivo. <F6>
" compilar & ejecutar con entrada manual. <Ctrl + r>
" para java >= 11
function! RunJava()
   nmap <C-r> :w<CR> :!clear && java %<CR>
   imap <C-r> <Esc> :w<CR> :!clear && java %<CR>
   nmap <f6> :w<CR> :!clear && java % <in1
   imap <f6> <Esc> :w<CR> :!clear && java % <in1
   nmap <f7> :w<CR> :tabnew in1
   imap <f7> <Esc> :w<CR> :tabnew in1
   tmap <f9> java %<CR>
endfunction

nmap <c-s> :w<CR> " <Ctrl + s> para guardar
imap <c-s> <Esc> :w<CR>
nmap <c-q> :wq!<CR> " para cerrar
imap <c-q> <Esc> :wq!<CR>

" instale xclip para copiar el contenido de todo el archivo con <Ctrl + a>
nmap <C-S-A> ggVG:w !xclip -i -selection clipboard<CR> :echo 'File all copied!'<CR>
imap <C-S-A> <Esc>:w<CR> ggVG:w !xclip -i -selection clipboard<CR> :echo 'File all copied!'<CR>

let mapleader = " "
nmap <Leader>r :source ~/.vimrc<CR>
nmap <Leader>v :edit ~/.vimrc<CR>
nmap <Leader>e :Explore<CR>
nmap <Leader>l :bnext<CR>
nmap <Leader>dl :bdelete<CR>
nmap <Leader>nf :tabnew 
nmap <Leader>t :terminal<CR>
nmap <Leader>tt 23Gi// <Esc>14G

" comentar/descomentar línea en modo normal e insert
nmap }} :call CommentLine()<CR>
imap }} <C-o>:call CommentLine()<CR>
function! CommentLine()
  let current_line = line('.')
  let line_content = getline(current_line)
  if line_content =~ '^\s*\/\/'
    execute 's/^\s*\/\/\s\?//'
  else
    execute 's@^\(.*\)@\// \1@'
  endif
endfunction
