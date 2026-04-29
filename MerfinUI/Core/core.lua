local print = print
local ReloadUI = ReloadUI
local stformat = string.format
local _, addonTable = ...
local E, L = unpack(ElvUI)
local PI = E:GetModule('PluginInstaller')
function addonTable:Print(msg)
	print(stformat('%s: %s', addonTable.Name, msg))
end
E.PopupDialogs.MUI_RELOAD = {
	text = L['Reload required. Continue?'],
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = ReloadUI,
	whileDead = 1,
	hideOnEscape = false,
}
local function DeleteModified()
  if not E.private.MUI.automatation.deleteFill then
    return
  end
  hooksecurefunc(StaticPopupDialogs.DELETE_GOOD_ITEM, 'OnShow', function(frame)
    frame.editBox:SetText(DELETE_ITEM_CONFIRM_STRING)
  end)
end
function MUI:PLAYER_ENTERING_WORLD(_, isInitial, isReload)
  DeleteModified()
end
function MUI:RegisterEvents()
  MUI:RegisterEvent('PLAYER_ENTERING_WORLD')
end
