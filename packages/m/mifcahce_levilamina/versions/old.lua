local deps = {
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
    "mifcahce_entt 3.13.2"
}
local version_deps = {
    ["0.8.x"] = { "mifcahce_bdslibrary 1.20.61.01" },
    ["0.9.x"] = { "mifcahce_bdslibrary 1.20.62.02" },
    ["0.10.x"] = { "mifcahce_bdslibrary 1.20.72.01" },
    ["0.11.x"] = { "mifcahce_bdslibrary 1.20.72.01" },
    ["0.12.0"] = { "mifcahce_bdslibrary 1.20.80.05" },
    ["0.12.1"] = { "mifcahce_bdslibrary 1.20.80.05" },
    ["0.12.2"] = { "mifcahce_bdslibrary 1.20.80.05" },
    ["0.12.3"] = { "mifcahce_bdslibrary 1.20.81.01" },
    ["0.12.4"] = { "mifcahce_bdslibrary 1.20.81.01" }
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
    "mifcahce_demangler",
    "mifcahce_mimalloc",
    "mifcahce_preloader",
    "mifcahce_symbolprovider ~1",
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
