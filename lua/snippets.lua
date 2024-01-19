local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("c", {
	s("inc", {
		t({ "#include<stdio.h>", "int main(){", "\t" }),
		i(1),
		t({ "", "}" }),
	}),
})

ls.add_snippets("cpp", {
	s("inc", {
		t({ "#include<iostream>", "using namespace std;", "int main(){", "\t" }),
		i(1),
		t({ "", "}" }),
	}),
})
