add_rules("mode.release", "mode.debug")
includes("./../common/xmake.lua")
target("solver")
    add_rules("plugin.vsxmake.autoupdate")
    set_kind("static")
    set_languages("c++17")
    add_headerfiles("*.h")
    add_files("*.cu")
    add_includedirs(".",{public=true})
    add_cugencodes("compute_75")
    add_cuflags("--std c++17", "-lineinfo")
    add_packages("cuda",{public=true})
    add_deps("common")