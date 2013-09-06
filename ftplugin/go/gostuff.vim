let &l:tags = &tags . "," . $GOPATH . "/tags"

setlocal makeprg=go tabstop=4 shiftwidth=4

function! s:GoLint(path)
	cexpr system("golint " . shellescape(expand(a:path)))
	copen
endfunction

function! s:GoVet(path)
	cexpr system("go vet " . shellescape(expand(a:path)))
	copen
endfunction

command! -buffer GoLint :call s:GoLint('%')
command! -buffer GoLintDir :call s:GoLint('%:p:h')
command! -buffer GoVet :call s:GoVet('%')
command! -buffer GoVetDir :call s:GoVet('./...')

noremap <LocalLeader>go :make 

noremap <silent> <LocalLeader>gd :Godoc<cr>
noremap <silent> <LocalLeader>gf :Fmt<cr>
noremap <silent> <LocalLeader>gr :make run %<cr>
noremap <silent> <LocalLeader>g] :tag <C-R><C-A><cr>
noremap <silent> <LocalLeader>G] :!gotags<cr>

noremap <silent> <LocalLeader>gb :make build -v<cr>
noremap <silent> <LocalLeader>gB :make build -a -v<cr>
noremap <silent> <LocalLeader>gg :make get -v<cr>
noremap <silent> <LocalLeader>gG :make get -a -u -v<cr>
noremap <silent> <LocalLeader>gi :make install -v<cr>
noremap <silent> <LocalLeader>gI :make install -a -v<cr>
noremap <silent> <LocalLeader>gl :GoLint<cr>
noremap <silent> <LocalLeader>gL :make list<cr>
noremap <silent> <LocalLeader>gt :make test<cr>
noremap <silent> <LocalLeader>gT :make test -v<cr>
noremap <silent> <LocalLeader>gv :GoVet<cr>

noremap <silent> <LocalLeader>Gb :make build -v ./...<cr>
noremap <silent> <LocalLeader>GB :make build -a -v ./...<cr>
noremap <silent> <LocalLeader>Gg :make get -v ./...<cr>
noremap <silent> <LocalLeader>GG :make get -a -u -v ./...<cr>
noremap <silent> <LocalLeader>Gi :make install -v ./...<cr>
noremap <silent> <LocalLeader>GI :make install -a -v ./...<cr>
noremap <silent> <LocalLeader>Gl :GoLintDir<cr>
noremap <silent> <LocalLeader>GL :make list ./...<cr>
noremap <silent> <LocalLeader>Gt :make test ./...<cr>
noremap <silent> <LocalLeader>GT :make test -v ./...<cr>
noremap <silent> <LocalLeader>Gv :GoVetDir<cr>
