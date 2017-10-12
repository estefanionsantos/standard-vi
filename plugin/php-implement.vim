    " https://github.com/ddelnano/implement.vim

function! DoIt()
    " move to the first component
    " Foo\Bar => move to the F
    call search('[[:alnum:]\\_]\+', 'bcW')
    let cur_class = expand("<cword>")
    echom "Current class is " . cur_class

    let tags = []

    try
        let tags = taglist("^".cur_class."$")

        if len(tags) < 1
            throw "No tag were found for class ".a:clazz."; is your tag file up to date? Tag files in use: ".join(tagfiles(),',')
        endif

        for tag in tags
            echo tag
        endfor

        exe "ptjump " . cur_class

        try
            wincmd P
        catch /.*/
            return
        endtry

        " Try to find interface or abstract class
        if search('\v^\s*interface\s+') > 0
            echo 'Found interface in file'
            let matches = GetFunctionSignature()
            echo matches
            bprevious
            call AppendFunctionListToClass(matches)
        else
            echo 'Could not find interface'
        endif

    catch /.*/
        " echoerr v:exception
        echohl v:exception
    endtry

endfunction

function! CreateFunctionDictionary(fnname, args, isAbstract)
    return {'name': a:fnname, 'args': a:args, 'isAbstract': a:isAbstract}
endfunction

function! GetFunctionArgsList(string)
    " Use matchstr and split
    let match = substitute(a:string, '\v[[:blank:]]', '', 'g')
    let match = matchstr(match ,'\v\(\$\w+(,\$\w+)*\)')
    return split(substitute(match, '\v[()]', '', 'g'), ',')
endfunction

" Extract method signatures in give php class / interface
function! ExtractMethodSignatures(class)
    
endfunction

function! GetFunctionSignature()
    let matches = []
    " For each line in the buffer look for interface / abstract functions
    for line in getline(1, '$')
        let match = matchstr(line, '\v(public||protected|private)\s+function\s+\w+\(.*\)')
        echo match

        " If match is found add it to matches list
        if empty(match) == 0
            call add(matches, match)
        endif
    endfor
    return matches
endfunction

function! AppendFunctionListToClass(functions)

    " Search for class definition and move cursor to line with }
    " \_ matches every character including new lines
    if search('\vclass\_.*\{\_.*}', 'e') > 0
        " Go above closing curly brace of class
        normal! k
        for fn in a:functions
            let pos = line('.')
            let indent = indent(pos)
            let spacing = repeat(' ', indent)
            call cursor(pos, indent)
            call append(pos, [spacing . '', spacing . fn, spacing .  '{', spacing . spacing . '// Add implementation', spacing . '}'])
        endfor
        normal! wq
        close
    else
        echom 'No class found to insert functions'
    endif
endfunction
