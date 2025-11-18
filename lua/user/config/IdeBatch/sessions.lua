local resession = require("resession")

resession.setup({
    -- Auto-save options
    autosave = {
        enabled = true,
        interval = 60, -- seconds
        notify = false,
    },
    
    -- Session options
    options = {
        "binary",
        "bufhidden",
        "buflisted",
        "cmdheight",
        "diff",
        "filetype",
        "modifiable",
        "previewwindow",
        "readonly",
        "scrollbind",
        "winfixheight",
        "winfixwidth",
    },
    
    -- Extensions
    extensions = {
        overseer = {},
        quickfix = {},
    },
    
    -- Buffer filter
    buf_filter = function(bufnr)
        local buftype = vim.bo[bufnr].buftype
        if buftype == "help" or buftype == "nofile" then
            return false
        end
        return true
    end,
})

-- Auto-save session on exit
vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
        resession.save(vim.fn.getcwd(), { notify = false })
    end,
})

-- Auto-load session on startup (optional)
vim.api.nvim_create_autocmd("VimEnter", {
    nested = true,
    callback = function()
        if vim.fn.argc() == 0 then
            resession.load(vim.fn.getcwd(), { silence_errors = true })
        end
    end,
})

-- Keymaps
vim.keymap.set("n", "<leader>ss", function()
    resession.save(vim.fn.getcwd())
end, { desc = "Session: Save" })

vim.keymap.set("n", "<leader>sl", function()
    resession.load(vim.fn.getcwd())
end, { desc = "Session: Load" })

vim.keymap.set("n", "<leader>sd", function()
    resession.delete(vim.fn.getcwd())
end, { desc = "Session: Delete" })

vim.keymap.set("n", "<leader>sf", function()
    require("resession").list()
end, { desc = "Session: List all" })
