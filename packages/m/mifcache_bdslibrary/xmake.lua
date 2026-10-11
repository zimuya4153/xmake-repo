package("mifcache_bdslibrary")
    set_description("The bdslibrary package")

    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/$(version)/bdslibrary-$(version)-windows-amd64.zip")
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    on_install(function (package)
        os.cp("*.lib", package:installdir("lib"))
    end)

    -- BuildCache: legacy versions repaired
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.19.63.01/bdslibrary-1.19.63.01-windows-amd64.zip", {alias = "legacy0"})
    add_versions("legacy0:1.19.63-r01", "b19cbbb3de1970bd607c019729b37f886aba3b57278f3139234556393df6326d")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.19.70.02/bdslibrary-1.19.70.02-windows-amd64.zip", {alias = "legacy1"})
    add_versions("legacy1:1.19.70-r02", "faa3d9827d5ce3eb4148073cf05acd3bcd063c8476627ac475b4b4be09ab07a6")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.19.72.01/bdslibrary-1.19.72.01-windows-amd64.zip", {alias = "legacy2"})
    add_versions("legacy2:1.19.72-r01", "d488626c52568b7faac411d8561108e2e73e3ba95d80edbed578a6af692cb347")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.15.01/bdslibrary-1.20.15.01-windows-amd64.zip", {alias = "legacy3"})
    add_versions("legacy3:1.20.15-r01", "c598e0648d9ceb60d473c289eba34db1f8d1e2f5a26c3af284ede2c4c4f72081")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.30.02/bdslibrary-1.20.30.02-windows-amd64.zip", {alias = "legacy4"})
    add_versions("legacy4:1.20.30-r02", "190fd63b7b6eff68463d7f8dc57fa90fb52d3292673058a608ae3213bd6c4f22")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.31.01/bdslibrary-1.20.31.01-windows-amd64.zip", {alias = "legacy5"})
    add_versions("legacy5:1.20.31-r01", "6887680b17c9d8eb94f5ca355ad700184c98d54176c9de9ad1caaa3dc2e2e7e6")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.32.03/bdslibrary-1.20.32.03-windows-amd64.zip", {alias = "legacy6"})
    add_versions("legacy6:1.20.32-r03", "95865b2c2f27372f774169d644ebcc18dc070796e3a2cf92cd3fc66b29f0827e")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.40.01/bdslibrary-1.20.40.01-windows-amd64.zip", {alias = "legacy7"})
    add_versions("legacy7:1.20.40-r01", "2e26f6886746efae00c519cef4bf2a0938da8f4ff7c9af5914b772db612bf4db")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.41.02/bdslibrary-1.20.41.02-windows-amd64.zip", {alias = "legacy8"})
    add_versions("legacy8:1.20.41-r02", "1afc0d824afc9b8675f5eb49c2cbb0ca9d46d22e9cbe6ba2f6f5cb8f675948f7")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.50.03/bdslibrary-1.20.50.03-windows-amd64.zip", {alias = "legacy9"})
    add_versions("legacy9:1.20.50-r03", "1ad30bcfa13261007fa693144bb014649d48ac7c616d78a0dccad5229f0603e1")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.51.01/bdslibrary-1.20.51.01-windows-amd64.zip", {alias = "legacy10"})
    add_versions("legacy10:1.20.51-r01", "2feca75535f18e5b389508f44b27ed4b462f73753261ac79b24dafd943629915")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.61.01/bdslibrary-1.20.61.01-windows-amd64.zip", {alias = "legacy11"})
    add_versions("legacy11:1.20.61-r01", "aaedd3ca6952704d776a915dd2a1a71506eb71a2a4911f18ea3bf39920d982bc")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.62.02/bdslibrary-1.20.62.02-windows-amd64.zip", {alias = "legacy12"})
    add_versions("legacy12:1.20.62-r02", "33a7c73f771077dcd86dce8aa67eb28f6cb94a873eb203fbb2e6a616541e50b6")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.62.03/bdslibrary-1.20.62.03-windows-amd64.zip", {alias = "legacy13"})
    add_versions("legacy13:1.20.62-r03", "3886bd9525effe2e59f1b35dfa1dde399cb9a7edc1f979b24a61bac217bcd441")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.70.22/bdslibrary-1.20.70.22-windows-amd64.zip", {alias = "legacy14"})
    add_versions("legacy14:1.20.70-r22", "3f3bf66b57fd68320b323cceadfd1ca05304921b4a3c90aab85d4e1b2e4f0f4b")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.70.24/bdslibrary-1.20.70.24-windows-amd64.zip", {alias = "legacy15"})
    add_versions("legacy15:1.20.70-r24", "85978307936982921a84fd6a142c7041e9e6e9f135754f1856d6977e20c47ac3")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.70.25/bdslibrary-1.20.70.25-windows-amd64.zip", {alias = "legacy16"})
    add_versions("legacy16:1.20.70-r25", "03cc29550d072f7c9228c04c8ad7c18bcbc82d963eff7f3ce36d7105f0373d09")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.71.01/bdslibrary-1.20.71.01-windows-amd64.zip", {alias = "legacy17"})
    add_versions("legacy17:1.20.71-r01", "3c5baed872ff7a5c642a0bc0d8557c544c56f4a6f95d7d909ecc4025fffafe41")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.72.01/bdslibrary-1.20.72.01-windows-amd64.zip", {alias = "legacy18"})
    add_versions("legacy18:1.20.72-r01", "0d1dbeabf4b23e1d9149d6b0e50ab11c6f37e95a04728be5abfd28ce18d9bf78")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.73.01/bdslibrary-1.20.73.01-windows-amd64.zip", {alias = "legacy19"})
    add_versions("legacy19:1.20.73-r01", "7cbca44859d092b0d8358159eb47360ecba7e1acbe2c08a0185f2e9b2c70e64f")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.80.05/bdslibrary-1.20.80.05-windows-amd64.zip", {alias = "legacy20"})
    add_versions("legacy20:1.20.80-r05", "8da6c2dbe04b156525e1e0a0c286e8cadd4efcc08c3e50d7e716397e4a4576fe")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.80.20/bdslibrary-1.20.80.20-windows-amd64.zip", {alias = "legacy21"})
    add_versions("legacy21:1.20.80-r20", "bd8c5480d884cb385fe36a0ffccb515d4d76826ce2666184ea0743aa6c9e1ea8")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.80.21/bdslibrary-1.20.80.21-windows-amd64.zip", {alias = "legacy22"})
    add_versions("legacy22:1.20.80-r21", "0f227a37c58e7f6c3136784c3a32a9b660c6e3ab43100c503bb929eab51601ff")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.80.22/bdslibrary-1.20.80.22-windows-amd64.zip", {alias = "legacy23"})
    add_versions("legacy23:1.20.80-r22", "b4f2ff55bc96b2a45c3f7c10f575673e9396d8842708be9950f6e5c9ad4f3d91")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.80.23/bdslibrary-1.20.80.23-windows-amd64.zip", {alias = "legacy24"})
    add_versions("legacy24:1.20.80-r23", "c6fcdd522041410940e09a55ecec540c13b7c2aeaf262d16c73e29511a512953")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.80.24/bdslibrary-1.20.80.24-windows-amd64.zip", {alias = "legacy25"})
    add_versions("legacy25:1.20.80-r24", "1f127e87859c1350b10f67412886083623f76aa0a90920fb59c81f032b1a862e")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.20.81.01/bdslibrary-1.20.81.01-windows-amd64.zip", {alias = "legacy26"})
    add_versions("legacy26:1.20.81-r01", "c0459683035536b6bc3113906dcf85601f5fc757609347296dd0d7f127ee5fa7")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.21.0.03/bdslibrary-1.21.0.03-windows-amd64.zip", {alias = "legacy27"})
    add_versions("legacy27:1.21.0-r03", "a2b5a2e3a7b03f63b9df45830dabe25f2a31b5715ffcf8039c0a7de8b41c9b20")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.21.0.20/bdslibrary-1.21.0.20-windows-amd64.zip", {alias = "legacy28"})
    add_versions("legacy28:1.21.0-r20", "a56ec88eba78da39145a7047d1ec539b042d6848b5bb9ed5ffd9734739f072a6")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.21.0.23/bdslibrary-1.21.0.23-windows-amd64.zip", {alias = "legacy29"})
    add_versions("legacy29:1.21.0-r23", "2669264b678e5fced924c5a0d7bf0d7902c33c620d92471dc276bd6d2c107b5c")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.21.0.24/bdslibrary-1.21.0.24-windows-amd64.zip", {alias = "legacy30"})
    add_versions("legacy30:1.21.0-r24", "f4042e9a2b2e6bb86a60e0329d46f458557f4bc9e2fabb593e9e11a42e805d42")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.21.0.25/bdslibrary-1.21.0.25-windows-amd64.zip", {alias = "legacy31"})
    add_versions("legacy31:1.21.0-r25", "")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.21.0.26/bdslibrary-1.21.0.26-windows-amd64.zip", {alias = "legacy32"})
    add_versions("legacy32:1.21.0-r26", "")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.21.1.03/bdslibrary-1.21.1.03-windows-amd64.zip", {alias = "legacy33"})
    add_versions("legacy33:1.21.1-r03", "4076b610cc661488316e5bb3f437a5d8db74da899132f831f7cbd23b2a5e1ea8")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.21.2.02/bdslibrary-1.21.2.02-windows-amd64.zip", {alias = "legacy34"})
    add_versions("legacy34:1.21.2-r02", "c48e9da6bfae645b95f26f802c44ff068ffeaf515e81883d6bd00a7473d99b7b")
    add_urls("https://github.com/LiteLDev/BDSLibrary/releases/download/1.21.3.01/bdslibrary-1.21.3.01-windows-amd64.zip", {alias = "legacy35"})
    add_versions("legacy35:1.21.3-r01", "09add0a51c5131d65aa8facd171e926a9c3ef223fe249b4fa2a65cfc76130cb6")
