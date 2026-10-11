local deps = {
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
    "entt 3.13.2"
}
local version_deps = {
    ["0.8.x"] = { "bdslibrary 1.20.61-r01" },
    ["0.9.x"] = { "bdslibrary 1.20.62-r02" },
    ["0.10.x"] = { "bdslibrary 1.20.72-r01" },
    ["0.11.x"] = { "bdslibrary 1.20.72-r01" },
    ["0.12.0"] = { "bdslibrary 1.20.80-r05" },
    ["0.12.1"] = { "bdslibrary 1.20.80-r05" },
    ["0.12.2"] = { "bdslibrary 1.20.80-r05" },
    ["0.12.3"] = { "bdslibrary 1.20.81-r01" },
    ["0.12.4"] = { "bdslibrary 1.20.81-r01" }
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
