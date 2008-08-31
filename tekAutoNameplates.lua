
local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_REGEN_DISABLED")
f:RegisterEvent("PLAYER_REGEN_ENABLED")
f:SetScript("OnEvent", function(self, event) if event == "PLAYER_REGEN_DISABLED" then ShowNameplates() else HideNameplates() end end)
