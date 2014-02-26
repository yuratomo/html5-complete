css3-complete
=================
Vim omnifunc for css3.

Install
-------
Set your .vimrc as follows.

    " Vundle
    Bundle 'yuratomo/css3-complete'

Settings
--------
Set your .vimrc as follows.
### autoload java-api-complete
    au BufNewFile,BufRead *.html    setl omnifunc=css3#complete
    
### show status refarence
    au CompleteDone *.html          call css3#showRef()
    au BufNewFile,BufRead *.html    inoremap <expr> <c-down> css3#nextRef()
    au BufNewFile,BufRead *.html    inoremap <expr> <c-up>   css3#prevRef()

ScreenShots
----------
