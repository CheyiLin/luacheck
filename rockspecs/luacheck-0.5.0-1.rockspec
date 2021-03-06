package = "luacheck"
version = "0.5.0-1"
source = {
   url = "git://github.com/mpeterv/luacheck.git",
   tag = "0.5.0"
}
description = {
   summary = "A simple static analyzer for Lua",
   detailed = [[
Luacheck is a tool for linting and static analysis of Lua code. It is able to spot usage of undefined global variables, unused local variables and a few other typical problems within Lua applications.

Luacheck provides a command line interface as well as a Lua module which can be used by other programs. 
]],
   homepage = "https://github.com/mpeterv/luacheck",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.3",
   "metalua-parser >= 0.7.3-2",
   "checks >= 1.0",
   "argparse >= 0.3.0",
   "ansicolors >= 1.0-1",
   "luafilesystem >= 1.6.2"
}
build = {
   type = "builtin",
   modules = {
      luacheck = "src/luacheck.lua",
      ["luacheck.scan"] = "src/luacheck/scan.lua",
      ["luacheck.check"] = "src/luacheck/check.lua",
      ["luacheck.filter"] = "src/luacheck/filter.lua",
      ["luacheck.options"] = "src/luacheck/options.lua",
      ["luacheck.stds"] = "src/luacheck/stds.lua",
      ["luacheck.expand_rockspec"] = "src/luacheck/expand_rockspec.lua",
      ["luacheck.utils"] = "src/luacheck/utils.lua",
      ["luacheck.format"] = "src/luacheck/format.lua"
   },
   install = {
      bin = {
         luacheck = "bin/luacheck.lua"
      }
   },
   copy_directories = {"spec", "doc"}
}
