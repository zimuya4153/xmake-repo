local deps = {
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
    "mifcache_entt 3.13.2"
}
local version_deps = {
    ["0.8.x"] = { "mifcache_bdslibrary 1.20.61.01" },
    ["0.9.x"] = { "mifcache_bdslibrary 1.20.62.02" },
    ["0.10.x"] = { "mifcache_bdslibrary 1.20.72.01" },
    ["0.11.x"] = { "mifcache_bdslibrary 1.20.72.01" },
    ["0.12.0"] = { "mifcache_bdslibrary 1.20.80.05" },
    ["0.12.1"] = { "mifcache_bdslibrary 1.20.80.05" },
    ["0.12.2"] = { "mifcache_bdslibrary 1.20.80.05" },
    ["0.12.3"] = { "mifcache_bdslibrary 1.20.81.01" },
    ["0.12.4"] = { "mifcache_bdslibrary 1.20.81.01" }
}
function load(package)
    import("core.base.semver")
    for _, dep in ipairs(deps) do
        package:add("deps", dep)
    end
    for key, value in pairs(version_deps) do
        try { function()
            if semver.satisfies(package:version_str(), key) then
                for _, dependency in ipairs(value) do
                    package:add("deps", dependency)
                end
            end
        end }
    end
end

-- BuildCache: extra dependency closure (generated, do not edit)
local _buildcache_extra = {
    "mifcache_demangler",
    "mifcache_mimalloc",
    "mifcache_preloader",
    "mifcache_symbolprovider ~1",
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
