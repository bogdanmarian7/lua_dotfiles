-- NEOVIM settings
---------------------------------------------
-- See :options for other nvim settings
-- or :h :cursor to see options for cursor as ex.

-----Tabs:
-- number of spaces a <Tab> in the text stands
vim.opt.tabstop = 4--set tabstop=4 
vim.opt.softtabstop = 4--set softtabstop=4
-- number of spaces used for each step of (auto)indent
vim.opt.shiftwidth = 4--set shiftwidth=4
-- expand <Tab> to spaces in Insert mode
vim.opt.expandtab = true--set expandtab
-- do clever autoindenting
vim.opt.smartindent = true--set smartindent
-- Other:
-- to automate source of an vimrc inside a project when typing nvim .
vim.opt.exrc = true--set exrc

-- Sets block cursor
-- set guicursor
vim.opt.guicursor:append("n-v-c-sm:block")
vim.opt.guicursor:append("i-ci-ve:ver25")
vim.opt.guicursor:append("r-cr-o:hor20")
vim.opt.guicursor:append("a:blinkwait1-blinkon150-blinkoff50")

-- Split window
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Show the line number relative to the line with 
-- the cursor in front of each line
vim.opt.relativenumber = true--set relativenumber
-- Shows the current line number
vim.opt.nu = true--set nu
-- No highlight search
vim.opt.hlsearch = false--set nohlsearch
-- Keeps buffer in the background
vim.opt.hidden = true--set hidden
-- No beep of screen flash for error messages
vim.opt.errorbells = false--set noerrorbells
-- Set off the wrap on text
-- set nowrap
-- No swap, no backup.
vim.opt.backup = false--set nobackup
vim.opt.swapfile = false--set noswapfile

-- Highlight as you search
vim.opt.incsearch = true--set incsearch
-- Keep the cursor in the center as you're scrolling
vim.opt.scrolloff = 8--set scrolloff=8

vim.opt.termguicolors = true--set termguicolors
-- No message about the mode on last line
vim.opt.showmode = false--set noshowmode

--set completeopt=menuone,noinsert,noselect
vim.opt.completeopt = "menuone,noinsert,noselect"
-- Add a vertical column at 80 chars and a left bar to see lint errors
vim.opt.colorcolumn = "80"--set colorcolumn=80
vim.opt.signcolumn = "yes"--set signcolumn=yes
-- Increase height for messages
vim.opt.cmdheight = 2--set cmdheight=2
-- To not have delays minimize update time
vim.opt.updatetime = 50--set updatetime=50
vim.opt.encoding = "utf-8"--set encoding=utf-8
vim.opt.syntax = "on"--syntax on

-- Ignore files
-- set wildignore+=*.pyc
-- set wildignore+=*_build/*
-- set wildignore+=**/android/*
-- set wildignore+=**/ios/*
-- set wildignore+=**/.git/*
vim.opt.wildignore:append('*.pyc')
vim.opt.wildignore:append('*_build/*')
vim.opt.wildignore:append('**/android/*')
vim.opt.wildignore:append('**/ios/*')
vim.opt.wildignore:append('**/.git/*')
--vim.opt.errorformat = vim.opt.errorformat + '%f|%l col %c|%m'

-- Add different characters for tab, eol and trail
vim.opt.list = true
vim.opt.listchars = {eol = '↲', tab = '▸ ', trail = '·'}


-- Set python interpreter:
--vim.g.python3_host_prog=('~/env/Scripts/python.exe')
--vim.g.python3_host_prog:append('%LOCALAPPDATA%/Programs/Python/Python39')

--vim.g.XDG_CONFIG_HOME=('~/AppData/Local/nvim/init.lua')


-- Run Code inside Neovim -------------------
vim.cmd [[
augroup exe_code
    autocmd!
    " Execute python code
    autocmd FileType python nnoremap <buffer> <localleader>r
            \ :sp<CR> :term python %<CR> :startinsert<CR>

    " Execute bash code
    autocmd FileType bash,sh nnoremap <buffer> <localleader>r
            \ :sp<CR> :term bash %<CR> :startinsert<CR>
augroup end
]]

-- Mouse
vim.o.ma = true
vim.o.mouse = a
-- clipboard
vim.o.clipboard = "unnamedplus"
