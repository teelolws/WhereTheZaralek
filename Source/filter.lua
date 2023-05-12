local addonName, addon = ...

local timeBase = 1683298800
if GetCurrentRegion() == 3 then
    timeBase = 1683259200
end

local function formatName(text, completed)
    if completed then
        return "|cFF00FF00"..text.."|r"
    else
        return text
    end
end

local function formatHeader(text)
    return "|cFFFFA500"..text.."|r"
end

local function formatInfo(text)
    return " |cFFDCDCDC"..text.."|r"
end

local function formatCoordinates(x, y)
    return " ("..x..", "..y..")"
end

function addon:UpdateFilters()
    local text = "" 
    local settings = addon.db.global

    local day = time()
    day = day - timeBase
    day = day / 86400
    day = math.floor(day)
    day = day % 4
    if day == 0 then day = 4 end

    for groupID = 1, 5 do
        local include = (groupID ~= day)
        if (groupID == 1) and settings.hideZoneGlimmerogg then include = false end
        if (groupID == 2) and settings.hideZoneNal then include = false end
        if (groupID == 3) and settings.hideZoneLoamm then include = false end
        if (groupID == 4) and settings.hideZoneAberrus then include = false end
        if (groupID == 5) and settings.hideZoneCaldera then include = false end
        
        if include then
            local headerAdded
            for _, event in ipairs(addon.events) do
                if (event.groupID == groupID) then
                    local completed = C_QuestLog.IsQuestFlaggedCompleted(event.questID)
                    if (not completed) or (completed and settings.showCompleted) then
                        if not headerAdded then
                            headerAdded = true
                            local header = addon.headers.events[GetLocale()] or addon.headers.events.enUS
                            header = header[groupID]
                            text = text..formatHeader(header).."\n"
                        end
                        text = text..formatName(event.name[GetLocale()] or event.name.enUS, completed)
                        if settings.showEventInfo and event.info then
                            text = text..formatInfo(event.info)
                        end
                        if settings.showCoordinates then
                            text = text..formatCoordinates(event.coordX, event.coordY)
                        end
                        text = text.."\n"
                    end
                end
            end
        end
    end    

    addon:UpdateEventUI(text)
    
    text = ""
    for _, brick in ipairs(addon.bricks) do
        local name = brick.name[GetLocale()] or brick.name.enUS
        local completed = C_QuestLog.IsQuestFlaggedCompleted(brick.questID)
        if (not completed) or (completed and settings.showCompleted) then
            text = text..formatName(name, completed)
            if settings.showEventInfo and brick.info then
                text = text..formatInfo(brick.info)
            end
            if settings.showCoordinates then
                text = text..formatCoordinates(brick.coordX, brick.coordY)
            end
            text = text.."\n"
        end
    end
    
    addon:UpdateBrickUI(text)
	
	text = ""
    for _, snail in ipairs(addon.snail) do
        local completed = false
        for _, questID in ipairs(snail.questIDs) do
            if C_QuestLog.IsQuestFlaggedCompleted(questID) then
                completed = true
                break
            end
        end
        if not completed then
            text = text..formatName(snail.name[GetLocale()] or snail.name.enUS, completed).."\n"
        end
    end
    
    addon:UpdateSnailUI(text)
    
    text = ""
    for _, rare in ipairs(addon.rares) do
        local completed = C_QuestLog.IsQuestFlaggedCompleted(rare.questID)
        if (not completed) or (completed and settings.showCompleted) then
            text = text..formatName(rare.name, completed)
            if settings.showEventInfo and rare.info then
                text = text..formatInfo(rare.info)
            end
            if settings.showCoordinates then
                text = text..formatCoordinates(rare.coordX, rare.coordY)
            end
            text = text.."\n"
        end
    end
    
    addon:UpdateRareUI(text)
end
