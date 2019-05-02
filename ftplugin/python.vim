" jedi-vim
"let g:jedi#auto_initialization = 1
"let g:jedi#auto_vim_configuration = 1
"let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"
let g:jedi#smart_auto_mappings = 0


" Template file for new python files
"autocmd BufNewFile test*.py 0r ~/.vim/templates/python/test.template
autocmd bufnewfile *.py 0r ~/.vim/templates/python/default.template

" ------------- Shortcuts
" Python
noremap <C-K> :!ipython<CR>
noremap <C-L> :!python3 %<CR>

noremap <F8> :!nosetests --rednose %<CR>

" DJando manage test
noremap <C-b> :!clear && python $VIRTUAL_ENV/manage.py test<CR>

" Flake8
"autocmd BufWritePost *.py call Flake8()

" --- intelisense menu color
highlight Pmenu ctermfg=Black ctermbg=Grey cterm=None guifg=White guibg=DarkBlue
highlight PmenuSel ctermfg=White ctermbg=Blue cterm=Bold guifg=White guibg=DarkBlue gui=Bold
"highlight Pmenu ctermfg=0 ctermbg=6 guibg=#444444
"highlight PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff
highlight Visual ctermfg=White ctermbg=Black guifg=#8080ff guibg=fg gui=reverse

" Python syntax Comment color
"hi Comment  guifg=#80a0ff ctermfg=darkred
hi Comment  guifg=#80a0ff ctermfg=darkgray

autocmd SessionLoadPost * hi User1 guifg=#112005 guibg=#009099

"set cursorcolumn
set cursorline
set relativenumber

set laststatus=2

"Debug
" type ,p to insert breakpoint. ^[ is at the end.  Insert with ctrl v and then esc
" (the github web gui doesn't display control characters, but it is there)
nnoremap <leader>p oimport ipdb;ipdb.set_trace()
" type ,w to wipe the whole line clean but keep the \n
nnoremap <leader>W 0d$

if has('python')
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

