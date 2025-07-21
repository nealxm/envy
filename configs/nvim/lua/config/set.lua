vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_hide = 1
vim.g.netrw_list_hide = [[\.DS_Store\|\.git\/]]

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4
vim.opt.cursorline = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8
vim.opt.showtabline = 0

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.signcolumn = 'yes'
vim.opt.colorcolumn = '100'
vim.opt.matchtime = 2
vim.opt.cmdheight = 1
vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.opt.pumheight = 10
vim.opt.pumblend = 10
vim.opt.winblend = 5
vim.opt.conceallevel = 0
vim.opt.concealcursor = ''
vim.opt.lazyredraw = true

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = false
vim.opt.updatetime = 100
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
vim.opt.autoread = true
vim.opt.autowrite = false

vim.opt.hidden = false
vim.opt.errorbells = false
vim.opt.backspace = 'indent,eol,start'
vim.opt.autochdir = false
vim.opt.iskeyword:append('-')
vim.opt.path:append('**')
vim.opt.selection = 'exclusive'
vim.opt.mouse = 'a'
vim.opt.clipboard:append('unnamedplus')
vim.opt.modifiable = true
vim.opt.encoding = 'utf-8'
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.ttyfast = true
vim.opt.smoothscroll = true
