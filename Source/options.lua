local addonName, addon = ...

EventUtil.ContinueOnAddOnLoaded(addonName, function()

    LibStub("LibSharedMedia-3.0"):Register("sound", "Squire Horn", 598079)

    local defaults = {
        global = {
            selectedSound = "Squire Horn",
            flashTaskbar = true,
            showCompleted = false,
            showEventInfo = false,
            showCoordinates = false,
            hideZoneCaldera = false,
            hideZoneGlimmerogg = false,
            hideZoneNal = false,
            hideZoneLoamm = false,
            hideZoneAberrus = false,
            raresEnabled = false,
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
                get = function() return addon.db.global.selectedSound  end,
    		    set = function(info, v) addon.db.global.selectedSound = v end,
            },
            flashTaskbar = {
                type = "toggle",
                name = "Flash Taskbar",
                set = function(info, v) addon.db.global.flashTaskbar = v end,
                get = function() return addon.db.global.flashTaskbar end,
            },
            showCompleted = {
                type = "toggle",
                name = "Show Completed",
                set = function(info, v) addon.db.global.showCompleted = v addon:UpdateFilters() end,
                get = function() return addon.db.global.showCompleted end,
            },
            showEventInfo = {
                type = "toggle",
                name = "Show Event Info",
                set = function(info, v) addon.db.global.showEventInfo = v addon:UpdateFilters() end,
                get = function() return addon.db.global.showEventInfo end,
            },
            showCoordinates = {
                type = "toggle",
                name = "Show Coordinates",
                set = function(info, v) addon.db.global.showCoordinates = v addon:UpdateFilters() end,
                get = function() return addon.db.global.showCoordinates end,
            },
            hideZoneCaldera = {
                type = "toggle",
                name = "Hide Zone Caldera",
                set = function(info, v) addon.db.global.hideZoneCaldera = v addon:UpdateFilters() end,
                get = function() return addon.db.global.hideZoneCaldera end,
            },
            hideZoneGlimmerogg = {
                type = "toggle",
                name = "Hide Zone Glimmerogg",
                set = function(info, v) addon.db.global.hideZoneGlimmerogg = v addon:UpdateFilters() end,
                get = function() return addon.db.global.hideZoneGlimmerogg end,
            },
            hideZoneNal = {
                type = "toggle",
                name = "Hide Zone Nal",
                set = function(info, v) addon.db.global.hideZoneNal = v addon:UpdateFilters() end,
                get = function() return addon.db.global.hideZoneNal end,
            },
            hideZoneLoamm = {
                type = "toggle",
                name = "Hide Zone Loamm",
                set = function(info, v) addon.db.global.hideZoneLoamm = v addon:UpdateFilters() end,
                get = function() return addon.db.global.hideZoneLoamm end,
            },
            hideZoneAberrus = {
                type = "toggle",
                name = "Hide Zone Aberrus",
                set = function(info, v) addon.db.global.hideZoneAberrus = v addon:UpdateFilters() end,
                get = function() return addon.db.global.hideZoneAberrus end,
            },
            raresEnabled = {
                type = "toggle",
                name = "Alert for Rares too",
                set = function(info, v) addon.db.global.raresEnabled = v end,
                get = function() return addon.db.global.raresEnabled end,
            },
        },
    }

    LibStub("AceConfigRegistry-3.0"):ValidateOptionsTable(options, addonName)
    LibStub("AceConfig-3.0"):RegisterOptionsTable(addonName, options, {"wherethezaralek"})
    LibStub("AceConfigDialog-3.0"):AddToBlizOptions(addonName)
end)
