require('blink.cmp').setup({
    -- this will enavle cmdline support !
    cmdline = { enabled = true },
    -- documentation = { auto_show = false, auto_show_delay_ms = 500 },
    snippets = { preset = 'luasnip' },
    completion = {
        list = {
            max_items = 10,
        },
    }
})
