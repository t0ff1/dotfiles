local map = vim.keymap.set -- for conciseness
local del = vim.keymap.del
local function nmap(k, v, opts)
	map("n", k, v, opts)
end

-- Move to window using the <ctrl>-<alt> hjkl keys
nmap("<C-A-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
nmap("<C-A-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
nmap("<C-A-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
nmap("<C-A-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

map({ "x", "v", "i" }, "<C-j>", "<down>", { desc = "Down", silent = true, remap = true })
map({ "x", "v", "i" }, "<C-k>", "<up>", { desc = "Up", silent = true, remap = true })
map({ "x", "v", "i" }, "<C-h>", "<left>", { desc = "Left", silent = true, remap = true })
map({ "x", "v", "i" }, "<C-l>", "<right>", { desc = "Right", silent = true, remap = true })

nmap("<leader>w/", "<C-W>v", { desc = "Split Window Right", remap = true })
map({ "n", "v" }, "gct", "o<Esc>Vcx<Esc><Cmd>normal gcc<CR>fxa<BS>TODO: ", { desc = "Add todo below", noremap = false })
map({ "n", "v" }, "gcT", "O<Esc>Vcx<Esc><Cmd>normal gcc<CR>fxa<BS>TODO: ", { desc = "Add todo above", noremap = false })

nmap("<leader>bN", "<cmd>enew<CR>", { desc = "New Buffer" })
nmap("<leader>b[", "<cmd>bNext<CR>", { desc = "Next Buffer" })
nmap("<leader>b]", "<cmd>bprevious<CR>", { desc = "Previous Buffer" })
nmap("<C-]>", "<cmd>bprevious<CR>", { desc = "Next Buffer" })
nmap("<C-[>", "<cmd>bNext<CR>", { desc = "Previous Buffer" })

nmap("<leader><tab>n", "<cmd>tabnext<cr>", { desc = "Next Tab" })
nmap("<leader><tab>p", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

map({ "n", "v" }, "<C-CR>", "<Space>ca", { desc = "Command", remap = true })
nmap("<C-q>", "q", { desc = "Record Macro", silent = true, noremap = true })
nmap("q", "<Nop>", { noremap = true })

map("n", "<F8>", function()
	require("dap").continue()
end)
map("n", "<F9>", function()
	require("dap").step_over()
end)
map("n", "<F10>", function()
	require("dap").step_into()
end)
map("n", "<F11>", function()
	require("dap").step_out()
end)

-- Disable arrow keys in normal mode
nmap("<left>", '<cmd>echo "Use h to move!!"<CR>')
nmap("<right>", '<cmd>echo "Use l to move!!"<CR>')
nmap("<up>", '<cmd>echo "Use k to move!!"<CR>')
nmap("<down>", '<cmd>echo "Use j to move!!"<CR>')
