function! rerun#TriggerSaveAndRun()
    execute 'wa'
    let bytecode = system("touch ~/.run/last_run") 
endfunction
