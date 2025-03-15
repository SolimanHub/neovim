-- Gestor de paquetes packer
vim.g.mapleader = " "

vim.o.relativenumber = true
vim.o.number = true

vim.opt.clipboard:append("unnamedplus")
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true --convierte tabs a espacios

--vim.api.nvim_set_keymap("i","kk","<ESC>",{noremap = true})
vim.g.EasyMotion_do_mapping = 0 -- Desactiva los mapeos predeterminados
vim.g.EasyMotion_smartcase = 1 -- Búsqueda case-insensitive
vim.g.EasyMotion_use_upper = 1 -- Usar mayúsculas para targets

vim.keymap.set("i","jk","<ESC>")

vim.keymap.set("i","{","{}<ESC>i")
vim.keymap.set("i","(","()<ESC>i")
vim.keymap.set("i","[","[]<ESC>i")
vim.keymap.set("i","\"","\"\"<ESC>i")
vim.keymap.set("i","\'","\'\'<ESC>i")

vim.keymap.set("i","n`","ñ")

vim.keymap.set("i","a`","á")
vim.keymap.set("i","e`","é")
vim.keymap.set("i","i`","í")
vim.keymap.set("i","o`","ó")
vim.keymap.set("i","u`","ú")

vim.keymap.set("i","A`","Á")
vim.keymap.set("i","E`","É")
vim.keymap.set("i","I`","Í")
vim.keymap.set("i","O`","Ó")
vim.keymap.set("i","U`","Ú")

vim.keymap.set("n","<leader>n",":nohlsearch<CR>")
vim.keymap.set("n","<leader>w",":w!<CR>")
vim.keymap.set("n","<leader>q",":q!<CR>")
vim.keymap.set("n","<leader>t",":tabnew ")
vim.keymap.set("n", "<leader>s", '<Plug>(easymotion-s2)', {noremap = true, silent = true})


