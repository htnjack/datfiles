pcall(require, "luarocks.loader")

local awful = require("awful")

require('awful.autofocus')

RC = {}
RC.vars = require("main.user-variables")

require("main.signals")
require("main.error-handling")
require("deco.statusbar")

RC.theme = require("main.theme")
RC.layouts = require("main.layouts")
RC.tags    = require("main.tags")
RC.rules   = require("main.rules")

local binding = {
    globalbuttons = require("binding.globalbuttons"),
    clientbuttons = require("binding.clientbuttons"),
    globalkeys    = require("binding.globalkeys"),
    bindtotags    = require("binding.bindtotags"),
    clientkeys    = require("binding.clientkeys")
}

RC.globalkeys = binding.globalkeys()
RC.globalkeys = binding.bindtotags(RC.globalkeys)
root.buttons(binding.globalbuttons())
root.keys(RC.globalkeys)
awful.rules.rules = RC.rules(
    binding.clientkeys(),
    binding.clientbuttons()
)

RC.layouts = RC.layouts()
RC.tags = RC.tags()


awful.spawn.with_shell("~/.config/awesome/autorun.sh")
