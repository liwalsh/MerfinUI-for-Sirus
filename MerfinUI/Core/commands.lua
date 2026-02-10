local E, L, V, P, G = unpack(ElvUI)
local PI = E:GetModule('PluginInstaller')
local addonName, addonTable = ...

function MUI:Toggles(msg)
	if msg == 'install' then
		PI:Queue(MUI.InstallerData)
	elseif msg == 'config' then
		E:ToggleOptions()
		E.Libs.AceConfigDialog:SelectGroup('ElvUI', 'MUI')
	end
end

function MUI:RegisterCommands()
	self:RegisterChatCommand('merfinui', 'Toggles')
end