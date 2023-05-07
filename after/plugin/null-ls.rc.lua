local status, null_ls = pcall(require, 'null_ls')
if (not status) then return end

local cmdapi = vim.api.nvim_command
null_ls.setup {
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      cmdapi [[augroup Format]]
      cmdapi [[augroup autocmd! * <buffer>]]
      cmdapi [[augroup autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]
      cmdapi [[augroup END]]
    end
  end,
  sources = {
    null_ls.builtins.diagnostics.eslint_d.with({
      diagnostics_format = '[eslint] #{m}\n(#{c})'
    }),
    null_ls.builtins.diagnostics.fish
  }
}
