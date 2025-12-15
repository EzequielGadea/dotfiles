-- Ruta a jdtls instalado con Mason
local mason_path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
local config_dir = mason_path .. "/config_linux"
local launcher = vim.fn.glob(mason_path .. "/plugins/org.eclipse.equinox.launcher_*.jar", 1)

-- Workspace único por proyecto
local workspace_dir = vim.fn.stdpath("data") .. "/jdtls-workspaces/" ..
vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

local bundles = {
  vim.fn.stdpath("data") .. "/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar",
}
vim.list_extend(bundles, vim.split(vim.fn.glob(vim.fn.stdpath("data") .. "/mason/packages/java-test/extension/server/*.jar"), "\n"))

-- Configuración del cliente LSP
return {
    name = "jdtls",
    cmd = {
        "java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.protocol=true",
        "-Dlog.level=ALL",
        "-Xms1g",
        "--add-modules=ALL-SYSTEM",
        "--add-opens", "java.base/java.util=ALL-UNNAMED",
        "--add-opens", "java.base/java.lang=ALL-UNNAMED",
        "-jar", launcher,
        "-configuration", config_dir,
        "-data", workspace_dir,
    },
    root_markers = {
        {
            "pom.xml",
            "mvnw",
            "gradlew",
            "build.gradle",
        },
        ".project",
        ".git",
    },
    filetypes = { "java" },
    init_options = {
        bundles = bundles,
    },
    settings = {
        java = { }
    }
}

