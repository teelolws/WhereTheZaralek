local addonName, addon = ...

local libEME = LibStub:GetLibrary("EditModeExpanded-1.0")

local listener = CreateFrame("Frame")
listener:RegisterEvent("CHAT_MSG_MONSTER_EMOTE")
listener:RegisterEvent("PLAYER_ENTERING_WORLD")
listener:RegisterEvent("ZONE_CHANGED_NEW_AREA")
listener:RegisterEvent("VIGNETTE_MINIMAP_UPDATED")
listener:RegisterEvent("VIGNETTES_UPDATED")
listener:RegisterEvent("ADDON_LOADED")
listener:SetScript("OnEvent", function(self, event, text, monsterName)
    if event == "CHAT_MSG_MONSTER_EMOTE" then
        local mapID = C_Map.GetBestMapForUnit("player")
        if mapID ~= 2133 then return end
        
        addon.action(text)
    elseif (event == "PLAYER_ENTERING_WORLD") or (event == "ZONE_CHANGED_NEW_AREA") or (event == "VIGNETTE_MINIMAP_UPDATED") then
        local mapID = C_Map.GetBestMapForUnit("player")
        if mapID ~= 2133 then addon:HideUI() return end
        
        addon:UpdateFilters()
    elseif event == "VIGNETTES_UPDATED" then
        addon.vignettesUpdated()
    elseif event == "ADDON_LOADED" then
        if text == "WhereTheZaralek" then
            listener:UnregisterEvent("ADDON_LOADED")
            libEME:RegisterFrame(WhereTheZaralekUI, "Where the Zaralek?", addon.db.profile.eme)
            libEME:RegisterResizable(WhereTheZaralekUI)
        end
    end
end)
