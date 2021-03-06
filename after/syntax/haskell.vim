setlocal autoindent
setlocal nocindent
setlocal expandtab

setlocal include="^\s*import\s\+\(qualified\s\+\)\?\zs[^ \t]\+\ze"
setlocal includeexpr=substitute(v:fname,'\\.','/','g').'.hs'

highlight hsComment term=NONE ctermfg=cyan

nnoremap <buffer> K <Nop>

" Insert a separating line
nnoremap <buffer> <LocalLeader>- ^80i-<Esc>^llR<Space>

" Insert a Haddock comment
nnoremap <buffer> --\| O--<Space>\|<Space>

" Pragmas
nnoremap <buffer> <localleader>l O{-# LANGUAGE  #-}<Esc>hhhi
nnoremap <buffer> <localleader>#i O{-# INLINE #-}<Esc>hhhi

" Insert an import declaration
nnoremap <buffer> <localleader>i Oimport 

" Set the tab size
setlocal tabstop=2
setlocal shiftwidth=2
