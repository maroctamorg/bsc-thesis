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
tabnew
tabrewind
edit chapters/geometric-algebra.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
balt definitions/elements.tex
let s:l = 48 - ((19 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 48
normal! 039|
tabnext
edit ../../bsc-seminar/seminar.tex
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
2argu
if bufexists("../../bsc-seminar/seminar.tex") | buffer ../../bsc-seminar/seminar.tex | else | edit ../../bsc-seminar/seminar.tex | endif
balt proofs/inner-product.tex
let s:l = 33 - ((16 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 33
normal! 0
tabnext
edit ../../bsc-seminar/seminar.tex
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
exe 'vert 1resize ' . ((&columns * 105 + 105) / 211)
exe 'vert 2resize ' . ((&columns * 105 + 105) / 211)
argglobal
if bufexists("../../bsc-seminar/seminar.tex") | buffer ../../bsc-seminar/seminar.tex | else | edit ../../bsc-seminar/seminar.tex | endif
balt ../brainstorm/topic-structure.txt
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists("../brainstorm/topic-structure.txt") | buffer ../brainstorm/topic-structure.txt | else | edit ../brainstorm/topic-structure.txt | endif
balt ../../bsc-seminar/seminar.tex
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 105) / 211)
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
let s:l = 58 - ((6 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 58
normal! 027|
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
let s:l = 1 - ((0 * winheight(0) + 19) / 38)
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
let s:l = 6 - ((5 * winheight(0) + 19) / 38)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 0
tabnext 6
set stal=1
badd +15 chapters/geometric-algebra.tex
badd +1 ../brainstorm/topic-structure.txt
badd +1 thesis.tex
badd +3 title.tex
badd +1 ../res/references.bib
badd +6 chapters/even-divisibility.tex
badd +20 definitions/ga-axioms.tex
badd +18 definitions/ga-elements.tex
badd +213 ../../bsc-seminar/seminar.tex
badd +2 theorems/geometric-product.tex
badd +2 lemmas/inner-product.tex
badd +2 lemmas/exterior-product.tex
badd +4 proofs/geometric-product.tex
badd +7 proofs/inner-product.tex
badd +1 definitions/algebra.tex
badd +2 proofs/exterior-product.tex
badd +4 corollaries/orthogonality.tex
badd +1 theorems/even-subalgebra.tex
badd +3 theorems/homogeneous-product.tex
badd +4 definitions/g-inner-product.tex
badd +4 definitions/g-outer-product.tex
badd +1 corollaries/l-independence.tex
badd +3 corollaries/even-subalgebra.tex
badd +17 definitions/elements.tex
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
