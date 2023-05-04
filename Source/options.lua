local addonName, addon = ...

EventUtil.ContinueOnAddOnLoaded(addonName, function()

    LibStub("LibSharedMedia-3.0"):Register("sound", "Squire Horn", 598079)

    local defaults = {
        profile = {
            selectedSound = nil,
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
                get = function() return addon.db.profile.selectedSound end,
    		    set = function(info, v) addon.db.profile.selectedSound = v end,
            },
        },
    }

    LibStub("AceConfigRegistry-3.0"):ValidateOptionsTable(options, addonName)
    LibStub("AceConfig-3.0"):RegisterOptionsTable(addonName, options, {"wherethezaralek"})
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addonName)
end)
