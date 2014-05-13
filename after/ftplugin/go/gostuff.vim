setlocal tabstop=4 shiftwidth=4 makeprg=go

let g:go_auto_type_info = 0

noremap <silent> <LocalLeader>gl :GoLint<cr>
noremap <silent> <LocalLeader>gd :GoDoc<cr>
noremap <silent> <LocalLeader>gw :GoDocBrowser<cr>
noremap <silent> <LocalLeader>gf :GoFmt<cr>
noremap <silent> <LocalLeader>gv :GoVet<cr>
noremap <silent> <LocalLeader>g] :GoDef<cr>
noremap <silent> <LocalLeader>gr :GoRun<cr>
noremap <silent> <LocalLeader>gb :GoBuild<cr>
noremap <silent> <LocalLeader>gi :GoInstall<cr>
noremap <silent> <LocalLeader>gt :GoTest<cr>
noremap <silent> <LocalLeader>ge :GoErrCheck<cr>
noremap <silent> <LocalLeader>gn :GoInfo<cr>
noremap <silent> <LocalLeader>god :GoOracleDescribe<cr>
noremap <silent> <LocalLeader>goc :GoOracleCallers<cr>
noremap <silent> <LocalLeader>goC :GoOracleCallees<cr>
noremap <silent> <LocalLeader>gog :GoOracleCallgraph<cr>
noremap <silent> <LocalLeader>goi :GoOracleImplements<cr>
noremap <silent> <LocalLeader>gop :GoOracleChannelPeers<cr>
