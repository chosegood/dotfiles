require('lualine').setup {
    options = {
      icons_enabled = true,
      theme = 'nightfox',
    },
    sections = {
      lualine_a = {
        {
          'filename',
          path = 1,
        }
      }
    }
  }