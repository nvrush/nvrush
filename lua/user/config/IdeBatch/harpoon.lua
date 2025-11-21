local harpoon = require("harpoon")

-- REQUIRED: Setup harpoon with UI customization
harpoon:setup({
    settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
        key = function()
            return vim.loop.cwd()
        end,
    },
    menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
        height = 10,
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    },
})


-- UI
vim.keymap.set("n", "<C-e>", function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon: Toggle menu" })

-- Add current file with visual feedback
vim.keymap.set("n", "<C-a>", function()
    harpoon:list():add()
    vim.notify("Added to Harpoon", vim.log.levels.INFO)
end, { desc = "Harpoon: Add file" })

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end , {desc = "Add to Harpoon"})
