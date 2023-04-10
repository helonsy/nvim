--[[
- vim.api.nvim_set_keymap() 全局快捷键，一般都是这个
- vim.api.nvim_buf_set_keymap() Buffer快捷键

- 全局快捷键设置
    - vim.api.nvim_set_keymap('模式', '按键', '映射为', 'options')
        - n Normal模式
        - i Insert模式
        - v Visual模式
        - t Terminal模式
        - c Command模式

        - options大部分会设置为 { noremap = true, silent = true}
            - noremap表示不会重新映射，比如你有一个映射 A-》B， 还有一个B-》C，如果
                - 你设置noremap = false，表示会重新映射，A会被映射为C
            - silent为true，表示不会输出多余的信息
]]

local map = vim.api.nvim_set_keymap
-- 复用opt参数
local opt = {noremap = true, silent = true}

-- 取消s的默认功能
map("n", "s", "", opt)
-- windows分屏快捷键
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前 
map("n", "sc", "<C-w>c", opt)
-- 关闭其它 
map("n", "so", "<C-w>o", opt)
-- Alt + hjkl 窗口之间跳转
map("n", "<A-h>", "<C-w>h", opt)
map("n", "<A-j>", "<C-w>j", opt)
map("n", "<A-k>", "<C-w>k", opt)
map("n", "<A-l>", "<C-w>l", opt)

-- 上下移动浏览
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
-- ctrl u / ctrl d 值移动9行，默认移动半屏
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)





-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)





-- 在insert模式下，跳到行首行尾
    -- 这个设置有个问题，会导致backspace不能删除单次，而是跳转到行首
--map("i", "<C-h>", "<ESC>I", opt)
--map("i", "<C-l>", "<ESC>A", opt)


map("i", "<Home>", "<C-O>0", opt)


------------------------- 插件快捷键 Begin------------------------------------------------------
local pluginKeys = {}
-- nvim-tree
-- alt+m 打开关闭tree
map("n", "<A-m>", ":NvimTreeToggle<CR>", opt)
-- 列表快捷键
pluginKeys.nvimTreeList = {
    -- 打开文件或文件夹
    { key = {"<CR>", "o", "<2-LeftMouse>"}, action = "edit" },
    -- 分屏打开文件
    { key = "v", action = "vsplit" },
    { key = "h", action = "split" },
    -- 文件操作 
    { key = "<F5>", action = "refresh" },
    { key = "a", action = "create" },
    { key = "d", action = "remove" },
    { key = "r", action = "rename" },
    { key = "x", action = "cut" },
    { key = "c", action = "copy" },
    { key = "p", action = "paste" },
    { key = "s", action = "system_open" },
}
return pluginKeys

------------------------- 插件快捷键 End------------------------------------------------------






