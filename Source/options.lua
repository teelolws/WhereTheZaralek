local addonName, addon = ...

EventUtil.ContinueOnAddOnLoaded(addonName, function()

    LibStub("LibSharedMedia-3.0"):Register("sound", "Squire Horn", 598079)

    local defaults = {
        global = {
            selectedSound = "Squire Horn",
            flashTaskbar = true,
        }
    }
        
    addon.db = LibStub("AceDB-3.0"):New("WhereTheZaralekDB", defaults)
        
    local options = {
        type = "group",
        args = {
            selectedSound = {
                type = "select",
                dialogControl = "LSM30_Sound",
                name = "Sound to Play",
                values = AceGUIWidgetLSMlists.sound,
                get = function() return addon.db.global.selectedSound end,
    		    set = function(info, v) addon.db.global.selectedSound = v end,
            },
            flashTaskbar = {
                type = "toggle",
                name = "Flash Taskbar",
                set = function(info, v) addon.db.global.flashTaskbar = v end,
                get = function() return addon.db.global.flashTaskbar end,
            },
        },
    }

    LibStub("AceConfigRegistry-3.0"):ValidateOptionsTable(options, addonName)
    LibStub("AceConfig-3.0"):RegisterOptionsTable(addonName, options, {"wherethezaralek"})
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addonName)
end)
