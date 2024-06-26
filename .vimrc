imap jj <Esc>

"   Allow mouse dragging
set ttymouse=xterm2 

set mouse=a
set t_Co=256
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <S-h> :call ToggleHiddenAll()<CR>


 function CenterPane()
   lefta vnew
   wincmd w
   exec 'vertical resize '. string(&columns * 0.75)
 endfunction

nnoremap <leader>h :call ToggleCursor()<CR>

function! ToggleCursor()
    if &t_ve == ""
        set t_ve&  " Hide cursor
    else
        set t_ve=  " Show cursor
    endif
    redraw!
endfunction



"   set tabbing
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab


set smartindent



syntax enable
set background=light " or light, depending on the color scheme
highlight clear
highlight Normal ctermfg=black ctermbg=white
highlight Comment ctermfg=darkgrey ctermbg=white
highlight Constant ctermfg=black ctermbg=white cterm=bold
highlight Identifier ctermfg=black ctermbg=white cterm=bold
highlight Statement ctermfg=black ctermbg=white cterm=bold
highlight PreProc ctermfg=black ctermbg=white cterm=bold
highlight Type ctermfg=black ctermbg=white cterm=bold
highlight Special ctermfg=black ctermbg=white cterm=bold
highlight Underlined ctermfg=black ctermbg=white cterm=underline
highlight Ignore ctermfg=white ctermbg=white
highlight Error ctermfg=black ctermbg=white cterm=bold
highlight Todo ctermfg=black ctermbg=white cterm=bold


"  hide tildes 
hi EndOfBuffer ctermfg=white

"  copy to clipboard
vnoremap <C-c> "*y


