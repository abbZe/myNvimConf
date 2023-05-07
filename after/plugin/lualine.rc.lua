local status, lualine = pcall(require, 'lualine')
if (not status) then return end

lualine.setup {
    options = {
        icons_enabled = true,
        theme = 'solarized_dark',
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        disabled_filetypes = {}
  },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {{
            'filename',
            file_status = true, -- displays file status
            path = 0 -- 0 = just filename
        }},
        lualine_x = {
            { 'diagnostics', sources = { 'nvim_diagnostic' }, symbols = {error = 'ER', warn = 'WA', info = 'IN', hint = 'HI'} },
            'encoding',
            'filetype'
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sessions = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {{
            'filename',
            file_status = true,
            path = 1 -- 1 = relative path
        }},
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = { 'fugitive' }
}