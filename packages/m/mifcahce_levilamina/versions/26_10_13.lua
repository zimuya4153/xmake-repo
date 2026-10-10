local deps_common = {
    "mifcahce_entt v3.15.0",
    "mifcahce_expected-lite v0.8.0",
    "mifcahce_fmt 11.2.0",
    "mifcahce_gsl v4.2.0",
    "mifcahce_glm 1.0.1",
    "mifcahce_leveldb 1.23",
    "mifcahce_magic_enum v0.9.7",
    "mifcahce_nlohmann_json v3.11.3",
    "mifcahce_rapidjson v1.1.0",
    "mifcahce_type_safe v0.2.4",
    "mifcahce_pcg_cpp v1.0.0",
    "mifcahce_pfr 2.1.1",
    "mifcahce_symbolprovider v1.2.0",
    "mifcahce_parallel-hashmap v1.3.12",
    "mifcahce_concurrentqueue v1.0.4",
    "mifcahce_stb 2025.03.14"
}
local deps_server = {
    "mifcahce_bedrockdata v26.10.4-server.16"
}
local deps_client = {
    "mifcahce_bedrockdata v26.10.4-client.16"
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
    "mifcahce_cpr 1.11.1",
    "mifcahce_demangler v17.0.7",
    "mifcahce_libhat 0.4.0",
    "mifcahce_mimalloc v2.1.7",
    "mifcahce_preloader v1.15.7",
    "mifcahce_symbolprovider v1.2.0",
    "mifcahce_trampoline 2024.11.7",
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
