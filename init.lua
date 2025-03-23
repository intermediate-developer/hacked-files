-- commit: fixed spacebar interfere in insert mode
-- Basics
vim.opt.number = true                  -- Show line numbers
vim.opt.relativenumber = true          -- Relative line numbers
vim.opt.tabstop = 4                    -- Number of spaces for a tab
vim.opt.shiftwidth = 4                 -- Indentation width
vim.opt.expandtab = true               -- Use spaces instead of tabs
vim.opt.cursorline = true              -- Highlight the current line
vim.opt.termguicolors = true           -- Enable true color support

-- Colorscheme: Red Hacker Vibe
vim.cmd [[
  highlight Normal guibg=NONE guifg=#ff0000
  highlight LineNr guifg=#ff5555
  highlight CursorLineNr guifg=#ff0000
  highlight CursorLine guibg=#220000
  highlight StatusLine guibg=#330000 guifg=#ff5555
  highlight VertSplit guibg=#330000 guifg=#ff0000
  highlight Comment guifg=#880000
  highlight String guifg=#ff4444
  highlight Identifier guifg=#ff2222
  highlight Statement guifg=#ff0000
  highlight Type guifg=#ff3333
  highlight Constant guifg=#ff1111
]]

-- Leader key (space)
vim.g.mapleader = " "

-- Searching
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Navigation
vim.keymap.set('n', 'j', 'gj', { noremap = true })
vim.keymap.set('n', 'k', 'gk', { noremap = true })

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Fast saving (Space + w)
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })

-- Exit terminal mode easily
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

-- === VSCode-style Keybindings with SPACE ===

local opts = { noremap = true, silent = true }

-- Save file (Space + s)
vim.keymap.set('n', '<leader>s', ':w<CR>', opts)

-- Quit (Space + q)
vim.keymap.set('n', '<leader>q', ':q<CR>', opts)

-- Close buffer (Space + w)
vim.keymap.set('n', '<leader>c', ':bd<CR>', opts)

-- Open file explorer (Space + e)
vim.keymap.set('n', '<leader>e', ':Ex<CR>', opts)

-- Copy (Space + c)
vim.keymap.set('v', '<leader>c', '"+y', opts)

-- Paste (Space + v)
vim.keymap.set('n', '<leader>v', '"+p', opts)
vim.keymap.set('i', '<leader>v', '<C-r>+', opts)

-- Cut (Space + x)
vim.keymap.set('v', '<leader>x', '"+d', opts)

-- Undo (Space + z)
vim.keymap.set('n', '<leader>z', 'u', opts)

-- Redo (Space + y)
vim.keymap.set('n', '<leader>y', '<C-r>', opts)

-- Find (Space + f)
vim.keymap.set('n', '<leader>f', '/', opts)

-- Select All (Space + a)
vim.keymap.set('n', '<leader>a', 'ggVG', opts)

-- Go to start of line (Home)
vim.keymap.set('n', '<Home>', '^', opts)

-- Go to end of line (End)
vim.keymap.set('n', '<End>', '$', opts)

-- Split window (Space + \)
vim.keymap.set('n', '<leader>\\', ':vsplit<CR>', opts)

-- Switch between windows (Space + Tab)
vim.keymap.set('n', '<leader><Tab>', '<C-w>w', opts)

-- Comment (Space + /) – Requires comment.nvim
vim.keymap.set('n', '<leader>/', 'gcc', opts)
vim.keymap.set('v', '<leader>/', 'gc', opts)

-- === Additional Useful Bindings ===
-- Move to the next buffer (Space + n)
vim.keymap.set('n', '<leader>n', ':bnext<CR>', opts)

-- Move to the previous buffer (Space + p)
vim.keymap.set('n', '<leader>p', ':bprev<CR>', opts)

-- Close all other buffers (Space + o)
vim.keymap.set('n', '<leader>o', ':%bd|e#<CR>', opts)

-- === Using Ctrl for Keybindings ===
vim.keymap.set('n', '<C-w>', ':w<CR>', { noremap = true, silent = true }) -- Ctrl + w for save
vim.keymap.set('n', '<C-q>', ':q<CR>', { noremap = true, silent = true }) -- Ctrl + q for quit

-- Avoid leader key press in insert mode by unmapping space
vim.keymap.set('i', '<Space>', '<Nop>', { noremap = true, silent = true })
