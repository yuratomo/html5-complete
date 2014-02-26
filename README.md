html5-complete
=================
Vim omnifunc for html5.

Install
-------
Set your .vimrc as follows.

    " Vundle
    Bundle 'yuratomo/html5-complete'

Settings
--------
Set your .vimrc as follows.
### autoload java-api-complete
    au BufNewFile,BufRead *.html    setl omnifunc=html5#complete
    
### show status refarence
    au CompleteDone *.html          call html5#showRef()
    au BufNewFile,BufRead *.html    inoremap <expr> <c-down> html5#nextRef()
    au BufNewFile,BufRead *.html    inoremap <expr> <c-up>   html5#prevRef()

ScreenShots
----------
