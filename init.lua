-- initialize the package manager
require("config.lazy")

-- set common settings
vim.opt.tabstop = 4

-- set colorscheme
vim.cmd [[colorscheme tokyonight-night]]

-- enable line numbers for programming files
vim.api.nvim_exec([[
	augroup SetNumberForProgramming
		autocmd!
		autocmd FileType c,cpp,java,python,javascript,typescript,lua,go,html,css,scss,php,ruby,perl,sh,zsh setlocal number	
	augroup END
]], false)

-- set nvim-treesitter to start executing
require'nvim-treesitter.configs'.setup {
  -- List of parsers to install or "all" for all available
  ensure_installed = { "c", "cpp", "python", "javascript", "typescript", "lua", "go", "html", "css", "bash" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = {},

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
