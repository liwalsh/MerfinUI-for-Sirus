local print = print
local ReloadUI = ReloadUI

local _, addonTable = ...

local E, L = unpack(ElvUI)
local PI = E:GetModule('PluginInstaller')

function addonTable:Print(msg)
	print(addonTable.Name .. ': ' .. msg)
end

-- Reload popup
E.PopupDialogs.MUI_RELOAD = {
	text = L["Reload required - continue?"],
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = ReloadUI,
	whileDead = 1,
	hideOnEscape = false,
}

local function DeleteModified()

	if not E.private.MUI.automatation.deleteFill then return end

	-- > Green
	hooksecurefunc(StaticPopupDialogs.DELETE_GOOD_ITEM, 'OnShow', function(frame)
		frame.editBox:SetText(DELETE_ITEM_CONFIRM_STRING)
	end)

	--[[
	-- > Quests
	hooksecurefunc(StaticPopupDialogs.DELETE_GOOD_QUEST_ITEM, 'OnShow', function(frame)
		frame.editBox:SetText(DELETE_ITEM_CONFIRM_STRING)
	end)
	]]--
end

function MUI:PLAYER_ENTERING_WORLD(_, isInitial, isReload)

	DeleteModified()

end

function MUI:RegisterEvents()
	MUI:RegisterEvent('PLAYER_ENTERING_WORLD')
end