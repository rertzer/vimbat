vim.api.nvim_create_augroup("inlay_hints", { clear = true })
vim.api.nvim_create_autocmd("InsertEnter", {
	group = "inlay_hints",
	pattern = "*",
	callback = function(event)
		vim.schedule(function()
			vim.lsp.inlay_hint.enable(false, { bufnr = event.buf })
		end)
	end,
})
vim.api.nvim_create_autocmd("InsertLeave", {
	group = "inlay_hints",
	pattern = "*",
	callback = function(event)
		vim.schedule(function()
			vim.lsp.inlay_hint.enable(true, { bufnr = event.buf })
		end)
	end,
})
