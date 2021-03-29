" File:      init.vim (for nvim)                                                          
" Author:    Psycoder01

let g:mapleader =','
set encoding=UTF-8

let g:is_win = has('win32') || has('win64')
let g:is_linux = has('unix') && !has('macunix')
let g:is_mac = has('macunix')

" ======Plugin======                                            
runtime plugins.vim

" ======Plugin Settings======
runtime plug-settings.vim

" ======Commands======
runtime settings.vim

" ======Maps======                              
runtime! mappings.vim                                                                      


