local cmp = require('cmp')

-- Setup nvim-cmp for command line only
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline({
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { 'c' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { 'c' }),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    }),
    sources = cmp.config.sources({
        { name = 'path' },
    }, {
        { name = 'cmdline' },
    }),
    formatting = {
        format = function(entry, vim_item)
            vim_item.menu = ({
                cmdline = '[CMD]',
                path = '[Path]',
            })[entry.source.name]
            return vim_item
        end,
    },
    window = {
        completion = {
            border = 'rounded',
            winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None',
        },
    },
    experimental = {
        ghost_text = false,
    },
})

-- Setup nvim-cmp for / search
cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline({
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { 'c' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { 'c' }),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    }),
    sources = {
        { name = 'buffer' },
    },
    formatting = {
        format = function(entry, vim_item)
            vim_item.menu = '[Buf]'
            return vim_item
        end,
    },
    window = {
        completion = {
            border = 'rounded',
            winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None',
        },
    },
})

-- Setup nvim-cmp for ? search
cmp.setup.cmdline('?', {
    mapping = cmp.mapping.preset.cmdline({
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, { 'c' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, { 'c' }),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = false }),
    }),
    sources = {
        { name = 'buffer' },
    },
    formatting = {
        format = function(entry, vim_item)
            vim_item.menu = '[Buf]'
            return vim_item
        end,
    },
    window = {
        completion = {
            border = 'rounded',
            winhighlight = 'Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None',
        },
    },
})

-- =============================================================================
-- ADDITIONAL KEYMAPS & SETTINGS
-- =============================================================================

-- Toggle documentation with <leader>ud
vim.keymap.set('n', '<leader>ud', function()
    local config = require('blink.cmp').config.completion.documentation
    config.auto_show = not config.auto_show
    if config.auto_show then
        vim.notify('Docs: ON', vim.log.levels.INFO)
    else
        vim.notify('Docs: OFF', vim.log.levels.INFO)
    end
end, { desc = 'Toggle Documentation' })

-- Optional: Show which completion engine is active
vim.api.nvim_create_autocmd('ModeChanged', {
    callback = function()
        local mode = vim.fn.mode()
        -- You can add visual feedback here if desired
    end,
})
