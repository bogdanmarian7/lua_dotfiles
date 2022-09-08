return {
    filetypes = { "python" },
    single_file_support = true,
    --cmd = { "pyright-langserver", "--stdio" },
    settings = {
            python = {
                interpreterPath = "~/env/Scripts/python.exe", 
                analysis = {
                    typeCheckingMode = "off", -- off, basic, strict
                    autoSearchPaths = true,
                    diagnosticMode = "workspace",
                    useLibraryCodeForTypes = true--,
                    --diagnosticSeverityOverrides = {
                        --strictListInference = true,
                        --strictDictionaryInference = true,
                        --strictSetInference = true,
                        --reportUnusedImport = "warning",
                        --reportUnusedClass = "warning",
                        --reportUnusedFunction = "warning",
                        --reportUnusedVariable = "warning",
                        --reportUnusedCoroutine = "warning",
                        --reportDuplicateImport = "warning",
                        --reportPrivateUsage = "warning",
                        --reportUnusedExpression = "warning",
                        --reportConstantRedefinition = "error",
                        --reportIncompatibleMethodOverride = "error",
                        --reportUndefinedVariable = "error",
                        --reportAssertAlwaysTrue = "error",
                    --},
                },
            },
    },
}
