add_rules("mode.debug", "mode.release")

target("eden")
    set_kind("shared")
    add_files("src/stdlib/*.c")
    set_optimize("smallest")

target("MicroParserCombinator")
    set_kind("shared")
    add_files("src/mpc/*.c")
    set_optimize("smallest")

target("jesus")
    set_kind("binary")
    add_files("src/jesus/*.c")
    set_optimize("smallest")

target("divine")
    set_kind("binary")
    add_files("src/divine/*.c")
    set_optimize("smallest")
    add_includedirs("src/mpc")
    add_deps("MicroParserCombinator")
