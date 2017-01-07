package = "LuaClasses"
version = "0.1"
source = {
    url = "https://github.com/Angrypygmy/LuaClasses",
    md5 = "",
}
description = {
    summary = "",
    detailed = [[
            
    ]],
    homepage = "http://lua-users.org/wiki/ObjectLua",
    maintainer = "Angrypygmy",
    license = "None"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "module",
    modules = {
        ["LuaClasses.class"]     = "class.lua"
    }
}
