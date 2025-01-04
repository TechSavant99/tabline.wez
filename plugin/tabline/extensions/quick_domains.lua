local config = require('tabline.config')

return {
  {
    'quick_domains',
    events = {
      show = 'quick_domain.fuzzy_selector.opened',
      hide = {
        'quick_domain.fuzzy_selector.canceled',
        'quick_domain.fuzzy_selector.selected',
        'resurrect.fuzzy_load.start',
        'smart_workspace_switcher.workspace_switcher.start',
      },
    },
    sections = {
      tabline_a = {
        ' Switch Domains ',
      },
      tabline_b = { 'workspace' },
      tabline_c = {},
      tab_active = {},
      tab_inactive = {},
    },
    colors = {
      a = { bg = config.theme.colors.tab_bar.active_tab.bg_color },
      b = { fg = config.theme.colors.tab_bar.active_tab.bg_color },
    },
  },
}
