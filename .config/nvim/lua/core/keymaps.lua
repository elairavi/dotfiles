
--[[-------------------------------------]]--
--      keymaps - general mappings        --
--              Author: elai               --
--             License: GPLv3              --
--[[-------------------------------------]]--

-- Shorten function name
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Remap space as leader key
map("", "<Space>", "<Nop>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-----------------
-- Normal Mode --
-----------------
-- Mappings for moving through splits
map ("n", "<A-h>", "<C-w>h", {})
map ("n", "<A-j>", "<C-w>j", {})
map ("n", "<A-k>", "<C-w>k", {})
map ("n", "<A-l>", "<C-w>l", {})

-- Resize current buffer by +/- 2
map ("n", "<C-h>", ":vertical resize +2<cr>", {})
map ("n", "<C-j>", ":resize +2<cr>", {})
map ("n", "<C-k>", ":resize -2<cr>", {})
map ("n", "<C-l>", ":vertical resize -2<cr>", {})

-- Alternate way to save and quit nvim
map ("n", "<A-w>", ":w<CR>", {}) -- save file
map ("n", "<A-q>", ":q<CR>", {}) -- quit nvim
map ("n", "<A-1>", ":q!<CR>",{}) -- quit without saving

-- Nvim Comment
map ("n", "<leader>c", ":CommentToggle<CR>", {})       -- Comment One Line
map ("x", "<leader>c", ":'<,'>CommentToggle<CR>", {})  -- Comment Multiple Lines In Visual Mode
map ("n", "<leader>p", "vip:CommentToggle<CR>", {})    -- Comment A Paragraph

-- Don't accidently create macros when trying to quit
map ('n', 'Q', 'q', {})
map ('n', 'q', '<nop>', {})

-- GitSings mappings
map ('n', "<leader>h", ":Gitsigns preview_hunk<CR>", {})  -- preview_hunk
map ('n', "<leader>r", ":Gitsigns reset_buffer<CR>", {})  -- reset_buffer

-- Toggle Alpha Dashboard
map ('n', "<leader>a", ":set laststatus=3<CR> | :Alpha<CR>", {})

-- Toggle NvimTree
map ("n", "<leader>n", ":NvimTreeToggle<CR>", {})

-- Yank entire line
map ("n", "yie", ":<C-u>%y<CR>", {})

-- Packer Update
map ("n", "<leader>u", ":PackerSync<CR>", {})

-----------------
-- Insert Mode --
-----------------
-- Map Escape Key To kj
map ("i", "kj", "<ESC>", {})

-- Fix One [Car] behind
map ("i", "<Esc>", "<Esc>`^", {})

-- Center screen after search
vim.cmd([[
nnoremap n nzzzv
nnoremap N Nzzzv
]])

-- Auto Pairs
vim.cmd([[
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0
inoremap {;<CR> {<CR>};<ESC>0
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap " ""<left>
inoremap ' ''<left>
]])

-----------------
-- Visual Mode --
-----------------
-- Move Text Up And Down
vim.cmd([[
nnoremap <C-A-J> :m .+1<CR>==
nnoremap <C-A-K> :m .-2<CR>==
inoremap <C-A-J> <Esc>:m .+1<CR>==gi
inoremap <C-A-K> <Esc>:m .-2<CR>==gi
vnoremap <C-A-J> :m '>+1<CR>gv=gv
vnoremap <C-A-K> :m '<-2<CR>gv=gv
]])

--------------------------------------
-- keymaps that i don't use anymore --
--------------------------------------
-- -- Better tabbing
-- map ("n", "<", "<gv", {})
-- map ("n", ">", ">gv", {})

-- -- Mappings for scrolling up And down
-- map ("n", "<A-k>", "<C-u>k", {})
-- map ("n", "<A-j>", "<C-d>j", {})

-- -- TAB SHIFT-TAB will go back
-- map ("n", "<TAB>", ":bnext<CR>", {})
-- map ("n", "<S-TAB>", ":bprevious<CR>", {})

-- -- Terminal
-- map ("n", "<leader>t", ":vnew term://zsh<CR>", {})

-- -- Improve scroll
-- vim.cmd([[noremap <expr> <C-b> max([winheight(0) - 2, 1]) . "\<C-u>" . (line('.') < 1         + winheight(0) ? 'H' : 'L')
-- noremap <expr> <C-f> max([winheight(0) - 2, 1]) . "\<C-d>" . (line('.') > line('$') - winheight(0) ? 'L' : 'H')
-- noremap <expr> <C-y> (line('w0') <= 1         ? 'k' : "\<C-y>")
-- noremap <expr> <C-e> (line('w$') >= line('$') ? 'j' : "\<C-e>")
-- ]])

-- -- Mappings For Tabs
-- map ("n", "o<Leader>1", "<Plug>lightline#bufferline#go(1)", {})
-- map ("n", "o<Leader>2", "<Plug>lightline#bufferline#go(2)", {})
-- map ("n", "o<Leader>3", "<Plug>lightline#bufferline#go(3)", {})
-- map ("n", "o<Leader>4", "<Plug>lightline#bufferline#go(4)", {})
-- map ("n", "o<Leader>5", "<Plug>lightline#bufferline#go(5)", {})
-- map ("n", "o<Leader>6", "<Plug>lightline#bufferline#go(6)", {})
-- map ("n", "o<Leader>7", "<Plug>lightline#bufferline#go(7)", {})
-- map ("n", "o<Leader>8", "<Plug>lightline#bufferline#go(8)", {})
-- map ("n", "o<Leader>9", "<Plug>lightline#bufferline#go(9)", {})
-- map ("n", "o<Leader>0", "<Plug>lightline#bufferline#go(10)", {})
