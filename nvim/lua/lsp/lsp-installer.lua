local lsp_installer_status, lsp_installer = pcall(require, "nvim-lsp-installer")

if not lsp_installer_status then
    return
end


lsp_installer.setup({

    automatic_installation = true,
    
    ui = {
        server_installed = "✓",
        server_pending = "➜",
        server_uninstalled = "✗"

    },

})
