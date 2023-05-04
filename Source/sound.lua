local addonName, addon = ...

function addon.playSound()
    if addon.db.selectedSound and (addon.db.selectedSound ~= "None") then
        PlaySoundFile(LibStub("LibSharedMedia-3.0"):Fetch("sound", s.soundfile))
    end
end
