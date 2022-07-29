require('material').setup()
vim.g.material_style = "darker"
vim.cmd "colorscheme material"

require('lualine').setup{
    options = {
        theme = 'material-stealth'
    }
}

