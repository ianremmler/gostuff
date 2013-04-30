let &l:tags = &tags . "," . $GOPATH . "/tags"

setlocal commentstring=//\ %s makeprg=go tabstop=4 shiftwidth=4

noremap <LocalLeader>go :make 

noremap <silent> <LocalLeader>gd :Godoc <C-R><C-A><cr>
noremap <silent> <LocalLeader>gf :Fmt<cr>
noremap <silent> <LocalLeader>gr :make run %<cr>

noremap <silent> <LocalLeader>gb :make build -v<cr>
noremap <silent> <LocalLeader>gB :make build -a -v<cr>
noremap <silent> <LocalLeader>gg :make get -v<cr>
noremap <silent> <LocalLeader>gG :make get -a -u -v<cr>
noremap <silent> <LocalLeader>gi :make install -v<cr>
noremap <silent> <LocalLeader>gI :make install -a -v<cr>
noremap <silent> <LocalLeader>gl :make list<cr>
noremap <silent> <LocalLeader>gt :make test<cr>
noremap <silent> <LocalLeader>gT :make test -v<cr>

noremap <silent> <LocalLeader>Gb :make build -v ./...<cr>
noremap <silent> <LocalLeader>GB :make build -a -v ./...<cr>
noremap <silent> <LocalLeader>Gg :make get -v ./...<cr>
noremap <silent> <LocalLeader>GG :make get -a -u -v ./...<cr>
noremap <silent> <LocalLeader>Gi :make install -v ./...<cr>
noremap <silent> <LocalLeader>GI :make install -a -v ./...<cr>
noremap <silent> <LocalLeader>Gl :make list ./...<cr>
noremap <silent> <LocalLeader>Gt :make test ./...<cr>
noremap <silent> <LocalLeader>GT :make test -v ./...<cr>
