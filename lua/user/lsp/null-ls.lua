local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.black.with({ extra_args = { "--fast" } }),
		formatting.stylua,
    formatting.eslint_d,
    diagnostics.eslint_d,
	},
})

vim.cmd([[
    augroup FormatAutogroup
        autocmd!
        autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.html,*.json,*.md lua vim.lsp.buf.format({ async = true })
    augroup END
]])

-- Optional: keybinding to save without formatting
vim.api.nvim_set_keymap('n', '<leader>s', ':Prettier<CR> | :w<CR>', { noremap = true, silent = true })

vim.g.rustfmt_autosave = 1
