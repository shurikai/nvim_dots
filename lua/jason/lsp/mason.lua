local status_ok, mason = pcall(require, 'mason')
if not status_ok then
    return
end

local mlsp_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not mlsp_ok then
    return
end

local servers = {
	"sumneko_lua",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
	"yamlls",
}

local settings = {
	ui = {
		border = "rounded",
		icons = {
			package_installed = "◍",
			package_pending = "◍",
			package_uninstalled = "◍",
		},
	},
	log_level = vim.log.levels.INFO,
	max_concurrent_installers = 4,
}

mason.setup(settings)
mason_lspconfig.setup {
	ensure_installed = servers,
	automatic_installation = true,
}

local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

local opts = {}

for _, server in pairs(servers) do
	opts = {
		on_attach = require("jason.lsp.handlers").on_attach,
		capabilities = require("jason.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

    if server == "sumneko_lua" then
        local l_status_ok, lua_dev = pcall(require, 'lua-dev')
        if not l_status_ok then
            return
        end

        local luadev = lua_dev.setup {
            lspconfig = {
                on_attach = opts.on_attach,
                capabilities = opts.capabilities,
            },
        }
        print("calling sumneko_lua.setup")
        lspconfig.sumneko_lua.setup(luadev)
        goto continue
    end

	local require_ok, conf_opts = pcall(require, "jason.lsp.settings." .. server)
	if require_ok then
		opts = vim.tbl_deep_extend("force", conf_opts, opts)
	end

	lspconfig[server].setup(opts)
    ::continue::
end
