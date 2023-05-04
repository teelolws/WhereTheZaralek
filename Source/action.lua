local addonName, addon = ...

function addon.action(text)
    for _, data in pairs(addon.events) do
        local announce = data.announce
        if announce and announce[GetLocale()] and (announce[GetLocale()] == text) then
            if C_Map.CanSetUserWaypointOnMap(2133) then
                local point = UiMapPoint.CreateFromCoordinates(2133, data.coordX/100, data.coordY/100)
                C_Map.ClearUserWaypoint()
                C_Map.SetUserWaypoint(point)
                C_SuperTrack.SetSuperTrackedUserWaypoint(true)
                
                addon.playSound()
                
                if addon.db.global.flashTaskbar then
                    FlashClientIcon()
                end
            end
        end
    end
end
