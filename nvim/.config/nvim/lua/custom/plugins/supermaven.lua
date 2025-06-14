return {
  'supermaven-inc/supermaven-nvim',
  opts = {
    keymaps = {
      accept_suggestion = '<Tab>',
      clear_suggestion = '<C-]>',
      accept_word = '<C-j>',
    },
    disable_filetypes = { 'text', 'markdown' },

    log_level = 'warn',
  },
}
