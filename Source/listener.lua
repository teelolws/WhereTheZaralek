local addonName, addon = ...

local listener = CreateFrame("Frame")
listener:RegisterEvent("CHAT_MSG_MONSTER_EMOTE")
listener:SetScript("OnEvent", function(self, event, text, monsterName)
    if event == "CHAT_MSG_MONSTER_EMOTE" then
        local mapID = C_Map.GetBestMapForUnit("player")
        if mapID ~= 2133 then return end
        
        addon.action(text)
    end
end)
