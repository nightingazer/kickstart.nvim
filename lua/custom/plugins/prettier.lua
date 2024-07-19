return {
    'MunifTanjim/prettier.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
        'jose-elias-alvarez/null-ls.nvim'
    },
    init = function()
        local prettier = require 'prettier'
        prettier.setup {}
    end
}
