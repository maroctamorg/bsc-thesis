let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/studies/thesis/bsc-thesis/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd chapters/geometric-algebra.tex
$argadd ../brainstorm/topic-structure.txt
set stal=2
tabnew
tabnew
tabnew
tabnew
tabrewind
edit chapters/geometric-algebra.tex
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 33 + 18) / 37)
exe 'vert 1resize ' . ((&columns * 105 + 105) / 211)
exe '2resize ' . ((&lines * 33 + 18) / 37)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
argglobal
let s:l = 15 - ((14 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 0
wincmd w
argglobal
2argu
balt chapters/geometric-algebra.tex
let s:l = 1 - ((0 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe '1resize ' . ((&lines * 33 + 18) / 37)
exe 'vert 1resize ' . ((&columns * 105 + 105) / 211)
exe '2resize ' . ((&lines * 33 + 18) / 37)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
tabnext
edit thesis.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
1argu
if bufexists("thesis.tex") | buffer thesis.tex | else | edit thesis.tex | endif
balt chapters/geometric-algebra.tex
let s:l = 105 - ((34 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 105
normal! 09|
tabnext
edit title.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("title.tex") | buffer title.tex | else | edit title.tex | endif
balt thesis.tex
let s:l = 3 - ((2 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 020|
tabnext
edit ../res/references.bib
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("../res/references.bib") | buffer ../res/references.bib | else | edit ../res/references.bib | endif
balt thesis.tex
let s:l = 1 - ((0 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
tabnext
edit chapters/even-divisibility.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("chapters/even-divisibility.tex") | buffer chapters/even-divisibility.tex | else | edit chapters/even-divisibility.tex | endif
balt ../res/references.bib
let s:l = 6 - ((5 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 023|
tabnext 2
set stal=1
badd +1 chapters/geometric-algebra.tex
badd +1 ../brainstorm/topic-structure.txt
badd +0 thesis.tex
badd +0 ../res/references.bib
badd +0 title.tex
badd +8 chapters/even-divisibility.tex
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
