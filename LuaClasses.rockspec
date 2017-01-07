package = "LuaClasses"
version = "0.1-0"
source = {
    url = "git://github.com/Angrypygmy/LuaClasses",
    tag = "v0.1"
}
description = {
    summary = "Closure based class support for lua",
    detailed = 
    [[
        A closure based Lua script supporting:
            -Encapsulation
            -Inheritance
            -Polymorphism
    ]],
    homepage = "https://github.com/Angrypygmy/LuaClasses",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        LuaClasses = "class.lua"
    }
}
