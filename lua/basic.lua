--[[
- vim.g.{name}: 全局变量
- vim.b.{name}: 缓冲区变量
- vim.w.{name}: 窗口变量
- vim.bo.{option}: buffer-local选项
- vim.wo.{option}: window-local选项
--]]

-- utf8
vim.g.encoding = 'UTF-8'
vim.o.fileencoding = 'utf-8'

-- 行号
vim.wo.number = true
vim.wo.relativenumber = true

-- 不可见字符的显示，这里把空格显示为一个点
vim.o.list = true
vim.o.listchars = 'space:·'
   
-- 补全增强 
vim.o.wildmenu = true

-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true

-- 边输入边搜索
vim.o.incsearch = true

-- 空格代替tab
vim.o.expandtab = true
vim.bo.expandtab = true

-- 缩进4个空格等于一个tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "120"

-- 样式
--vim.o.background = 'dark'
--vim.o.termguicolors = true
--vim.opt.termguicolors = true

-- 高亮所在行
vim.wo.cursorline = true

-- 显示左侧图标指示列
vim.wo.signcolumn = 'yes'

-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 命令行高为2，提供足够的显示空间
vim.o.cmdheight = 2

-- 当程序被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 光标在行首行尾时 <Left><Right>可以跳到下一行
vim.o.whichwrap = '<,>,[,]'

-- 自动补全，不自动选中
vim.g.completeopt = 'menu,menuone,noselect,noinsert'

-- 补全增强 
vim.o.wildmenu = true

-- 补全最多显示10行
vim.o.pumheight = 10

    












