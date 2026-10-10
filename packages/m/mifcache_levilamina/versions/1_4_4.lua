local deps_common = {
    "mifcache_entt v3.14.0",
    "mifcache_expected-lite v0.8.0",
    "mifcache_fmt 11.2.0",
    "mifcache_gsl v4.0.0",
    "mifcache_glm 1.0.1",
    "mifcache_leveldb 1.23",
    "mifcache_magic_enum v0.9.7",
    "mifcache_nlohmann_json v3.11.3",
    "mifcache_rapidjson v1.1.0",
    "mifcache_type_safe v0.2.4",
    "mifcache_pcg_cpp v1.0.0",
    "mifcache_pfr 2.1.1",
    "mifcache_symbolprovider v1.2.0",
    "mifcache_parallel-hashmap v1.3.12",
    "mifcache_concurrentqueue v1.0.4"
}
local deps_server = {
    "mifcache_bedrockdata v1.21.93-server.6"
}
local deps_client = {
    "mifcache_bedrockdata 1.21.0.3-client",
    "mifcache_imgui[dx11=y,dx12=y] v1.91.0-docking"
}

function load(package)
    for _, dep in ipairs(deps_common) do
        package:add("deps", dep)
    end
    if package:config("target_type") == "server" then
        for _, dep in ipairs(deps_server) do
            package:add("deps", dep)
        end
    else
        for _, dep in ipairs(deps_client) do
            package:add("deps", dep)
        end
    end
end

-- BuildCache: extra dependency closure (generated, do not edit)
local _buildcache_extra = {
    "mifcache_cpr 1.11.1",
    "mifcache_demangler v17.0.7",
    "mifcache_libhat 0.4.0",
    "mifcache_mimalloc v2.1.7",
    "mifcache_preloader v1.15.3",
    "mifcache_symbolprovider v1.2.0",
    "mifcache_trampoline 2024.11.7",
}
do
    local _buildcache_original_load = load
    function load(package)
        _buildcache_original_load(package)
        for _, dep in ipairs(_buildcache_extra) do
            package:add("deps", dep)
        end
    end
end
