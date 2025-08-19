vim.keymap.set('n', '<leader>e', vim.cmd.Explore, { desc = 'explore files' })
vim.keymap.set('n', '<leader>ff', Snacks.picker.files, { desc = 'find files' })
vim.keymap.set('n', '<leader>sh', Snacks.picker.help, { desc = 'search help' })
vim.keymap.set('n', '<leader>ob', Snacks.picker.buffers, { desc = 'open buffers' })
vim.keymap.set('n', '<leader>od', Snacks.dashboard.open, { desc = 'open dashboard' })

vim.keymap.set('n', 'n', 'nzzzv', { desc = 'next search result (centered)' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'previous search result (centered)' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'half page down (centered)' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'half page up (centered)' })

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'move focus to the upper window' })

vim.keymap.set('n', '<c-c>', '<cmd>nohlsearch<cr>')

vim.keymap.set('n', '<left>', '<cmd>echo "use h to move!!"<cr>')
vim.keymap.set('n', '<right>', '<cmd>echo "use l to move!!"<cr>')
vim.keymap.set('n', '<up>', '<cmd>echo "use k to move!!"<cr>')
vim.keymap.set('n', '<down>', '<cmd>echo "use j to move!!"<cr>')
