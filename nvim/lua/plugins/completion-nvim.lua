local nvim_lsp = require'lspconfig'
local lsp_status = require('lsp-status')

lsp_status.register_progress()

local on_attach_vim = function(client, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  require'completion'.on_attach(client, bufnr)
  lsp_status.on_attach(client, bufnr)
end

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
local capabilities = lsp_status.capabilities
capabilities.textDocument.completion.completionItem.snippetSupport = true

nvim_lsp.rust_analyzer.setup{
    capabilities = capabilities,
    on_attach = on_attach_vim, 
    settings = {
        ['rust-analyzer'] = {
            cargo = {
                allFeatures = true,
            },
        },
    }
}

nvim_lsp.pyls.setup{
    capabilities = capabilities,
    on_attach=on_attach_vim, 
    cmd = {'pyls'}, 
    settings = {
        pyls = {
            configurationSources = { "pyflakes", "pycodestyle", "mypy"}
        }
    },
    root_dir = function(fname)
        local nvim_lsp = require'lspconfig';
		local filename = nvim_lsp.util.path.is_absolute(fname) and fname
			or nvim_lsp.util.path.join(vim.loop.cwd(), fname)
		local root_pattern = nvim_lsp.util.root_pattern('pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'mypy.ini', '.pylintrc', '.flake8rc', '.git', '.gitignore')
		return root_pattern(filename) or nvim_lsp.util.dirname(filename)
	end;
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    signs = true,
    underline = false,
    update_in_insert = false,
    virtual_text = true,
  }
)
