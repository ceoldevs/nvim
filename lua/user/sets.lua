local options = {
    expandtab = true,
    hidden = true,
    incsearch = true,
    errorbells = false,
    hlsearch = false,
    wrap = false,
    ignorecase = true,
    scrolloff = 8,
    shiftwidth = 4,
    smartindent = true,
    tabstop = 4,
    softtabstop = 4,
    backup = false,
    swapfile = false,
    undofile = true,
    undodir = "/home/smc181002/.config/undodir",
    termguicolors = true,
    -- background = "dark",
    relativenumber = true,
    nu = true,
    cursorline = false,
    -- ve = "all",
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd "highlight Normal guibg=none" -- transparent background
vim.cmd "set guicursor= " -- Block cursor

