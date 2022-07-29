require('lspconfig').rust_analyzer.setup({
flags = { debounce_text_changes = 150 }
})

require('rust-tools').setup({})
