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

	Title = format("|cff4beb2c%s", addonTable.Name),
	Name = addonTable.Name,
	tutorialImage = "Interface\\AddOns\\MerfinUI\\Media\\Textures\\logo.tga",

	Pages = {
		[1] = function()
			PluginInstallFrame.SubTitle:SetFormattedText(L["Welcome to the installation for %s."], addonTable.Name.." "..Version)
			PluginInstallFrame.Desc1:SetText(L["This installer contains profiles for various addons in MerfinUI."])
			PluginInstallFrame.Desc2:SetText(L["Before starting the installation process, I highly recommend backing up your current WTF folder to preserve your existing settings, just in case."])
			PluginInstallFrame.Desc3:SetText(L["Don't forget to click Finished in the final step. This will reload your UI and apply all the settings."])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", addonTable.InstallComplete)
			PluginInstallFrame.Option1:SetText(L["Skip Process"])
		end,

		
		[2] = function()
			PluginInstallFrame.SubTitle:SetText(L["Account Settings"])
			PluginInstallFrame.Desc1:SetText(L["The World of Warcraft game client stores all its configurations in console variables (CVars). These variables control various aspects of the game, including graphics, sound, and the user interface."])
			PluginInstallFrame.Desc3:SetText(L["Importance: |cff4beb2cOptional|r"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:Set_CVars() end)
			PluginInstallFrame.Option1:SetText(L["Load CVars"])
		end,

		[3] = function()
			PluginInstallFrame.SubTitle:SetText(L["Chat Settings"])
			PluginInstallFrame.Desc1:SetText(L["This will set up the chat windows to look like this:\n\nGNL - Clog - LT - /W - LFG."])
			PluginInstallFrame.Desc2:SetText(L['Importance: |cff4beb2cOptional|r'])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:SetupChat() end)
			PluginInstallFrame.Option1:SetText(L["Setup Chat"])
		end,

		[4] = function()
			PluginInstallFrame.SubTitle:SetText(L["Profiles (ElvUI)"])
			PluginInstallFrame.Desc1:SetText(L["Сlick a button below to apply the layout of your choosing depending on your role: DPS, Tank or Healer. You can set different profiles to each of your spec in Profile Tab of ElvUI."])
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
			PluginInstallFrame.Desc1:SetText(L["Click on the button to set action bars visibility."])
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
			PluginInstallFrame.Desc1:SetText(L["Click on the button to adjust settings. If you wish to see standart Blizzard Combat Text, you can skip this step and disable xCT+ addon."])
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
			PluginInstallFrame.SubTitle:SetText("Deadly Boss Mods")
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
			PluginInstallFrame.SubTitle:SetText("Details")
			PluginInstallFrame.Desc1:SetText(L["Click on the button to adjust settings."])
			PluginInstallFrame.Desc3:SetText(L['Importance: |cff4beb2cHigh|r'])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ImportDetails('Normal') end)
			PluginInstallFrame.Option1:SetText(L["Details"])
		end,

		[9] = function()
			PluginInstallFrame.SubTitle:SetText(L["Color Theme"])
			PluginInstallFrame.Desc1:SetText(L["Click on the button below to set color theme of ElvUI unit frames.\n- Normal Theme would enable class colorized frames;\n- Dark Theme would darken them and put Unit Names texts class colorized"])
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
			PluginInstallFrame.Option1:SetText("Death Knight")
			
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ImportWeakAuras("WARRIOR") end)
			PluginInstallFrame.Option2:SetText("Warrior")

			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript("OnClick", function() MUI:ImportWeakAuras("PALADIN") end)
			PluginInstallFrame.Option3:SetText("Paladin")
		end,

		[11] = function()
			PluginInstallFrame.SubTitle:SetText("Weakauras - Для классов в кольчуге")
			PluginInstallFrame.Desc1:SetText(L["Выберите свой класс для загрузки профиля WeakAuras."])
			
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ImportWeakAuras("HUNTER") end)
			PluginInstallFrame.Option1:SetText("Hunter")
			
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ImportWeakAuras("SHAMAN") end)
			PluginInstallFrame.Option2:SetText("Shaman")
			
			
		end,

		[12] = function()
			PluginInstallFrame.SubTitle:SetText("Weakauras - Для классов в коже")
			PluginInstallFrame.Desc1:SetText(L["Выберите свой класс для загрузки профиля WeakAuras."])

			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ImportWeakAuras("ROGUE") end)
			PluginInstallFrame.Option1:SetText("Rogue")

			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ImportWeakAuras("DRUID") end)
			PluginInstallFrame.Option2:SetText("Druid")
		end,

		[13] = function()
			PluginInstallFrame.SubTitle:SetText("Weakauras - Для классов в ткани")
			PluginInstallFrame.Desc1:SetText(L["Выберите свой класс для загрузки профиля WeakAuras."])

			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript("OnClick", function() MUI:ImportWeakAuras("WARLOCK") end)
			PluginInstallFrame.Option1:SetText("Warlock")

			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript("OnClick", function() MUI:ImportWeakAuras("MAGE") end)
			PluginInstallFrame.Option2:SetText("Mage")

			PluginInstallFrame.Option3:Show()
			PluginInstallFrame.Option3:SetScript("OnClick", function() MUI:ImportWeakAuras("PRIEST") end)
			PluginInstallFrame.Option3:SetText("Priest")
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
		[7] = L['Deadly Boss Mods'],
		[8] = L['Details'],
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