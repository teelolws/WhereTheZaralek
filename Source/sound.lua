local addonName, addon = ...

function addon.playSound()
    if addon.db.selectedSound and (addon.db.selectedSound ~= "None") then
        PlaySoundFile(LSM:Fetch("sound", s.soundfile))
    end
end
