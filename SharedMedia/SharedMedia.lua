local _, SharedMedia = ...
SharedMedia = LibStub("AceAddon-3.0"):NewAddon("SharedMedia", "AceEvent-3.0")

function SharedMedia:OnEnable()
    self:RegisterEvent("PLAYER_ENTERING_WORLD", "HandleEnteringWorld")
end

function SharedMedia:HandleEnteringWorld()
    ChatFrame1:SetFrameStrata("MEDIUM")
end

Merfin = Merfin or {} 