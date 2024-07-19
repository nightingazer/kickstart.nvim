return {
    "neovim/nvim-lspconfig",
    init = function()
        local lspconf = require("lspconfig")

        local angularls_lib_path = "/usr/lib/node_modules/@angular/language-server"
        local angularls_cmd = {
            "ngserver",
            "--stdio",
            "--tsProbeLocations",
            angularls_lib_path,
            "--ngProbeLocations",
            angularls_lib_path
        }
        lspconf.angularls.setup {
            cmd = angularls_cmd,
            on_new_config = function(new_config, new_root_dir)
                new_config.cmd = angularls_cmd
            end
        }

        lspconf.tsserver.setup {}

        lspconf.cssls.setup {
            settings = {
                css = { validate = true,
                    lint = {
                        unknownAtRules = "ignore"
                    }
                },
                scss = { validate = true,
                    lint = {
                        unknownAtRules = "ignore"
                    }
                },
                less = { validate = true,
                    lint = {
                        unknownAtRules = "ignore"
                    }
                },
            }
        }

        lspconf.eslint.setup {}
    end
}
