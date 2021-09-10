" Color syntax higlighting
syntax on

set background=light

" Change cursor style based on mode
:autocmd InsertEnter,InsertLeave * set cul!
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
