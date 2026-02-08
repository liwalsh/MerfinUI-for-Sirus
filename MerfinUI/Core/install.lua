local addonName, addonTable = ...
local E, L, V, P, G = unpack(ElvUI)
local Version = GetAddOnMetadata(addonName, "Version")

local ReloadUI = ReloadUI
local format = string.format
local StopMusic = StopMusic

function addonTable:PluginInstallStepComplete(plugin)
	PluginInstallStepComplete:Hide()
    PluginInstallStepComplete.message = string.format("%s Installed!", plugin)
    PluginInstallStepComplete:Show()
end

function addonTable:InstallComplete()
	if GetCVarBool("Sound_EnableMusic") then
		StopMusic()
	end

	E.global.MUI.install_version = Version
	E.private.MUI.install_version = Version

	ReloadUI()
end

MUI.InstallerData = {

	Title = format("|cff4beb2c%s %s|r", addonTable.Name, "Installation"),
	Name = addonTable.Name,
	tutorialImage = "Interface\\AddOns\\MerfinUI\\Media\\Textures\\logo.tga",

	Pages = {
		[1] = function()
			PluginInstallFrame.SubTitle:SetFormattedText(L["Welcome to the installation for %s."], addonTable.Name.." "..Version)
			PluginInstallFrame.Desc1:SetText(L["This is installer that contains profiles for various addons of MerfinUI."])
			PluginInstallFrame.Desc2:SetText(L["Before you start the installation process i highly recommend you to make a backup of your current WTF folder to save your current settings just in case."])
			PluginInstallFrame.Desc3:SetText(L["Don't forget to click on Finished on last step. That would reload your UI and all the settings will be applied"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", addonTable.InstallComplete)
			PluginInstallFrame.Option1:SetText(L["Skip Process"])
		end,

		
		[2] = function()
			PluginInstallFrame.SubTitle:SetText(L["Account Settings"])
			PluginInstallFrame.Desc1:SetText(L["World of Warcraft game client stores all of its configurations in console variables (CVars). These variables affect many aspects of the game, such as the graphics, the sound system and the interface."])
			PluginInstallFrame.Desc2:SetText(L["This step also contains settings for such addons as Questie and Leatrix."])
			PluginInstallFrame.Desc3:SetText(L['Importance: |cff4beb2cOptional|r'])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:Set_CVars() end)
			PluginInstallFrame.Option1:SetText(L["Load CVars"])
		end,

		[3] = function()
			PluginInstallFrame.SubTitle:SetText(L["Chat Settings"])
			PluginInstallFrame.Desc1:SetText(L["This will setup chat windows to look like this:\n\nGNL - Clog - LT - /W - LFG."])
			PluginInstallFrame.Desc2:SetText(L['Importance: |cff4beb2cOptional|r'])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:SetupChat() end)
			PluginInstallFrame.Option1:SetText(L["Setup Chat"])
		end,

		[4] = function()
			PluginInstallFrame.SubTitle:SetText(L["Profiles (ElvUI)"])
			PluginInstallFrame.Desc1:SetText(L["Click the button below to apply the layout of your choice, depending on your role: DPS/Tank or Healer. Use Healer-H if you prefer horizontal party frames (similar to your raid frames). Choose Healer-V if you'd like your party frames to grow vertically. I personally prefer the vertical layout, but it's up to you!"])
			PluginInstallFrame.Desc2:SetText(L['Importance: |cff4beb2cHigh|r'])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ImportElvUI("DPS/Tank") end)
			PluginInstallFrame.Option1:SetText("DPS/Tank")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ImportElvUI("Healer-H") end)
			PluginInstallFrame.Option2:SetText("Healer-H")
			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript("OnClick", function() MUI:ImportElvUI("Healer-V") end)
			PluginInstallFrame.Option3:SetText("Healer-V")
		end,

		[5] = function()
			PluginInstallFrame.SubTitle:SetText(L["Action Bars Visibility"])
			PluginInstallFrame.Desc1:SetText(L["Click on the button to set color theme."])
			PluginInstallFrame.Desc3:SetText(L['Importance: |cff4beb2cOptional|r'])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ActionBarsVisibility(true) end)
			PluginInstallFrame.Option1:SetText(L["Show Always"])
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ActionBarsVisibility(false) end)
			PluginInstallFrame.Option2:SetText(L["Show Mouseover"])
		end,


		[6] = function()
			PluginInstallFrame.SubTitle:SetText(L["Combat Text"])
			PluginInstallFrame.Desc1:SetText(L["Here you can choose how to display Combat Text (damage, healing numbers, etc.). If you prefer the normal numbers above the mobs, click on Blizzard. If you prefer damage numbers to be stacked in one place, use xCT — either xCT DPS/Tank or xCT Healer, depending on your spec."])
			PluginInstallFrame.Desc2:SetText(L['Importance: |cff4beb2cHigh|r'])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:Import_xCT("Blizzard") end)
			PluginInstallFrame.Option1:SetText("Blizzard CText")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:Import_xCT("DPS/Tank") end)
			PluginInstallFrame.Option2:SetText("xCT DPS/Tank")
			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript("OnClick", function() MUI:Import_xCT("Healer") end)
			PluginInstallFrame.Option3:SetText("xCT Healer")

		end,

		[7] = function()
			PluginInstallFrame.SubTitle:SetText("Boss Mods")
			PluginInstallFrame.Desc1:SetText(L["Click on the button to adjust settings."])
			PluginInstallFrame.Desc2:SetText(L['Importance: |cff4beb2cHigh|r'])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ImportDBM("DPS/Tank") end)
			PluginInstallFrame.Option1:SetText("DPS/Tank")
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ImportDBM("Healer") end)
			PluginInstallFrame.Option2:SetText("Healer")
		end,

		[8] = function()
			PluginInstallFrame.SubTitle:SetText("Damage Meter (Details)")
			PluginInstallFrame.Desc1:SetText(L["Click the button to adjust the settings."])
			PluginInstallFrame.Desc3:SetText(L['Importance: |cff4beb2cHigh|r'])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ImportDetails('Normal') end)
			PluginInstallFrame.Option1:SetText(L["Details"])
		end,

		[9] = function()
			PluginInstallFrame.SubTitle:SetText(L["Color Theme"])
			PluginInstallFrame.Desc1:SetText(L["Click on the button to set color theme."])
			PluginInstallFrame.Desc3:SetText(L['Importance: |cff4beb2cOptional|r'])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ChangeTheme('Normal') end)
			PluginInstallFrame.Option1:SetText(L["Normal Theme"])
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ChangeTheme('Dark') end)
			PluginInstallFrame.Option2:SetText(L["Dark Theme"])
		end,

		[10] = function()
			PluginInstallFrame.SubTitle:SetText("Weakauras - Для классов в латах")
			PluginInstallFrame.Desc1:SetText(L["Выберите свой класс для загрузки профиля WeakAuras."])
			
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ImportWeakAuras("DEATH_KNIGHT") end)
			PluginInstallFrame.Option1:SetText("DEATH KNIGHT")
			
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ImportWeakAuras("WARRIOR") end)
			PluginInstallFrame.Option2:SetText("WARRIOR")

			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript("OnClick", function() MUI:ImportWeakAuras("PALADIN") end)
			PluginInstallFrame.Option3:SetText("PALADIN")
		end,

		[11] = function()
			PluginInstallFrame.SubTitle:SetText("Weakauras - Для классов в кольчуге")
			PluginInstallFrame.Desc1:SetText(L["Выберите свой класс для загрузки профиля WeakAuras."])
			
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ImportWeakAuras("HUNTER") end)
			PluginInstallFrame.Option1:SetText("HUNTER")
			
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ImportWeakAuras("SHAMAN") end)
			PluginInstallFrame.Option2:SetText("SHAMAN")
			
			
		end,

		[12] = function()
			PluginInstallFrame.SubTitle:SetText("Weakauras - Для классов в коже")
			PluginInstallFrame.Desc1:SetText(L["Выберите свой класс для загрузки профиля WeakAuras."])

			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ImportWeakAuras("ROGUE") end)
			PluginInstallFrame.Option1:SetText("ROGUE")

			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ImportWeakAuras("DRUID") end)
			PluginInstallFrame.Option2:SetText("DRUID")
		end,

		[13] = function()
			PluginInstallFrame.SubTitle:SetText("Weakauras - Для классов в ткани")
			PluginInstallFrame.Desc1:SetText(L["Выберите свой класс для загрузки профиля WeakAuras."])

			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ImportWeakAuras("WARLOCK") end)
			PluginInstallFrame.Option1:SetText("WARLOCK")

			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ImportWeakAuras("MAGE") end)
			PluginInstallFrame.Option2:SetText("MAGE")

			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript("OnClick", function() MUI:ImportWeakAuras("PRIEST") end)
			PluginInstallFrame.Option3:SetText("PRIEST")
		end,

		[14] = function()
			PluginInstallFrame.SubTitle:SetText(L["Installation Complete"])
			PluginInstallFrame.Desc1:SetText(L["You have completed the installation process."])
			PluginInstallFrame.Desc2:SetText(L["You must click the button below in order to finalize the process and automatically reload your UI."])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", addonTable.InstallComplete)
			PluginInstallFrame.Option1:SetText(L["Finished"])
		end

	},

	StepTitles = {
		[1] = L["Welcome"],
		[2] = L["Account Settings"],
		[3] = L["Chat Settings"],
		[4] = L["Profiles (ElvUI)"],
		[5] = L["Action Bars Visibility"],
		[6] = L["Combat Text"],
		[7] = L['Boss Mods'],
		[8] = L['Damage Meter'],
		[9] = L["Color Theme"],
		[10] = L["Weakauras - Для классов в латах"],
		[11] = L["Weakauras - Для классов в кольчуге"],
		[12] = L["Weakauras - Для классов в коже"],
		[13] = L["Weakauras - Для классов в ткани"],
		[14] = L["Installation Complete"],
	},

	StepTitlesColor = { 1, 1, 1 },
	StepTitlesColorSelected = { 0, 179/255, 1 },
	StepTitleWidth = 260,
	StepTitleButtonWidth = 250,
	StepTitleTextJustification = "RIGHT",
	
}


MUI.QuickInstall = function(layout)

	MUI:Set_CVars()
	MUI:SetupChat()
	MUI:ImportDetails('Normal')
	MUI:ImportElvUI(layout)

	if layout == 'DPS/Tank' then
		MUI:Import_xCT("DPS/Tank")
		MUI:ImportDBM("DPS/Tank")
	elseif layout == 'Healer-H' then
		MUI:Import_xCT("Healer")
		MUI:ImportDBM("Healer")
	elseif layout == 'Healer-V' then
		MUI:Import_xCT("Healer")
		MUI:ImportDBM("Healer")
	end
	
	addonTable:InstallComplete()

end

MUI.InstallerDataQuick = {

	Title = format("|cff4beb2c%s %s|r", addonTable.Name, "Installation"),
	Name = addonTable.Name,
	tutorialImage = "Interface\\AddOns\\MerfinUI\\Media\\Textures\\logo.tga",

	Pages = {
		[1] = function()
			PluginInstallFrame.SubTitle:SetFormattedText(L["Welcome to the installation for %s."], addonTable.Name.." "..Version)
			PluginInstallFrame.Desc1:SetText(L["Welcome to MerfinUI Quick Install!"])
			PluginInstallFrame.Desc2:SetText(L["This installer will quickly set up all add-ons and profiles (except for WeakAuras, as neither the full installer currently handles WeakAuras). With just one click, everything will be configured, followed by a reload at the end. If you're unsure, consider using the standard installer instead."])
			PluginInstallFrame.Desc3:SetText(L["DPS/Tank refers to the layout designed for DPS and Tank roles. Healer-H is for the Healer layout with horizontally growing party frames, while Healer-V provides a layout with vertically growing party frames"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI.QuickInstall('DPS/Tank') end)
			PluginInstallFrame.Option1:SetText(L["DPS/Tank"])
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI.QuickInstall('Healer-H') end)
			PluginInstallFrame.Option2:SetText(L["Healer-H"])
			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript("OnClick", function() MUI.QuickInstall('Healer-V') end)
			PluginInstallFrame.Option3:SetText(L["Healer-V"])
		end,

	},

	StepTitles = {
		[1] = L["Quick Install"],
	},

	StepTitlesColor = { 1, 1, 1 },
	StepTitlesColorSelected = { 0, 179/255, 1 },
	StepTitleWidth = 200,
	StepTitleButtonWidth = 180,
	StepTitleTextJustification = "RIGHT",
	
}