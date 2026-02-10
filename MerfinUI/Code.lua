local E, L, V, P, G = unpack(ElvUI)
local EP = LibStub("LibElvUIPlugin-1.0")
local PI = E:GetModule('PluginInstaller')
local addonName, addonTable = ...
addonTable.L = GetLocale()
addonTable.Name = '|cff40c7ebMerfinUI|r'
addonTable.Version = tonumber(GetAddOnMetadata(addonName, 'Version'))
addonTable.Font = 'SFUIDisplayCondensed-Semibold'
addonTable.Texture = 'Flatt'
addonTable.AceProfileName = string.format("%s - %s", UnitName("player"), GetRealmName("player"))
addonTable.MerfinProfileName = 'MerfinUI v' .. addonTable.Version
addonTable.RealmName = GetRealmName("player")
MUI = E:NewModule(addonName, 'AceConsole-3.0', 'AceHook-3.0', 'AceEvent-3.0', 'AceTimer-3.0')
local Initialize = function()
	if E.private.MUI.install_version == nil then
		PI:Queue(MUI.InstallerData)
	end
	EP:RegisterPlugin(addonName, MUI.Config)
	MUI:RegisterCommands()
	MUI:RegisterEvents()
end
E:RegisterModule(addonName, Initialize)