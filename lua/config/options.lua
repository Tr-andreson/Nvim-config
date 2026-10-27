vim.cmd.colorscheme("quiet")

vim.api.nvim_create_autocmd("InsertCharPre", {
	pattern = { "*.html", "*.jsx", "*.tsx" , "*.astro" },
	callback = function()
		local char = vim.v.char

		if char ~= ">" then
			return
		end

		local row, col = unpack(vim.api.nvim_win_get_cursor(0))
		local line = vim.api.nvim_get_current_line()

		local before = line:sub(1, col)
		local after = line:sub(col + 1)

		-- ✅ Case 1: React fragment <>
		if before:match("<$") then
			vim.schedule(function()
				vim.api.nvim_put({ "</>" }, "c", true, true)
				vim.api.nvim_win_set_cursor(0, { row, col + 1 })
			end)
			return
		end

		-- ✅ Case 2: Skip explicit self-closing like <Hello />
		if before:match("/%s*$") then
			return
		end

		-- Match opening tag
		local tag = before:match("<(%w+)[^>]*$")

		if not tag then
			return
		end

		-- Skip void HTML tags
		local self_closing = {
			br = true, img = true, input = true, hr = true, meta = true, link = true
		}


		if self_closing[tag] then
			return
		end

		-- Skip if closing already exists ahead
		if after:match("^%s*</" .. tag .. ">") then
			return
		end

		-- ✅ Insert closing tag
		vim.schedule(function()
			vim.api.nvim_put({ "</" .. tag .. ">" }, "c", true, true)
			vim.api.nvim_win_set_cursor(0, { row, col + 1 })
		end)
	end,
})



-- autoclose tags config
vim.keymap.set('i', '(', '()<Left>')
vim.keymap.set('i', '[', '[]<Left>')
vim.keymap.set('i', '{', '{}<Left>')
vim.keymap.set('i', '"', '""<Left>')
vim.keymap.set('i', "'", "''<Left>")
vim.keymap.set('i', '`', '``<Left>')
