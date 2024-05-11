" General Vim settings
set number
set relativenumber
set tabstop=4
set shiftwidth=4
set autoindent
set ruler
set list
set listchars=tab:>-
syntax on

" Enhance comment formatting
set formatoptions+=r
set comments=sr:/*,mb:*,ex:*/,b:**

" Define comment leaders for automatic formatting, adjusting the configuration for comments
au BufNewFile,BufRead * set comments=sr:/*,mb:*,ex:*/,b:**

function! InsertFunctionComment()
  let current_line = line(".")
  call append(current_line, "/*")
  call append(current_line + 1, "** @description")
  call append(current_line + 2, "** Function description.")
  call append(current_line + 3, "**")
  call append(current_line + 4, "** @param")
  call append(current_line + 5, "** paramName Description of the parameter.")
  call append(current_line + 6, "**")
  call append(current_line + 7, "** @return")
  call append(current_line + 8, "** Description of the return value.")
  call append(current_line + 9, "*/")
  call append(current_line + 10, "")
  call cursor(current_line + 3, 999)  " Moves the cursor to the end of the 'Function description.' line
endfunction

" Map a key to insert the function comment template
nnoremap <leader>fc :call InsertFunctionComment()<CR>

" Map Ctrl-c to toggle comment visibility
nnoremap <C-c> :set invlist<CR>
