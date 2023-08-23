return {
    'jose-elias-alvarez/null-ls.nvim',
    config = function()
        local status, null_ls = pcall(require, 'null-ls')
        if not status then
            return
        end

        local formatting = null_ls.builtins.formatting
        null_ls.setup({
            sources = {
                formatting.prettierd
            }
        })
    end
}
