-- mason plugin
local mason_status, mason = pcall(require, "mason")

if not mason_status then
  return
end

-- mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")

if not mason_lspconfig_status then
  return
end


mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        --"clangd", -- C++
        "ccls",
        "html",
        "cssls", -- CSS
        "jdtls", -- java
        "tsserver", -- javascript
        -- still trying to get server for python

    },


})




