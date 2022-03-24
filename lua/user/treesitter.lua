local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  ensure_installed = "maintained", -- "all", "maintained", or list of parsers
  sync_install = false,
  ignore_install = { "" }, -- install languages synchronously for ensure ensure_installed
  autopairs = {
    enable = true,
  },
  highlight = {
    enable = true, -- Setting this to false will disable the entire plugin!
    disable = { "" }, -- List of languages to disable highlighting for
    additional_vim_regex_highlighting = true
  },
  indent = { enable = true, disable = {"yaml" } },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
}
