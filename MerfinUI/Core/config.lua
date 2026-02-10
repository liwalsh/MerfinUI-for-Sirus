local addonName, addonTable = ...
local stformat = string.format
local E, L, V, P, G = unpack(ElvUI) 
local PluginInstaller = E:GetModule('PluginInstaller')
local ACD = E.Libs.AceConfigDialog
E.Options.name = stformat('%s + %s v%d', E.Options.name, addonTable.Name, addonTable.Version)
function MUI:Config()
	ACH = E.Libs.ACH
	MUI.Options = ACH:Group(addonTable.Name, nil, 20, 'tab')
	MUI.Options.args.installer = ACH:Execute(L["UI Install"], L["Re-Run the installation process."], 1, function() PluginInstaller:Queue(MUI.InstallerData) end)
	MUI.Options.args.spacer1 = ACH:Spacer(3, 'full')
	MUI.Options.args.profiles = ACH:Group(L["Profile Settings"], nil, 3, 'tab', function(info) return E.private.MUI.general.profileSettings[info[#info]] end, function(info, value) E.private.MUI.general.profileSettings[info[#info]] = value end)
	MUI.Options.args.profiles.args.header = ACH:Header(L["Profile Settings"], 1)
	MUI.Options.args.profiles.args.media = ACH:Group('', nil, 3, nil, function(info) return E.private.MUI.general.profileSettings.media[info[#info]] end, function(info, value) E.private.MUI.general.profileSettings.media[info[#info]] = value end)
	MUI.Options.args.profiles.args.media.inline = true
	MUI.Options.args.profiles.args.media.args.font = ACH:SharedMediaFont(L["Default Font"], L["Font that core of the UI will use."], 2)
	MUI.Options.args.profiles.args.media.args.texture = ACH:SharedMediaStatusbar(L["Default Texture"], L["Texture that core of the UI will use."], 3)
	MUI.Options.args.profiles.args.actionbars = ACH:Group(L["Action Bars"], nil, 5, nil, function(info) return E.private.MUI.general.profileSettings.actionbars[info[#info]] end, function(info, value) E.private.MUI.general.profileSettings.actionbars[info[#info]] = value; MUI:ActionBarsSettings() end)
	MUI.Options.args.profiles.args.actionbars.inline = true
	MUI.Options.args.profiles.args.actionbars.args.showGrid = ACH:Toggle(L["Show Grid"], L["Show Empty cells"], 1)
	MUI.Options.args.profiles.args.actionbars.args.showMouseover = ACH:Toggle(L["Show Mouseover"], nil, 2)
	MUI.Options.args.profiles.args.unitframes = ACH:Group(L["Unit Frames"], nil, 6, nil, function(info) return E.private.MUI.general.profileSettings.unitframes[info[#info]] end, function(info, value) E.private.MUI.general.profileSettings.unitframes[info[#info]] = value; MUI:SetTransparency() end)
	MUI.Options.args.profiles.args.unitframes.inline = true
	MUI.Options.args.profiles.args.unitframes.args.transparentHealth = ACH:Toggle(L["Transparent Unit Health"], L["Make Unit Health texture transparent"], 2)
	MUI.Options.args.profiles.args.setDefaults = ACH:Execute(L["Reset to Defaults"], L["Reset to Defaults UI"], 8, function() MUI:SetDefaults() end)
	MUI.Options.args.layout = ACH:Group(L["Color Theme"], nil, 4)
	MUI.Options.args.layout.args.header = ACH:Header(L["Color Theme"], 1)
	MUI.Options.args.layout.args.desc = ACH:Description(L["Click on the button below to set color theme of ElvUI unit frames.\n- Normal Theme would enable class colorized frames;\n- Dark Theme would darken them and put Unit Names texts class colorized"], 2)
	MUI.Options.args.layout.args.spacer1 = ACH:Spacer(3, 'full')
	MUI.Options.args.layout.args.setNormalTheme = ACH:Execute(L["Normal Theme"], nil, 8, function() MUI:ChangeTheme('Normal'); E:StaticPopup_Show('MUI_RELOAD') end)
	MUI.Options.args.layout.args.setDarkTheme = ACH:Execute(L["Dark Theme"], nil, 9, function() MUI:ChangeTheme('Dark'); E:StaticPopup_Show('MUI_RELOAD') end)
	MUI.Options.args.layout.args.spacer3 = ACH:Spacer(10, 'full')
	MUI.Options.args.layout.args.setDefaults = ACH:Execute(L["Reset to Defaults"], nil, 11, function() MUI:SetDefaultLayout() end)
	MUI.Options.args.blizzard = ACH:Group(L["Improvements"], nil, 6)
	MUI.Options.args.blizzard.args.header = ACH:Header(L["Improvements"], 1)
	MUI.Options.args.blizzard.args.automatation = ACH:Group(L["Automatation"], nil, 3, nil, function(info) return E.private.MUI.automatation[info[#info]] end, function(info, value) E.private.MUI.automatation[info[#info]] = value E:StaticPopup_Show('MUI_RELOAD') end)
	MUI.Options.args.blizzard.args.automatation.args.deleteFill = ACH:Toggle(L["Fill Delete"], L["Automatically fill out the confirmation text to delete items."], 1)
	MUI.Options.args.links = ACH:Group(L["Links"], nil, 6)
	MUI.Options.args.links.args.header = ACH:Header(L["Links"], 1)
	MUI.Options.args.links.args.discord = ACH:Input('Discord:', nil, 2, nil, 'full', function() return 'https://discord.gg/merfin' end)
	MUI.Options.args.links.args.twitch = ACH:Input('Twitch:', nil, 3, nil, 'full', function() return 'https://twitch.tv/merfin' end)
	MUI.Options.args.links.args.boosty = ACH:Input('Boosty:', nil, 4, nil, 'full', function() return 'https://boosty.to/merfin' end)
	MUI.Options.args.links.args.patreon = ACH:Input('Patreon:', nil, 5, nil, 'full', function() return 'https://www.patreon.com/MerfinUI' end)
	E.Options.args.MUI = MUI.Options
end