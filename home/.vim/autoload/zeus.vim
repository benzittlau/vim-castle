function! zeus#TestCurrentLine()
  " A regex for all files that you might want to test from
  let regex = '_spec\.rb$'
  let file = @%
  let check = matchstr(file, regex)
  wall " Write all
  if empty(check)
    " No Match
    call VimuxRunLastCommand()
  else
    " Match
    let test_string = "zeus test " . file . ":" . line(".")
    echom test_string
    call VimuxRunCommand(test_string)
  endif
endfunction

function! zeus#RunLastCommand()
  wall " Write all
  call VimuxRunLastCommand()
endfunction

function! zeus#TestFullFile()
  let file = @%
  let test_string = "zeus test " . file
  echom test_string
  wall " Write all
  call VimuxRunCommand(test_string)
endfunction
