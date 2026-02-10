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
function MUI:PLAYER_ENTERING_WORLD(_, isInitial, isReload) end
function MUI:RegisterEvents()
	MUI:RegisterEvent('PLAYER_ENTERING_WORLD')
end