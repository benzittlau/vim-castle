function! file_yank#GetCurrentFileAndLine()
  " A regex for all files that you might want to test from
  let file = @%
  let @* = file . ":" . line(".")
endfunction
