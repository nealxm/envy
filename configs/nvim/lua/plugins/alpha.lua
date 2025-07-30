return {
    'goolord/alpha-nvim',
    event = 'VimEnter',
    config = function()
        local dashboard = require('alpha.themes.dashboard')
        local palette = require('rose-pine.palette')
        vim.api.nvim_set_hl(0, 'rp-love', { fg = palette.love })

        dashboard.section.header.val = {
            [[               ⣀⢀                                         ]],
            [[              ⢸⣽⣍⣉⠙⠒⠤⢤⣀                                   ]],
            [[              ⢸⣿⡉⠙⠛⠷⢦⣤⣄⣉⠙⠒⠢⢤⣀⡀                            ]],
            [[              ⢸⣿⠇ ⠡ ⢂⠈⠉⡙⠻⠷⢶⣤⣄⣈⠙⠒⠢⢤⣀⡀                      ]],
            [[              ⠐⣿⠃⢈ ⢂⠠ ⡁⠠ ⠄⠂⠈⠉⠛⠻⠷⣶⣤⣄⣈⠙⠒⠢⢤⣀⡀                ]],
            [[              ⠐⣿⡁⢀⠂ ⠄⠂ ⠄⢁⠠⠈⠠⠁⡐ ⠄⡀⠈⠉⠛⠻⠷⣶⣤⣄⣈⠙⠒⠢⢤⣀           ]],
            [[               ⣿⡀⢀ ⢃ ⡘⠠⠘ ⡀⠄⠃⠠ ⡘ ⡀⠃⡘⠠ ⡀ ⠘⠛⠿⢿⣤⣤⣀ ⠛⠣⠤⣀⡀      ]],
            [[               ⣿⠄⠂⢀⠂ ⠄⠐⡀⠁⠠⠐⠈⡀⠐⡀⠐⡀⠐⡀⠄⠡⢀⠡⠈⠄⠠ ⠄⠉⡙⠛⠷⢶⣤⣄⣈⠉⠒⠢⠤⣀⡀]],
            [[               ⣿⠂⡈ ⠄⠁⡐⠠ ⠌⢀⠂⢁ ⢂ ⡁⢀⠂⠄⠠⠁⠄⠠⠁⠌⠠⢁⠈⡐ ⠌⡐⠂⢌⠩⢙⠛⠷⣶⡄⢀⡇]],
            [[               ⣿⠃ ⠌⢀⠂⠠⠐ ⢂⠠⠐ ⡈ ⠄⠐⡀⠄⠈⠄⠂⡈⠐⢈⠠⠁⣀⠢⠐⡉⠔⡠⠉⢄⢂⠂⠌⠂⣿⡇ ⡇]],
            [[               ⣿⠃⢈⠠ ⠄⢁⠠⠁⠠ ⠂⢁⠠⠈⢀⠂⠠⢀⠁⢂⠐ ⢡ ⠢⠡⠄⠢⠡⠌⡐⠄⡉⠄⢊⠐⡈⠁⣿⡇ ⡇]],
            [[               ⣿⡃ ⠄⠂⢈ ⠄⠂⠁⠄⠡ ⠄⡈ ⠄⡁⢀⠂⠄⠢⠉⠤⢈⠡⢂⠡⠁⠆⠡⠐⡈⠐⡈⠄⡡⢀⠁⣿⡇ ⡇]],
            [[              ⢸⣿⡄⠈⠠⠈⡀⠄⠂⠈⠄⠂⠐⠈⡀⠄⠁⢄⠰⢀⠩⠠⠡⢈⠰⠈⡐⠠⠈⠌⡠⠡⠁⠄⠡⠐⡀⠆⡀⠂⣿⡇ ⡇]],
            [[              ⢸⣿⠆ ⠡⠐ ⡐⠈⡀⠂⠌⢀⠁⠠⢂⠉⡀⠢⠈⠄⡁⠢⠈⠄⠡⠠⠡⠈⠔⠠⠁⠌⠠⢁⠡⠐⠠⢀⠁⣾⡇ ⡇]],
            [[              ⢸⣿⣇⣈ ⠂⢁⠠⠐⢀⡐⠠⠈⠄⡁⢂⠐⠠⠁⠌⡐⠠⠁⠌⠠⢁⠂⠡⠈⠄⠡⠈⠄⠡⢀⠂⢁⠂⠄⠂⣽⡇ ⡇]],
            [[              ⠈⠛⠻⢿⣿⣶⣦⣤⣆⣠ ⠑⡈⠰⢀⠂⠌⠠⢁⠂⠄⠡⠈⠄⠡ ⠌⡀⠡⢈ ⠡⢈⠠ ⠂⠄⢂⠐⡀⢿⡇ ⡇]],
            [[                   ⠈⠙⠛⠻⢿⣿⣷⣶⣤⣄⣈⠄⠁⢂⠐⡈⠐⡈⠐⠠⢁⠂⠐⡀⠂⠈⠄⡀⠂⠁⠌⠐⠠ ⠄⣻⡇⢀⡇]],
            [[                         ⠈⠙⠛⠻⢿⣿⣷⣦⣴⣀⡁⠄⡁⠂⠄⠂⡁⠄⢈⠐⠠⢀⠡⠈⡀⢁⠂⠁⠄⣻⡇ ⡇]],
            [[                               ⡈⡻⣿⣿⣿⣿⢶⣮⣤⣂⡄⢈⠠⠐⢀⠂⢀⠂⠐⠠⢀⠁⠂⣽⡇ ⡇]],
            [[                          ⣀⡠⠤⠒⠊⠉⠉⠁ ⠈⠙⠁ ⠉⠙⣿⣿⣶⣦⣦⣀⡂⠠⠁⢂⠠⠈ ⣿⡇ ⡇]],
            [[         ⢀⣀⠤⠴⠒⠓⡒⠒⠲⠤⣄⣀   ⣞⣛               ⣿⡇⠉⠙⠛⠿⢿⣿⣶⣦⣤⣈⡐⣺⡇ ⡇]],
            [[   ⢀⣀⠤⡴⠒⢛⡉ ⣀⣠⠦⠲⢋⣀⡤⠆⠁⡈⠉⠑⠲⠿⣿⣿⣷⣶⣤⣄⣀         ⠉      ⠁⠉⢻⠛⠿⠿⣿⣇⣰⡧]],
            [[⣶⣾⠛⠉⢠⡄⢨⣶⢠⣤⠉⣧⣴⠚⠉⢹⣤⣶⠊⠉⣤⣴⠃ ⢠ ⠈⠉⡟⢻⣿⣿⣿⣷⣶⣤           ⣤⣴⣾⣿     ⠈ ]],
            [[⠻⠷⣶⣤⣀⡉⠉⠒⠒⠛⣉⣵⠴⠚⢉⣉⡦⠔⢓⣉⡧⠤⢖⢊⣡⠤⠴⡂⣈⡄ ⣉⠙⠛⠿⣿⣿⣿⣶⣤⣄⣀⣀⣤⣴⣾⣿⠿⠿⠛⠁       ]],
            [[   ⠈⠉⠛⠻⠶⣦⣤⣄⡀⠉⠒⠢⠤⣀⡘⠋⠡⠴⣒⣋⡥⠼⡖⢚⣍⡤⠗⠒⣏⣠⠴ ⢀⡄⠩⠙⠛⠿⢭⣟⡛⠉⠉            ]],
            [[         ⠈⠉⠛⠻⠶⣦⣤⣀⡈⠉⠒⠢⠬⣁⡀⠒⣏⣩⠤⠒⢛⣉⡥⠤⠒⣏⣉⠦⠔⢇⣀⡴ ⢀⠉⠑⠒⢦           ]],
            [[               ⠈⠉⠛⠻⠶⣶⣤⣀⣈⠉⠑⠲⠒⢋⣩⠦⠖⣇⣉⠓⠤⢄⣈⣩⠤⠔⠒⣉⣠⣤⣶⠿           ]],
            [[                     ⠈⠉⠛⠻⠷⣶⣤⣄⣀⠁⠋⠋⠤⠕⠒⣉⣠⣦⣶⠾⠟⠛⠉⠁             ]],
            [[                           ⠈⠉⠛⠻⠷⠶⠶⠾⠟⠛⠉⠁                   ]]
        }
        dashboard.section.buttons.val = {
            dashboard.button('f', 'find file', '<cmd>FZF<cr>'),
            dashboard.button('e', 'file explorer', '<cmd>Explore<cr>'),
            dashboard.button('h', 'search help', function() vim.fn.feedkeys(':help ') end),
            dashboard.button('l', 'lazy dashboard', '<cmd>Lazy<cr>'),
            dashboard.button('q', 'quit', '<cmd>qa<cr>'),
        }
        dashboard.section.footer.opts.hl = 'rp-love'

        dashboard.config.layout = {
            { type = 'padding', val = 16 },
            dashboard.section.header,
            { type = 'padding', val = 2 },
            {
                type = 'group',
                val = dashboard.section.buttons.val,
                opts = { spacing = 0 }
            },
            { type = 'padding', val = 2 },
            dashboard.section.footer,
        }
        require('alpha').setup(dashboard.opts)
    end
}
