if IS_WRATH_BUILD == nil then IS_WRATH_BUILD = (select(4, GetBuildInfo()) >= 30000) end


local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_REGEN_DISABLED")
f:RegisterEvent("PLAYER_REGEN_ENABLED")
f:SetScript("OnEvent", function(self, event)
	if IS_WRATH_BUILD then SetCVar("nameplateShowEnemies", event == "PLAYER_REGEN_DISABLED" and 1 or 0)
	elseif event == "PLAYER_REGEN_DISABLED" then ShowNameplates()
	else HideNameplates() end
end)
