local addonName, addon = ...

function addon.playSound()
    if addon.db.global.selectedSound and (addon.db.global.selectedSound ~= "None") then
        PlaySoundFile(LibStub("LibSharedMedia-3.0"):Fetch("sound", addon.db.global.selectedSound))
    end
end
