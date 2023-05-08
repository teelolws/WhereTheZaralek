local addonName, addon = ...

local function setWaypoint(x, y)
    if C_Map.CanSetUserWaypointOnMap(2133) then
        local point = UiMapPoint.CreateFromCoordinates(2133, x, y)
        C_Map.ClearUserWaypoint()
        C_Map.SetUserWaypoint(point)
        C_SuperTrack.SetSuperTrackedUserWaypoint(true)
        
        addon.playSound()
        
        if addon.db.global.flashTaskbar then
            FlashClientIcon()
        end
    end
end

function addon.action(text)
    for _, data in pairs(addon.events) do
        local announce = data.announce
        if announce and announce[GetLocale()] and (announce[GetLocale()] == text) then
            setWaypoint(data.coordX/100, data.coordY/100)
        end
    end
end

local lastAnnounced = {}
function addon.vignettesUpdated()
    if not addon.db.global.raresEnabled then return end
    for _, guid in ipairs(C_VignetteInfo.GetVignettes()) do
        local info = C_VignetteInfo.GetVignetteInfo(guid)
        if info and info.objectGUID then
            local _, _, objectID = info.objectGUID:find("(%d%d%d%d%d%d)")
            if objectID then
                objectID = tonumber(objectID)
                for _, rare in ipairs(addon.rares) do
                    if rare.objectID == objectID then
                        if lastAnnounced[rare.questID] and ((lastAnnounced[rare.questID] + 1200) > time()) then
                        else
                            addon.playSound()
                            setWaypoint(rare.coordX/100, rare.coordY/100)
                            lastAnnounced[rare.questID] = time()
                        end
                    end
                end
            end
        end
    end
end
