local addonName, addon = ...

local libEME = LibStub:GetLibrary("EditModeExpanded-1.0")

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
    if libEME:IsFrameMarkedHidden(frame) then return end
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
    if text == "" then return end
    if addon.db.global.raresEnabled then
        frame.rareText:SetText(text)
        frame.rareText:Show()
    else
        frame.rareText:Hide()
    end
end

function addon:UpdateBrickUI(text)
    if text == "" then return end
    if not addon.db.global.hideBricks then
        local header = "Brick Boxes"
        if GetLocale() == "ruRU" then
            header = "Обменные кирпичи"
        end 
        frame.eventText:SetText((frame.eventText:GetText() or "").."\n|cFFFFA500"..header.."|r\n"..text)
    end
end

function addon:UpdateSnailUI(text)
    if text == "" then return end 
    if not addon.db.global.hideSnails then
        frame.eventText:SetText((frame.eventText:GetText() or "").."\n"..text)
    end
end
