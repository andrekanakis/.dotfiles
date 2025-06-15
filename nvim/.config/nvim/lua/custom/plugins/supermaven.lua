return {
  'supermaven-inc/supermaven-nvim',
  opts = {
    keymaps = {
      -- accept_suggestion = '<Tab>',
      accept_suggestion = nil, -- use nvim-cmp for completion
      clear_suggestion = '<C-]>',
      accept_word = '<C-j>',
    },
    disable_filetypes = { 'text', 'markdown', 'csv', 'md', '.md' },

    log_level = 'warn',
  },
}
