set tabstop=4     " Width of a hard tabstop measured in spaces
set softtabstop=0 " Don't fill spaces to simulate tab stops
set shiftwidth=4  " Width of an indent in spaces
set expandtab     " Insert spaces instead of tab characters
set smarttab      " Make the tab key insert spaces or tabs to go to the next
                  " indent of the next tabstop when the cursor is at the
                  " beginning of a line

" Override tab size for certain files
autocmd Filetype jade       setlocal tabstop=2 shiftwidth=2
autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2
autocmd Filetype yaml       setlocal tabstop=2 shiftwidth=2

" Remove trailing whitespace for all files
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
