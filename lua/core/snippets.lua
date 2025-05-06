require('luasnip.loaders.from_vscode').lazy_load()
require('luasnip.loaders.from_snipmate').lazy_load()

-- Snippets personalizados
require("luasnip").filetype_extend("php", {"html"})
require("luasnip").filetype_extend("javascript", {"html"})

