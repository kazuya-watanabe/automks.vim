function! s:get_status() abort
    return get(g:, 'automks_enabled', 0)
endfunction

function! automks#status() abort
    if s:get_status()
        echo "automks is enabled"
    else
        echo "automks is disabled"
    endif
endfunction

function! automks#enable() abort
    let g:automks_enabled = 1
endfunction

function! automks#disable() abort
    let g:automks_enabled = 0
endfunction

function! automks#toggle() abort
    if s:get_status()
        call automks#disable()
    else
        call automks#enable()
    endif

    call automks#status()
endfunction

function! automks#run_mks() abort
    if s:get_status()
        silent! mksession!
    endif
endfunction
