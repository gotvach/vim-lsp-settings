augroup vim_lsp_settings_puppet-languageserver
  au!
  LspRegisterServer {
      \ 'name': 'puppet-languageserver',
      \ 'cmd': {server_info->lsp_settings#get('puppet-languageserver', 'cmd', [lsp_settings#exec_path('puppet-languageserver'), '--stdio'])},
      \ 'root_uri':{server_info->lsp_settings#get('puppet-languageserver', 'root_uri', lsp_settings#root_uri('puppet-languageserver'))},
      \ 'initialization_options': lsp_settings#get('puppet-languageserver', 'initialization_options', {'diagnostics': 'true'}),
      \ 'allowlist': lsp_settings#get('puppet-languageserver', 'allowlist', ['ruby', 'puppet']),
      \ 'blocklist': lsp_settings#get('puppet-languageserver', 'blocklist', []),
      \ 'config': lsp_settings#get('puppet-languageserver', 'config', lsp_settings#server_config('puppet-languageserver')),
      \ 'workspace_config': lsp_settings#get('puppet-languageserver', 'workspace_config', {}),
      \ 'semantic_highlight': lsp_settings#get('puppet-languageserver', 'semantic_highlight', {}),
      \ }
augroup END
