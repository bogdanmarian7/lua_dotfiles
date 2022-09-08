-- Nvim treesitter config:
local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

require 'nvim-treesitter.install'.compilers = { "gcc", "cc", "clang", "cl", "zig"}

configs.setup {
    -- A list of parser names, or "all"
    ensure_installed = "all",--{ "c", "lua", "rust" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false, -- install lang asynchronously
    -- Automatically install missing parsers when entering buffer
    --auto_install = true,
    -- List of parsers to ignore installing (for "all")
    ignore_install = { "astro", "beancount", "bibtex",
        "commonlisp", "cooklang", "cuda", "devicetree",
        "dot", "eex", "elm", "elvish", "embedded_template",
        "erlang", "fennel", "fish", "foam", "fortran",
        "fusion", "gdscript", "gleam", "Glimmer and Ember",
        "glsl", "gdresource", "gomod", "gowork", "hack",
        "haskell", "hcl", "heex", "hjson", "hocon", "lalrpop",
        "llvm", "m68k", "norg", "ocaml", "ocaml_interface",
        "ocamllex", "org", "phpdoc", "pioasm", "proto",
        "pug", "ql", "qmljs", "rasi", "rego", "rnoweb",
        "scala", "scheme", "scss", "slint", "sparql",
        "supercollider", "surface", "svelte", "teal",
        "tiger", "tlaplus", "todotxt", "tsx", "turtle",
        "v", "vala", "verilog", "wgsl", "yaml", "yang", "zig",
        "typescript"},

    highlight = {
        -- `false` will disable the whole extension
        enable = true,
        -- list of language that will be disabled
        disable = {""},

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
    indent = {enable = true, disable = {"yaml"}},

}
