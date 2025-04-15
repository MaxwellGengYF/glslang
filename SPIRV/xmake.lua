target("spirv_builder")
add_rules("lc_basic_settings", {
    project_kind = "object",
})
add_includedirs(path.directory(os.scriptdir()), {public = true})
add_files("SpvBuilder.cpp", "InReadableOrder.cpp", "disassemble.cpp", "doc.cpp")
target_end("spirv_builder")