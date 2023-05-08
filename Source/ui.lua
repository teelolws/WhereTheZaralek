local addonName, addon = ...

addon.ui = CreateFrame("EditBox", "WhereTheZaralekUI", nil, "SharedEditBoxTemplate")
local frame = addon.ui
frame.fontName = "GameFontHighlightSmall"
frame.defaultFontName = "GameFontDisableSmall"
frame.defaultText = CALENDAR_EVENT_DESCRIPTION
frame.maxLetters = 255

frame:SetSize(200,600)
frame:SetMultiLine(true)
frame:SetPoint("LEFT", nil, "LEFT")
frame:SetAutoFocus(false)
frame:Disable()
frame:SetMovable(true)
frame:EnableMouse(true)
frame:RegisterForDrag("LeftButton")
frame:SetScript("OnDragStart", function(self)
    self:StartMoving()
end)
frame:SetScript("OnDragStop", function(self)
    self:StopMovingOrSizing()
end)

function addon:UpdateEventUI(text)
    frame:SetText(text)
    frame:Show()
end

function addon:HideUI()
    frame:Hide()
end

-- TODO: a second column/section with a list of rares
function addon:UpdateRareUI(text) 
    if not addon.db.raresEnabled then
        -- :Hide()
    end
end

-- TODO: a third column/section with a list of bricks
function addon:UpdateBrickUI(text) end
