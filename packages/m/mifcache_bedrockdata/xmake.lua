package("mifcache_bedrockdata")

    if is_plat("windows") and is_arch("x64") then
        add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/$(version)/bedrock-runtime-data-$(version)-windows-x64.zip", {alias = "new"})
        add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/$(version)/bedrock-runtime-data-windows-x64.zip", {alias = "old"})
        add_versionfiles("versions.txt")
    end

    local deps = {
        ["1.21.0.3-server"] = {"prelink v0.3.0"},
        ["1.21.0.3-client"] = {"prelink v0.3.0"},
        ["1.21.3.1-server"] = {"prelink v0.3.0"},
        ["1.21.20.3-server"] = {"prelink v0.3.0"},
        ["1.21.50.10-server"] = {"prelink v0.3.0"},
        ["1.21.60.10-server"] = {"prelink v0.3.0"},
        ["v1.21.7004-server.3"] = {"prelink v0.4.1"},
        ["v1.21.7004-server.4"] = {"prelink v0.4.1"},
        ["v1.21.7004-server.5"] = {"prelink v0.4.1"},
        ["v1.21.7004-server.6"] = {"prelink v0.5.0"},
        ["v1.21.7004-server.7"] = {"prelink v0.5.0"},
        ["v1.21.7004-server.9"] = {"prelink v0.5.0"},
        ["v1.21.124-server.3"] = {"prelink v0.7.1"},
        ["v1.21.124-server.4"] = {"prelink v0.7.1"},
        ["v1.21.124-server.5"] = {"prelink v0.7.1"},
    }

    local deps_matching = {
        ["1.21.70.04-server"] = {"prelink v0.4.1"},
        ["v1.21.803-server"] = {"prelink v0.5.0"},
        ["v1.21.80-server"] = {"prelink v0.5.0"},
        ["v1.21.93-server"] = {"prelink v0.5.0"},
        ["v1.21.102-server"] = {"prelink v0.7.0"},
        ["v1.21.111-server"] = {"prelink v0.7.0"},
        ["v1.21.120-server"] = {"prelink v0.7.0"},
        ["v1.21.124-server"] = {"prelink v0.7.0"},
        ["v1.21.124-client"] = {"prelink v0.7.1"},
        ["v1.21.132"] = {"prelink v0.7.1"},
        ["v26.10.4"] = {"prelink v0.7.1"},
        ["v26.20"] = {"prelink v0.7.1"},
        ["v26.32.2"] = {"prelink v0.8.4"},
        ["v26.40"] = {"prelink v0.8.5"},
        ["v26.51.1"] = {"prelink v0.8.6"},
    }

    on_load(function(package)
        local version = tostring(package:version_str())
        local dep
        local matched = false
        for ver, d in pairs(deps) do
            if version == ver then
                dep = d
                matched = true
                break
            end
        end
        if not matched then
            for ver, d in pairs(deps_matching) do
                if version:startswith(ver) then
                    dep = d
                    break
                end
            end
        end
        if dep then
            package:add("deps", dep)
        end
    end)

    on_install(function (package)
        os.cp("*", package:installdir("bin"))
        package:addenv("PATH", "bin")
    end)

    -- BuildCache: legacy versions repaired
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.0.3-client/bedrock-runtime-data-1.21.0.3-client-windows-x64.zip", {alias = "legacy0"})
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.0.3-client/bedrock-runtime-data-windows-x64.zip", {alias = "legacy0"})
    add_versions("legacy0:1.21.0-r3-client", "c7e41b174226e7dcb7a10ff0e3cd1c48628e217133e5d02b8eee89ab045384c6")
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.0.3-server/bedrock-runtime-data-1.21.0.3-server-windows-x64.zip", {alias = "legacy1"})
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.0.3-server/bedrock-runtime-data-windows-x64.zip", {alias = "legacy1"})
    add_versions("legacy1:1.21.0-r3-server", "54ecd5130b6aeec9971bc5f5c9b7cc82a9aecc21b4745c193bc7b78d8eeaf78c")
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.20.3-server/bedrock-runtime-data-1.21.20.3-server-windows-x64.zip", {alias = "legacy2"})
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.20.3-server/bedrock-runtime-data-windows-x64.zip", {alias = "legacy2"})
    add_versions("legacy2:1.21.20-r3-server", "3faf191302f7109461b913c10348253c6b7c96d2232d623a81a0450f4f159ebf")
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.3.1-server/bedrock-runtime-data-1.21.3.1-server-windows-x64.zip", {alias = "legacy3"})
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.3.1-server/bedrock-runtime-data-windows-x64.zip", {alias = "legacy3"})
    add_versions("legacy3:1.21.3-r1-server", "995cdb5f111aae059f9036410ab3cb283d0be915404662584cc87700cb383259")
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.50.10-server/bedrock-runtime-data-1.21.50.10-server-windows-x64.zip", {alias = "legacy4"})
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.50.10-server/bedrock-runtime-data-windows-x64.zip", {alias = "legacy4"})
    add_versions("legacy4:1.21.50-r10-server", "2f943cb33ba61ab78c5493394633a332709a4239529c20659cbe94d01247f662")
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.60.10-server/bedrock-runtime-data-1.21.60.10-server-windows-x64.zip", {alias = "legacy5"})
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.60.10-server/bedrock-runtime-data-windows-x64.zip", {alias = "legacy5"})
    add_versions("legacy5:1.21.60-r10-server", "64b0117b7bedd5c5fc718cc30d7e045ccf4103e0a2c40008695d935f6e3fba82")
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.70.04-server.1/bedrock-runtime-data-1.21.70.04-server.1-windows-x64.zip", {alias = "legacy6"})
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.70.04-server.1/bedrock-runtime-data-windows-x64.zip", {alias = "legacy6"})
    add_versions("legacy6:1.21.70-r04-server.1", "63fd38debdc193c7572ef89ea72f60ad2b2e76d319280e2a557cf3bf562ad119")
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.70.04-server.2/bedrock-runtime-data-1.21.70.04-server.2-windows-x64.zip", {alias = "legacy7"})
    add_urls("https://github.com/LiteLDev/bedrock-runtime-data/releases/download/1.21.70.04-server.2/bedrock-runtime-data-windows-x64.zip", {alias = "legacy7"})
    add_versions("legacy7:1.21.70-r04-server.2", "eddde5043d955451f7bb7e1cfdf199e3b1091abf766a7780c0ee8b09b33fffc0")
