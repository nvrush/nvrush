require("auto-save").setup({
    enabled = true,          -- start enabled
    execution_message = {
        message = function() -- message after save
            return ""
        end,
    },
    trigger_events = { -- events that trigger auto-save
        "InsertLeave",
        "TextChanged",
    },
    condition = function(buf)
        local fn = vim.fn
        return fn.getbufvar(buf, "&modifiable") == 1
    end,
    write_all_buffers = false, -- only save current buffer
    debounce_delay = 135,      -- ms between saves
})

vim.api.nvim_set_keymap("n", "<leader>as", ":ASToggle<CR>", {})
