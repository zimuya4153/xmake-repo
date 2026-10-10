package("mifcache_bdslibrary")
    set_description("The bdslibrary package")

    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/$(version)/bdslibrary-$(version)-windows-amd64.zip")

    on_install(function (package)
        os.cp("*.lib", package:installdir("lib"))
    end)
