local addonName, addon = ...

addon.ui = CreateFrame("Frame", "WhereTheZaralekUI")
local frame = addon.ui

frame:SetSize(200,300)
frame:SetPoint("LEFT", nil, "LEFT")

frame.eventText = frame:CreateFontString(nil, "OVERLAY", "GameTooltipTextSmall")
frame.eventText:SetPoint("TOPLEFT", frame, "TOPLEFT")
frame.eventText:SetPoint("BOTTOMRIGHT", frame, "BOTTOMRIGHT", 0, -100)
frame.eventText:SetJustifyV("TOP")

function addon:UpdateEventUI(text)
    frame.eventText:SetText(text)
    frame:Show()
end

function addon:HideUI()
    frame:Hide()
end

frame.rareText = frame:CreateFontString(nil, "OVERLAY", "GameTooltipTextSmall")
frame.rareText:SetSize(150,300)
frame.rareText:SetPoint("TOPLEFT", frame, "TOPRIGHT")
frame.rareText:SetJustifyV("TOP")

function addon:UpdateRareUI(text)
    if addon.db.global.raresEnabled then
        frame.rareText:SetText(text)
    else
        frame.rareText:Hide()
    end
end

function addon:UpdateBrickUI(text)
    if addon.db.global.showBricks then 
        frame.eventText:SetText(frame.eventText:GetText().."\n|cFFFFA500Brick Boxes|r\n"..text)
    end
end

function addon:UpdateSnailUI(text) 
    frame.eventText:SetText(frame.eventText:GetText().."\n|cFFFFA500Snail Daily|r\n"..text)
end
