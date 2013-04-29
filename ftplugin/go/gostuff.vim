let &l:tags = &tags . "," . $GOPATH . "/tags"

setlocal commentstring=//\ %s makeprg=go tabstop=4 shiftwidth=4
setlocal errorformat+=gotest:\ parse\ error:\ %f:%l:%c:\ %m

noremap <silent> <LocalLeader>gd :Godoc <C-R><C-A><cr>
noremap <silent> <LocalLeader>gf :Fmt<cr>
noremap <silent> <LocalLeader>gr :make run %<cr>
noremap <silent> <LocalLeader>gt :make test ./...<cr>
noremap <silent> <LocalLeader>gT :make test -v ./...<cr>
noremap <silent> <LocalLeader>gb :make build -v ./...<cr>
noremap <silent> <LocalLeader>gB :make build -a -v ./...<cr>
noremap <silent> <LocalLeader>gi :make install -v ./...<cr>
noremap <silent> <LocalLeader>gI :make install -a -v ./...<cr>
noremap <silent> <LocalLeader>gg :make get -v ./...<cr>
noremap <silent> <LocalLeader>gG :make get -a -u -v ./...<cr>
noremap <silent> <LocalLeader>gl :make list ./...<cr>
