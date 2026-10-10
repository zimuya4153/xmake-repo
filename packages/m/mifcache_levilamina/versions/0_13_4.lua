local deps = {
    "mifcache_entt 41aab920b083aa424ac1d27666ce287eeaff6ceb",
    "mifcache_expected-lite v0.7.0",
    "mifcache_fmt 10.2.1",
    "mifcache_gsl v4.0.0",
    "mifcache_leveldb 1.23",
    "mifcache_magic_enum v0.9.5",
    "mifcache_nlohmann_json v3.11.3",
    "mifcache_rapidjson v1.1.0",
    "mifcache_ctre 3.8.1",
    "mifcache_pcg_cpp v1.0.0",
    "mifcache_pfr 2.1.1",
    "mifcache_symbolprovider v1.1.0",
    "mifcache_bdslibrary 1.21.3.01"
}

function load(package)
    for _, dep in ipairs(deps) do
        package:add("deps", dep)
    end
end

-- BuildCache: extra dependency closure (generated, do not edit)
local _buildcache_extra = {
    "mifcache_demangler v17.0.7",
    "mifcache_libhat 2024.4.16",
    "mifcache_mimalloc v2.1.2",
    "mifcache_preloader v1.9.0",
    "mifcache_symbolprovider v1.1.0",
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
