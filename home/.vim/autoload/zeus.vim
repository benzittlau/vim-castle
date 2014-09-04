function! zeus#TestCurrentLine()
  " A regex for all files that you might want to test from
  let regex = '_spec\.rb$'
  let file = @%
  let check = matchstr(file, regex)
  if empty(check)
    " No Match
    call VimuxRunLastCommand()
  else
    " Match
    let test_string = "zeus test " . file . ":" . line(".")
    echom test_string
    write
    call VimuxRunCommand(test_string)
  endif
endfunction

function! zeus#RunLastCommand()
  write
  call VimuxRunLastCommand()
endfunction

function! zeus#TestFullFile()
  let file = @%
  let test_string = "zeus test " . file
  echom test_string
  write
  call VimuxRunCommand(test_string)
endfunction
