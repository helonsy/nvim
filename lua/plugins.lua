local packer = require('packer')

--[[
- 我们使用 'name/repo' 来安装插件
    - name/repo 对应github的地址
        - use 'wbthomason/packer.nvim' 对应就是 
            - https://github.com/wbthomason/packer.nvim

]]

packer.startup({
    function(use)
        -- Packer 可以自己管理自己本身
        use 'wbthomason/packer.nvim'

        -- 你的插件列表...

        use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
            -- requires = "kyazdani42/nvim-web-devicons" 这个表示依赖的项
        use "folke/tokyonight.nvim"
            -- 颜色主题 
            -- 这个颜色主题我一点都不喜欢
            -- 一个现代化的主题，必须支持nvim-treesitter语法高亮
                -- https://github.com/nvim-treesitter/nvim-treesitter

    end,

    config = {
        -- 以浮动窗口打开安装列表
        display = {
            open_fn = function()
                          return require('packer.util').float({border = 'single'})
                      end,
        },

        -- 并发数限制，下载插件的时候
        -- max_jobs = 16,
        -- 自定义源，在你发现github卡的时候
        --git = {
        --    -- default_url_format = "https://hub.fastgit.xyz/%s",
        --    -- default_url_format = "https://mirrow.ghproxy.com/https://github.com/%s",
        --    -- default_url_format = "https://gitcode.net/mirrors/%s",
        --    -- default_url_format = "https://gitclone.com/github.com/%s"
        --}
    },
})

-- 每次保存 plugins.lua 自动安装插件
--pcall(
--  vim.cmd,
--  [[
--    augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost plugins.lua source <afile> | PackerSync
--    augroup end
--  ]]
--)
