setlocal tabstop=4 shiftwidth=4

" noremap <LocalLeader>go :make 

noremap <silent> <LocalLeader>gl :GoLint<cr>
noremap <silent> <LocalLeader>gd :GoDoc<cr>
noremap <silent> <LocalLeader>gD :GoDocBrowser<cr>
noremap <silent> <LocalLeader>gf :GoFmt<cr>
noremap <silent> <LocalLeader>gv :GoVet<cr>
noremap <silent> <LocalLeader>g] <Plug>(go-def-split)
noremap <silent> <LocalLeader>gr :GoRun<cr>
noremap <silent> <LocalLeader>gb :GoBuild -v<cr>
noremap <silent> <LocalLeader>Gb :GoBuild -v ./...<cr>
noremap <silent> <LocalLeader>gi :GoInstall -v<cr>
noremap <silent> <LocalLeader>Gi :GoInstall -v ./...<cr>
noremap <silent> <LocalLeader>gt :GoTest<cr>
noremap <silent> <LocalLeader>gT :GoTest -v<cr>
noremap <silent> <LocalLeader>Gt :GoTest ./...<cr>
noremap <silent> <LocalLeader>GT :GoTest -v ./...<cr>
noremap <silent> <LocalLeader>ge :GoErrCheck<cr>
noremap <silent> <LocalLeader>gF :GoFiles<cr>
noremap <silent> <LocalLeader>gp :GoDeps<cr>
noremap <silent> <LocalLeader>god :GoOracleDescribe<cr>
noremap <silent> <LocalLeader>goc :GoOracleCallers<cr>
noremap <silent> <LocalLeader>goc :GoOracleCallees<cr>
noremap <silent> <LocalLeader>gog :GoOracleCallgraph<cr>
noremap <silent> <LocalLeader>goi :GoOracleImplements<cr>
noremap <silent> <LocalLeader>gop :GoOracleChannelPeers<cr>
noremap <silent> <LocalLeader>gg :!go get -v<cr>
noremap <silent> <LocalLeader>gG :!go get -u -v<cr>
noremap <silent> <LocalLeader>Gg :!go get -v ./...<cr>
noremap <silent> <LocalLeader>GG :!go get -u -v ./...<cr>
