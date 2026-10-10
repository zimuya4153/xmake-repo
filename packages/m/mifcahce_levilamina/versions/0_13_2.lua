local deps = {
    "mifcahce_entt 41aab920b083aa424ac1d27666ce287eeaff6ceb",
    "mifcahce_expected-lite v0.7.0",
    "mifcahce_fmt 10.2.1",
    "mifcahce_gsl v4.0.0",
    "mifcahce_leveldb 1.23",
    "mifcahce_magic_enum v0.9.5",
    "mifcahce_nlohmann_json v3.11.3",
    "mifcahce_rapidjson v1.1.0",
    "mifcahce_ctre 3.8.1",
    "mifcahce_pcg_cpp v1.0.0",
    "mifcahce_pfr 2.1.1",
    "mifcahce_symbolprovider v1.1.0",
    "mifcahce_bdslibrary 1.21.0.03"
}

function load(package)
    for _, dep in ipairs(deps) do
        package:add("deps", dep)
    end
end

-- BuildCache: extra dependency closure (generated, do not edit)
local _buildcache_extra = {
    "mifcahce_demangler v17.0.7",
    "mifcahce_libhat 2024.4.16",
    "mifcahce_mimalloc v2.1.2",
    "mifcahce_preloader v1.6.3",
    "mifcahce_symbolprovider v1.1.0",
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
