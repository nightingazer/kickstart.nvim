return {
    'LhKipp/nvim-nu',
    config = function()
        require 'nu'.setup {
            all_cmd_names = [[$HOME/.cargo/bin/nu -c 'help commands | get name | str join "\n"']]
        }
    end
}
