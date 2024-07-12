function FormatPowershell()
    let buffPath = expand('%:p')
    w
    execute(':%! pwsh -nop -Command "& {invoke-formatter -scriptdefinition $(get-content ' . buffPath . ' -raw)}"')
    w
endfunction

function Check()
    let buffContents = join(getline(1, '$'), "\n")
    let buffContents2 = "\\'" . buffContents . "\\'"
    let executeCmd = ":! pwsh -nop -Command \"& {invoke-formatter -scriptdefinition " . buffContents2 . "}\""
    let buffContentsFmt = execute(executeCmd)
endfunction

function! GetBufferContents()
    " Join all lines from line 1 to the last line ('$') with a newline character
    let contents = join(getline(1, '$'), "\n")
    return contents
endfunction
