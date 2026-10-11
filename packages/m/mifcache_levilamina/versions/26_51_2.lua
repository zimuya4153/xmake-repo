local deps_common = {
    "entt v4.0.0",
    "expected-lite v0.8.0",
    "mifcache_fmt 11.2.0",
    "gsl v4.2.0",
    "glm 1.0.1",
    "mifcache_leveldb 1.23",
    "magic_enum v0.9.7",
    "nlohmann_json v3.12.0",
    "rapidjson 2025.02.05",
    "type_safe v0.2.4",
    "pcg_cpp v1.0.0",
    "pfr 2.1.1",
    "mifcache_symbolprovider v1.3.0",
    "parallel-hashmap v1.3.12",
    "concurrentqueue v1.0.4",
    "stb 2025.03.14"
}
local deps_server = {
    "mifcache_bedrockdata v26.51.1-server.4"
}
local deps_client = {
    "mifcache_bedrockdata v26.51.1-client.4"
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
    "mifcache_mimalloc v3.5.0",
    "mifcache_preloader v1.16.2",
    "mifcache_symbolprovider v1.3.0",
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
