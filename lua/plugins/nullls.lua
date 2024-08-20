local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.eslint_d.with { filetypes = {
            "typescript",
            "javascript",
            "typescriptreact",
            "javascriptreact"
        } },
        null_ls.builtins.formatting.lua_format,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.ltrs,
        null_ls.builtins.formatting.ruff,
        null_ls.builtins.diagnostics.pylint.with({
            diagnostics_postprogress = function(diagnostic)
                diagnostic.code = diagnostic.message_id
            end,
        }),
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.prettierd.with { filetypes = {
        "css",
        "scss",
        "less",
        "html",
        "json",
        "jsonc",
        "yaml",
        "markdown",
        "markdown.mdx",
        "graphql",
        "handlebars",
    },
}
    },
	on_attach = function(client, bufnr)
        if client.supports_method("textdocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("bufwritepre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ 
						bufnr = bufnr,
						filter = function(client)
							return client.name == "null-ls"
						end
					 })
                    -- vim.lsp.buf.formatting_sync()
                end,
            })
        end
    end,
})
