local deps = {
    "entt 41aab920b083aa424ac1d27666ce287eeaff6ceb",
    "expected-lite v0.7.0",
    "mifcache_fmt 10.2.1",
    "gsl v4.0.0",
    "mifcache_leveldb 1.23",
    "magic_enum v0.9.5",
    "nlohmann_json v3.11.3",
    "rapidjson v1.1.0",
    "ctre 3.8.1",
    "pcg_cpp v1.0.0",
    "pfr 2.1.1",
    "mifcache_symbolprovider v1.1.0",
    "bdslibrary 1.21.0-r03"
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
    "mifcache_preloader v1.6.3",
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
