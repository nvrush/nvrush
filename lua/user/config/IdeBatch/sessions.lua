local resession = require("resession")

resession.setup({
    autosave = {
        enabled = true,
        interval = 60,
        notify = false,
    },
    options = {
        "binary", "bufhidden", "buflisted", "cmdheight",
        "diff", "filetype", "modifiable", "previewwindow",
        "readonly", "scrollbind", "winfixheight", "winfixwidth",
    },
    extensions = {
        overseer = {},
        quickfix = {},
    },
    buf_filter = function(bufnr)
        local buftype = vim.bo[bufnr].buftype
        return buftype ~= "help" and buftype ~= "nofile"
    end,
})

-- Auto-save current session
vim.api.nvim_create_autocmd("VimLeavePre", {
    callback = function()
        resession.save(vim.fn.getcwd(), { notify = false })
    end,
})

-- Keymaps with Telescope picker
vim.keymap.set("n", "<leader>ss", function()
    vim.ui.input({ prompt = "Session name: ", default = vim.fn.fnamemodify(vim.fn.getcwd(), ":t") }, function(name)
        if name then resession.save(name) end
    end)
end, { desc = "Session: Save" })

vim.keymap.set("n", "<leader>sl", function()
    require("resession").load(require("resession").list()[1] or vim.fn.getcwd())
end, { desc = "Session: Load last" })

-- Telescope picker for sessions
vim.keymap.set("n", "<leader>sf", function()
    local ok, telescope = pcall(require, "telescope")
    if ok then
        require("resession").load(vim.fn.input("Session: ", "", "custom,resession"))
    else
        vim.ui.select(resession.list(), { prompt = "Select session:" }, function(choice)
            if choice then resession.load(choice) end
        end)
    end
end, { desc = "Session: Pick" })

vim.keymap.set("n", "<leader>sd", function()
    vim.ui.select(resession.list(), { prompt = "Delete session:" }, function(choice)
        if choice then resession.delete(choice) end
    end)
end, { desc = "Session: Delete" })
