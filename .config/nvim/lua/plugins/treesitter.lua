return {
        "nvim-treesitter/nvim-treesitter",
        build = ':TSUpdate',
        opts = {
                ensure_installed = {
                        "lua",
                },
                auto_install = true,
                highlight = {
                        enable = true,
                        additional_vim_regex_highlighting = true,
                },
                indent = {
                        enable = true,
                },
        },
}

