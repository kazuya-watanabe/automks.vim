if get(g:, 'loaded_automks', 0)
    finish
endif

let g:loaded_automks = 1

command -nargs=0 AutomksEnable call automks#enable()
command -nargs=0 AutomksDisable call automks#disable()
command -nargs=0 AutomksToggle call automks#toggle()
command -nargs=0 AutomksStatus call automks#status()

augroup automks
    autocmd!
    autocmd VimLeave * call automks#run_mks()
augroup END
