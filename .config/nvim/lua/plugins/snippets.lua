return {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
        local ls = require("luasnip")
        local s = ls.snippet
        local t = ls.text_node
        local i = ls.insert_node

        -- Load VS Code style snippets
        require("luasnip.loaders.from_vscode").lazy_load()

        -- Custom C++ snippets
        ls.add_snippets("cpp", {
            s("cpp", {
                t({ "#include<iostream>", "#include<vector>", "using namespace std;", "", "int main(){", "" }),
                i(1), -- Cursor lands here
                t({ "", "", "return 0;", "}" }),
            }),
            s("pt", {
                t('cout<<"'),
                i(1),
                t('"<<endl;'),
            }),
        })
    end,
}
