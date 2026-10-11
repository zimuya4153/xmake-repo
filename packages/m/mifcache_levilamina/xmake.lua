package("mifcache_levilamina")
    add_urls("https://github.com/LiteLDev/LeviLamina.git")
    add_versionfiles("versions/versions.txt")

    add_defines("ENTT_PACKED_PAGE=128", "ENTT_SPARSE_PAGE=4096", "ENTT_NO_MIXIN")

    add_configs("target_type", {default = "server", values = {"server", "client"}})

    on_load(function(package)
        import("core.base.semver")
        local version = package:version_str()
        local sem = semver.try_parse(version)
        if sem and sem:le("0.12.4") then
            version = "old"
        end
        version = string.gsub(version, "%.", "_")
        try { function()
            import("versions." .. version).load(package)
        end, catch { function(e)
            cprint(
                "${bright yellow}warning: ${clear}Unknown version: ${bright cyan}"
                .. version .. "${clear}, will use main branch dependencies."
            )
            import("versions.main").load(package)
        end } }
        if package:config("target_type") == "server" then
            package:add("defines", "LL_PLAT_S")
        else
            package:add("defines", "LL_PLAT_C")
        end
    end)

    on_install(function(package)

        -- BuildCache: era includes
        do
            local file = "src/mc/common/wrapper/optional_ref.h"
            if os.isfile(file) then
                local data = io.readfile(file)
                if data and data:find([==[std::optional<UnwrapT>{
                    std::_Construct_from_invoke_result_tag{},
                    std::forward<Fn>(fn),
                    static_cast<T&>(*mPtr)
                }]==], 1, true) then
                    io.replace(file, [==[std::optional<UnwrapT>{
                    std::_Construct_from_invoke_result_tag{},
                    std::forward<Fn>(fn),
                    static_cast<T&>(*mPtr)
                }]==], [==[std::optional<UnwrapT>{
                    std::invoke(std::forward<Fn>(fn), static_cast<T&>(*mPtr))
                }]==], {plain = true})
                    print("patched src/mc/common/wrapper/optional_ref.h")
                end
            end
        end

        -- BuildCache: upstream dependency renames
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.21.3.01", "bdslibrary 1.21.3-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.21.3.01", "bdslibrary v1.21.3-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.21.2.02", "bdslibrary 1.21.2-r02", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.21.2.02", "bdslibrary v1.21.2-r02", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.21.1.03", "bdslibrary 1.21.1-r03", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.21.1.03", "bdslibrary v1.21.1-r03", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.21.0.03", "bdslibrary 1.21.0-r03", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.21.0.03", "bdslibrary v1.21.0-r03", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.21.0.26", "bdslibrary 1.21.0-r26", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.21.0.26", "bdslibrary v1.21.0-r26", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.21.0.25", "bdslibrary 1.21.0-r25", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.21.0.25", "bdslibrary v1.21.0-r25", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.21.0.24", "bdslibrary 1.21.0-r24", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.21.0.24", "bdslibrary v1.21.0-r24", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.81.01", "bdslibrary 1.20.81-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.81.01", "bdslibrary v1.20.81-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.21.0.23", "bdslibrary 1.21.0-r23", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.21.0.23", "bdslibrary v1.21.0-r23", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.80.05", "bdslibrary 1.20.80-r05", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.80.05", "bdslibrary v1.20.80-r05", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.21.0.20", "bdslibrary 1.21.0-r20", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.21.0.20", "bdslibrary v1.21.0-r20", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.73.01", "bdslibrary 1.20.73-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.73.01", "bdslibrary v1.20.73-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.80.24", "bdslibrary 1.20.80-r24", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.80.24", "bdslibrary v1.20.80-r24", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.80.23", "bdslibrary 1.20.80-r23", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.80.23", "bdslibrary v1.20.80-r23", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.72.01", "bdslibrary 1.20.72-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.72.01", "bdslibrary v1.20.72-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.80.22", "bdslibrary 1.20.80-r22", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.80.22", "bdslibrary v1.20.80-r22", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.71.01", "bdslibrary 1.20.71-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.71.01", "bdslibrary v1.20.71-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.80.21", "bdslibrary 1.20.80-r21", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.80.21", "bdslibrary v1.20.80-r21", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.62.03", "bdslibrary 1.20.62-r03", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.62.03", "bdslibrary v1.20.62-r03", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.80.20", "bdslibrary 1.20.80-r20", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.80.20", "bdslibrary v1.20.80-r20", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.70.25", "bdslibrary 1.20.70-r25", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.70.25", "bdslibrary v1.20.70-r25", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.70.24", "bdslibrary 1.20.70-r24", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.70.24", "bdslibrary v1.20.70-r24", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.62.02", "bdslibrary 1.20.62-r02", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.62.02", "bdslibrary v1.20.62-r02", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.70.22", "bdslibrary 1.20.70-r22", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.70.22", "bdslibrary v1.20.70-r22", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.61.01", "bdslibrary 1.20.61-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.61.01", "bdslibrary v1.20.61-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.51.01", "bdslibrary 1.20.51-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.51.01", "bdslibrary v1.20.51-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.50.03", "bdslibrary 1.20.50-r03", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.50.03", "bdslibrary v1.20.50-r03", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.41.02", "bdslibrary 1.20.41-r02", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.41.02", "bdslibrary v1.20.41-r02", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.40.01", "bdslibrary 1.20.40-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.40.01", "bdslibrary v1.20.40-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.32.03", "bdslibrary 1.20.32-r03", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.32.03", "bdslibrary v1.20.32-r03", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.31.01", "bdslibrary 1.20.31-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.31.01", "bdslibrary v1.20.31-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.30.02", "bdslibrary 1.20.30-r02", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.30.02", "bdslibrary v1.20.30-r02", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.20.15.01", "bdslibrary 1.20.15-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.20.15.01", "bdslibrary v1.20.15-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.19.72.01", "bdslibrary 1.19.72-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.19.72.01", "bdslibrary v1.19.72-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.19.70.02", "bdslibrary 1.19.70-r02", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.19.70.02", "bdslibrary v1.19.70-r02", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary 1.19.63.01", "bdslibrary 1.19.63-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bdslibrary v1.19.63.01", "bdslibrary v1.19.63-r01", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata 1.21.70.04-server.2", "bedrockdata 1.21.70-r04-server.2", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata v1.21.70.04-server.2", "bedrockdata v1.21.70-r04-server.2", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata 1.21.70.04-server.1", "bedrockdata 1.21.70-r04-server.1", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata v1.21.70.04-server.1", "bedrockdata v1.21.70-r04-server.1", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata 1.21.60.10-server", "bedrockdata 1.21.60-r10-server", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata v1.21.60.10-server", "bedrockdata v1.21.60-r10-server", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata 1.21.50.10-server", "bedrockdata 1.21.50-r10-server", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata v1.21.50.10-server", "bedrockdata v1.21.50-r10-server", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata 1.21.20.3-server", "bedrockdata 1.21.20-r3-server", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata v1.21.20.3-server", "bedrockdata v1.21.20-r3-server", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata 1.21.3.1-server", "bedrockdata 1.21.3-r1-server", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata v1.21.3.1-server", "bedrockdata v1.21.3-r1-server", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata 1.21.0.3-server", "bedrockdata 1.21.0-r3-server", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata v1.21.0.3-server", "bedrockdata v1.21.0-r3-server", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata 1.21.0.3-client", "bedrockdata 1.21.0-r3-client", {plain = true})
            end
        end
        do
            local file = "xmake.lua"
            if os.isfile(file) then
                io.replace(file, "bedrockdata v1.21.0.3-client", "bedrockdata v1.21.0-r3-client", {plain = true})
            end
        end
        if package:config("target_type") == "server" then
            import("package.tools.xmake").install(package)
        else
            import("package.tools.xmake").install(package, {"--target_type=client"})
        end
    end)
