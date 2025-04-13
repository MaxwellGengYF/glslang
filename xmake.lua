set_xmakever("2.9.9")
add_rules("mode.release", "mode.debug", "mode.releasedbg")
set_policy("build.ccache", not is_plat("windows"))
set_policy("check.auto_ignore_flags", false)

lc_options = {
    toolchain = "llvm",
}

if lc_options then
    for k, v in pairs(lc_options) do
        set_config(k, v)
    end
end
includes("xmake_func.lua", "SPIRV/xmake.lua")