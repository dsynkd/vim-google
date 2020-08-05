" vim-google
com! -nargs=+ Google call Google(<q-args>)
fu! Google(args)
	tabedit Google
	execute "%!http get 'https://customsearch.googleapis.com/customsearch/v1?key=AIzaSyDfpda54XpFJdQ4xcnqsL07LJlVfjMJAss&cx=012140110490785139250:v8c1dh6zbke&q=" . a:args . "' | jq -r '.items[].link'"
	%s/https\?:\/\/\(w\{3\}\.\)\?/@ /
endf
nmap <c-g> :Google 
