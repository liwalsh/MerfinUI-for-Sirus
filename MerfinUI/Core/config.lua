local addonName, addonTable = ...
local stformat = string.format
local E, L, V, P, G = unpack(ElvUI) 
local PluginInstaller = E:GetModule('PluginInstaller')
local ACD = E.Libs.AceConfigDialog
local individualUnits = { 'player', 'pet', 'pettarget', 'target', 'targettarget', 'targettargettarget', 'focus', 'focustarget' }
E.Options.name = stformat('%s + %s v%d', E.Options.name, addonTable.Name, addonTable.Version)
function MUI:Config()
	ACH = E.Libs.ACH
	MUI.Options = ACH:Group(addonTable.Name, nil, 20, 'tab')
	MUI.Options.args.installer = ACH:Execute(L["UI Install"], L["Re-Run the installation process."], 1, function() PluginInstaller:Queue(MUI.InstallerData) end)
	MUI.Options.args.spacer1 = ACH:Spacer(3, 'full')
	MUI.Options.args.profiles = ACH:Group(L['Profile Settings'], nil, 1, nil)
	MUI.Options.args.profiles.args.header = ACH:Header(L["Profile Settings"], 1)
	
	MUI.Options.args.profiles.args.accountSettings = ACH:Group(L['Account Settings'], nil, 2)
	MUI.Options.args.profiles.args.accountSettings.inline = true
	MUI.Options.args.profiles.args.accountSettings.args.desc = ACH:Description(L["The World of Warcraft game client stores all its configurations in console variables (CVars). These variables control various aspects of the game, including graphics, sound, and the user interface."], 1, 'medium' )
	MUI.Options.args.profiles.args.accountSettings.args.spacer1 = ACH:Spacer(2, 'full')
	MUI.Options.args.profiles.args.accountSettings.args.apply = ACH:Execute(L['Load CVars'], nil, 3, function() MUI:Set_CVars() end)
	
	MUI.Options.args.profiles.args.chatSettings = ACH:Group(L['Chat Settings'], nil, 3)
	MUI.Options.args.profiles.args.chatSettings.inline = true
	MUI.Options.args.profiles.args.chatSettings.args.desc = ACH:Description(L["This will set up the chat windows to look like this:\n\nGNL - Clog - LT - /W - LFG."], 1, 'medium' )
	MUI.Options.args.profiles.args.chatSettings.args.spacer1 = ACH:Spacer(2, 'full')
	MUI.Options.args.profiles.args.chatSettings.args.apply = ACH:Execute(L['Setup Chat'], nil, 3, function() MUI:SetupChat() end)
	
	MUI.Options.args.profiles.args.elvuiProfiles = ACH:Group(L['Profiles (ElvUI)'], nil, 4)
	MUI.Options.args.profiles.args.elvuiProfiles.inline = true
	MUI.Options.args.profiles.args.elvuiProfiles.args.desc = ACH:Description(L["Сlick a button below to apply the layout of your choosing depending on your role: DPS, Tank or Healer. You can set different profiles to each of your spec in Profile Tab of ElvUI."], 1,'medium')
	MUI.Options.args.profiles.args.elvuiProfiles.args.spacer1 = ACH:Spacer(2, 'full')
	MUI.Options.args.profiles.args.elvuiProfiles.args.dpsTank = ACH:Execute('DPS/Tank', nil, 3, function()MUI:ImportElvUI('DPS/Tank') end)
	MUI.Options.args.profiles.args.elvuiProfiles.args.healerH = ACH:Execute('Healer-H', nil, 4, function()MUI:ImportElvUI('Healer-H') end)
	MUI.Options.args.profiles.args.elvuiProfiles.args.healerV = ACH:Execute('Healer-V', nil, 5, function()MUI:ImportElvUI('Healer-V') end)	

	MUI.Options.args.profiles.args.details = ACH:Group(L['Damage Meter (Details)'], nil, 5)
	MUI.Options.args.profiles.args.details.inline = true
	MUI.Options.args.profiles.args.details.args.desc = ACH:Description(L["Click on the button to adjust settings."], 1, 'medium' )
	MUI.Options.args.profiles.args.details.args.spacer1 = ACH:Spacer(2, 'full')
	MUI.Options.args.profiles.args.details.args.detailsButton = ACH:Execute(L['Details'], nil, 3, function()MUI:ImportDetails('DARK') end)
	
	MUI.Options.args.profiles.args.colorTheme = ACH:Group(L['Color Theme'], nil, 6)
	MUI.Options.args.profiles.args.colorTheme.inline = true
	MUI.Options.args.profiles.args.colorTheme.args.desc = ACH:Description(L["Click on the button below to set color theme of ElvUI unit frames.\n- Normal Theme would enable class colorized frames;\n- Dark Theme would darken them and put Unit Names texts class colorized"], 1, 'medium')
	MUI.Options.args.profiles.args.colorTheme.args.spacer1 = ACH:Spacer(2, 'full')
	MUI.Options.args.profiles.args.colorTheme.args.normalTheme = ACH:Execute(L['Normal Theme'], nil, 3, function() MUI:ChangeTheme('Normal') end)
	MUI.Options.args.profiles.args.colorTheme.args.darkTheme = ACH:Execute(L['Dark Theme'], nil, 4, function() MUI:ChangeTheme('Dark') end)
	
	MUI.Options.args.profiles.args.actionBars = ACH:Group(L['Action Bars Visibility'], nil, 8, nil, function(info) return E.private.MUI.general.profileSettings.actionbars[info[#info]] end, function(info, value) E.private.MUI.general.profileSettings.actionbars[info[#info]] = value; MUI:ActionBarsSettings() end)
	MUI.Options.args.profiles.args.actionBars.inline = true
	MUI.Options.args.profiles.args.actionBars.args.desc = ACH:Description(L["Click on the button to set action bars visibility."], 1, 'medium')
	MUI.Options.args.profiles.args.actionBars.args.spacer1 = ACH:Spacer(2, 'full')
	MUI.Options.args.profiles.args.actionBars.args.showAlways = ACH:Execute(L['Show Always'], nil, 3, function() MUI:ActionBarsVisibility(true) end)
	MUI.Options.args.profiles.args.actionBars.args.showMouseover = ACH:Execute(L['Show Mouseover'], nil, 4, function() MUI:ActionBarsVisibility(false) end)
	MUI.Options.args.profiles.args.actionBars.args.showGrid = ACH:Toggle(L["Show Grid"], L["Show Empty cells"], 5)
	
	MUI.Options.args.profiles.args.bossMods = ACH:Group(L["Deadly Boss Mods"], nil, 9)
	MUI.Options.args.profiles.args.bossMods.inline = true
	MUI.Options.args.profiles.args.bossMods.args.desc = ACH:Description(L["Click on the button to adjust settings."], 1, 'medium' )
	MUI.Options.args.profiles.args.bossMods.args.spacer1 = ACH:Spacer(2, 'full')
	MUI.Options.args.profiles.args.bossMods.args.dbmDpsTank = ACH:Execute('DBM DPS/Tank', nil, 3, function() MUI:ImportDBM("DPS/Tank") end)
	MUI.Options.args.profiles.args.bossMods.args.dbmHealer = ACH:Execute('DBM Healer', nil, 4, function() MUI:ImportDBM("Healer") end)
	
	MUI.Options.args.profiles.args.combatText = ACH:Group(L['Combat Text'], nil, 10)
	MUI.Options.args.profiles.args.combatText.inline = true
	MUI.Options.args.profiles.args.combatText.args.desc = ACH:Description(L["Click on the button to adjust settings. If you wish to see standart Blizzard Combat Text, you can skip this step and disable xCT+ addon."], 1, 'medium' )
	MUI.Options.args.profiles.args.combatText.args.spacer1 = ACH:Spacer(2, 'full')
	MUI.Options.args.profiles.args.combatText.args.blizzard = ACH:Execute('Blizzard', nil, 3, function() MUI:Import_xCT("Blizzard") end)
	MUI.Options.args.profiles.args.combatText.args.xctDps = ACH:Execute('xCT DPS/Tank', nil, 4, function() MUI:Import_xCT("DPS/Tank") end)
	MUI.Options.args.profiles.args.combatText.args.xctHealer = ACH:Execute('xCT Healer', nil, 5, function() MUI:Import_xCT("Healer") end)
	
	MUI.Options.args.blizzard = ACH:Group(L["Miscellaneous"], nil, 2)
	MUI.Options.args.blizzard.args.header = ACH:Header(L["Miscellaneous"], 1)

	MUI.Options.args.blizzard.args.automatation = ACH:Group(L["Automatation"], nil, 1, nil, function(info) return E.private.MUI.automatation[info[#info]] end, function(info, value) E.private.MUI.automatation[info[#info]] = value; E:StaticPopup_Show('MUI_RELOAD') end)
	MUI.Options.args.blizzard.args.automatation.args.deleteFill = ACH:Toggle(L["Fill Delete"], L["Automatically fill out the confirmation text to delete items."], 1)

	MUI.Options.args.blizzard.args.unitframes = ACH:Group(L["Unit Frames"], nil, 2, nil, function(info) return E.private.MUI.unitframes[info[#info]] end, function(info, value) E.private.MUI.unitframes[info[#info]] = value; MUI:SetTransparency() end)
	MUI.Options.args.blizzard.args.unitframes.args.transparentHealth = ACH:Toggle(L["Transparent Unit Health"], L["Make Unit Health texture transparent"], 1)
	MUI.Options.args.blizzard.args.unitframes.args.unitportrait = ACH:Toggle(L["Portrait Unit Frames"], L["Enable/Disable Portrait Unit Frames"], 2)

	MUI.Options.args.weakauras = ACH:Group('WeakAuras', nil, 3)
    MUI.Options.args.weakauras.args.description = ACH:Description(L["Some WeakAuras in the installer may be outdated."], 1)
    MUI.Options.args.weakauras.args.spacer1 = ACH:Spacer(2, 'full')
	MUI.Options.args.weakauras.args.main = ACH:Group(L["General"], nil, 3)
	MUI.Options.args.weakauras.args.main.inline = true
	MUI.Options.args.weakauras.args.main.args.reminders = ACH:Execute('Reminders', nil, 1, function() MUI:ImportWeakAuras('Reminders') end)
    MUI.Options.args.weakauras.args.class = ACH:Group(L["Class Auras"], nil, 5)
    MUI.Options.args.weakauras.args.class.inline = true
    MUI.Options.args.weakauras.args.class.args.dk = ACH:Execute('Death Knight', nil, 1, function() MUI:ImportWeakAuras('DEATH_KNIGHT') end, [[Interface\Icons\Spell_Deathknight_ClassIcon]])
    MUI.Options.args.weakauras.args.class.args.druid = ACH:Execute('Druid', nil, 1, function() MUI:ImportWeakAuras('DRUID') end, [[Interface\Icons\inv_misc_monsterclaw_04]])
    MUI.Options.args.weakauras.args.class.args.hunter = ACH:Execute('Hunter', nil, 1, function() MUI:ImportWeakAuras('HUNTER') end, [[Interface\Icons\inv_weapon_bow_07]])
    MUI.Options.args.weakauras.args.class.args.mage = ACH:Execute('Mage', nil, 1, function() MUI:ImportWeakAuras('MAGE') end, [[Interface\Icons\inv_staff_13]])
    MUI.Options.args.weakauras.args.class.args.paladin = ACH:Execute('Paladin', nil, 1, function() MUI:ImportWeakAuras('PALADIN') end, [[Interface\Icons\Ability_ThunderBolt]])
    MUI.Options.args.weakauras.args.class.args.priest = ACH:Execute('Priest', nil, 1, function() MUI:ImportWeakAuras('PRIEST') end, [[Interface\Icons\inv_staff_30]])
    MUI.Options.args.weakauras.args.class.args.rogue = ACH:Execute('Rogue', nil, 1, function() MUI:ImportWeakAuras('ROGUE') end, [[Interface\Icons\inv_throwingknife_04]])
    MUI.Options.args.weakauras.args.class.args.shaman = ACH:Execute('Shaman', nil, 1, function() MUI:ImportWeakAuras('SHAMAN') end, [[interface/icons/classicon_shaman.blp]])
    MUI.Options.args.weakauras.args.class.args.warlock = ACH:Execute('Warlock', nil, 1, function() MUI:ImportWeakAuras('WARLOCK') end, [[Interface\Icons\Spell_Nature_Drowsy]])
    MUI.Options.args.weakauras.args.class.args.warrior = ACH:Execute('Warrior', nil, 1, function() MUI:ImportWeakAuras('WARRIOR') end, [[Interface\Icons\INV_Sword_27]])
    MUI.Options.args.weakauras.args.raid = ACH:Group("Cooldowns", nil, 5)
    MUI.Options.args.weakauras.args.raid.inline = true
    MUI.Options.args.weakauras.args.raid.args.cooldownsbackend = ACH:Execute('Backend', L["Required aura; without it, other auras related to \"Cooldown\" will not work."], 1, function() MUI:ImportWeakAuras('CooldownsBackend') end)
    MUI.Options.args.weakauras.args.raid.args.t13 = ACH:Execute('Icons', nil, 2, function() MUI:ImportWeakAuras('CooldownsIconsFrontend') end)
    MUI.Options.args.weakauras.args.raid.args.t13_anchors = ACH:Execute('Icons PartyFrames', nil, 3, function() MUI:ImportWeakAuras('CooldownsIconsPartyFramesFrontend') end)
    MUI.Options.args.weakauras.args.raid.args.t13_mrt = ACH:Execute('ProgressBar', nil, 4, function() MUI:ImportWeakAuras('CooldownsProgressBarFrontend') end)
	MUI.Options.args.weakauras.args.miscellaneous = ACH:Group(L["Miscellaneous"], nil, 5)
    MUI.Options.args.weakauras.args.miscellaneous.inline = true
    MUI.Options.args.weakauras.args.miscellaneous.args.dropdownlists = ACH:Execute('DropdownLists', L["This WeakAura displays indicators for:\n - Major and Minor Glyphs\n - Currency for the \"Sirus.su\" server\n - Reputation\n - Missing Gems and Enchantments"], 1, function() MUI:ImportWeakAuras('DropdownLists') end)
    MUI.Options.args.weakauras.args.miscellaneous.args.stats = ACH:Execute('Stats', L["Complete flexible statistics for all classes and specializations, also you can manually configure what you need to display."], 2, function() MUI:ImportWeakAuras('Stats') end)
    MUI.Options.args.weakauras.args.miscellaneous.args.rangeindicator = ACH:Execute('Range Indicator', nil, 3, function() MUI:ImportWeakAuras('RangeIndicator') end)
    MUI.Options.args.weakauras.args.miscellaneous.args.timetodie = ACH:Execute('Time to Die', nil, 4, function() MUI:ImportWeakAuras('TimetoDie') end)
    MUI.Options.args.weakauras.args.miscellaneous.args.paladinauras = ACH:Execute('Paladin Auras', nil, 5, function() MUI:ImportWeakAuras('PaladinAuras') end)

	MUI.Options.args.links = ACH:Group(L["Links"], nil, 4)
	MUI.Options.args.links.args.header = ACH:Header(L["Links"], 1)
	MUI.Options.args.links.args.discord = ACH:Input('Discord Там я выкладываю описание все что переделываю и добавляю:', nil, 2, nil, 'full', function() return 'https://discord.gg/addony-dlia-sirus-su-914079030125420565' end)
	MUI.Options.args.links.args.twitch = ACH:Input('Github Тут лежат последние обновления:', nil, 3, nil, 'full', function() return 'https://github.com/liwalsh/MerfinUI-for-Sirus' end)

	MUI.Options.args.credits = ACH:Group(L["Credits"], nil, 5)
	MUI.Options.args.credits.args.description = ACH:Description("Я бы хотел выделить следующих людей, которые так или иначе помогли мне в разработке/переделки сие чуда.\n\nfxpw - Своим сообществом в Discord\nYorogumo - пожертвовал 25к голды\nSEGAZBS - Пожертвовал 25к голды", 1)

	E.Options.args.MUI = MUI.Options
end