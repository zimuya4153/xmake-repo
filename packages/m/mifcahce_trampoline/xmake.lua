package("mifcahce_trampoline")
    set_description("enable lambda on C callback without void* user_data")

    set_urls("https://github.com/microcai/trampoline.git")

    add_versions("2024.11.7", "e6abf9e4dba627052c8222825569d55831cb9f40")

    add_patches("2024.11.7", "patches/patch-cmake-version.diff", "60caede2969e01418ed12bec225834f07aef62a1daa1fa8b4cd77acbb90439d9")

    add_deps("cmake")

    on_install(function (package)
        local configs = {}
        table.insert(configs, "-DCMAKE_BUILD_TYPE=" .. (package:debug() and "Debug" or "Release"))
        import("package.tools.cmake").install(package, configs)
        os.cp("include/*", package:installdir("include"))
    end)
