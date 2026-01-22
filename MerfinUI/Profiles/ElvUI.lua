local addonName, addonTable = ...
local E, L, V, P, G = unpack(ElvUI)

local profileName = string.format("%s - %s", UnitName("player"), GetRealmName("player"))
local db = {}

db.movers = function(layout)

    if MUI:GetBlacklist('movers') then return end
	
    E.db.movers = E.db.movers or {}
	E.db.movers.DTB2_DBT2_LeftBottomBar_Mover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4"
	E.db.movers.DTB2_DBT2_RightBottomBar_Mover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4"

    if MUI:GetProfileResolution() == 'FULL_HD' then

        E.db.movers.AlertFrameMover = "TOP,ElvUIParent,TOP,288,-322"
        E.db.movers.BNETMover = "TOPLEFT,UIParent,TOPLEFT,496,-4"
        E.db.movers.BagsMover = "BOTTOMRIGHT,UIParent,BOTTOMRIGHT,-763,4"
        E.db.movers.BelowMinimapContainerMover = "TOPRIGHT,ElvUIParent,TOPRIGHT,-246,-209"
        E.db.movers.BossButton = "BOTTOM,ElvUIParent,BOTTOM,-200,514"
        E.db.movers.ClassBarMover = "BOTTOMLEFT,UIParent,BOTTOMLEFT,4,491"
        E.db.movers.DTPanelCustomPanel_LeftMover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,4"
        E.db.movers.DTPanelCustomPanel_RightMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,4"
        E.db.movers.DurabilityFrameMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-7,430"
        E.db.movers.ElvUIBagMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,29"
        E.db.movers.ElvUIBankMover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,29"
        E.db.movers.ExperienceBarMover = "TOP,UIParent,TOP,0,-4"
        E.db.movers.GMMover = "TOPLEFT,UIParent,TOPLEFT,284,-4"
        E.db.movers.ReputationBarMover = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-207"
        E.db.movers.HonorBarMover = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-220"
        E.db.movers.LeftChatMover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,29"
        E.db.movers.LootFrameMover = "TOP,UIParent,TOP,0,-218"
        E.db.movers.MinimapButtonAnchor = "TOPRIGHT,ElvUIParent,TOPRIGHT,0,-203"
        E.db.movers.MinimapMover = "TOPRIGHT,UIParent,TOPRIGHT,-4,-4"
        E.db.movers.ObjectiveFrameMover = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-234"
        E.db.movers.WatchFrameMover = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-211"
        E.db.movers.RightChatMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-4,29"
        E.db.movers.SquareMinimapButtonBarMover = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-208"
        E.db.movers.TopCenterContainerMover = "TOP,ElvUIParent,TOP,0,-62"
        E.db.movers.RaidMarkerBarAnchor = "TOP,UIParent,TOP,0,-4"
        E.db.movers.TotemBarMover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,499"
        E.db.movers.TotemTrackerMover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,404,4"
        E.db.movers.TimeManagerFrameMover = "TOPRIGHT,ElvUIParent,TOPRIGHT,-4,-412"
        E.db.movers.PetExperienceBarMover = "TOP,ElvUIParent,TOP,0,-30"
        E.db.movers.ZoneAbility = "TOP,ElvUIParent,TOP,200,-514"
        E.db.movers.VehicleLeaveButton = "BOTTOMLEFT,UIParent,BOTTOMLEFT,404,134"
        E.db.movers.VehicleSeatMover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,404,4"
        E.db.movers.VOICECHAT = "TOPLEFT,ElvUIParent,TOPLEFT,289,-81"
		
        -- Action Bars
        if not MUI:GetBlacklist('actionBars') then
            E.db.movers.ElvAB_1 = "BOTTOM,ElvUIParent,BOTTOM,-186,4"
            E.db.movers.ElvAB_2 = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,316"
            E.db.movers.ElvAB_3 = "BOTTOM,ElvUIParent,BOTTOM,186,4"
            E.db.movers.ElvAB_4 = "BOTTOM,ElvUIParent,BOTTOM,-186,35"
            E.db.movers.ElvAB_5 = "BOTTOM,ElvUIParent,BOTTOM,186,35"
            E.db.movers.ElvAB_6 = "BOTTOMLEFT,UIParent,BOTTOMLEFT,424,551"
            E.db.movers.MicrobarMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-240,4"
            E.db.movers.ElvBar_Pet = "BOTTOM,ElvUIParent,BOTTOM,217,66"
        end

        if layout == 'DPS/Tank' then
			
            -- Individual Elements:
            E.db.movers.ElvUF_PlayerMover = "BOTTOM,ElvUIParent,BOTTOM,-267,280"
            E.db.movers.ElvUF_PetMover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,436,280"
            E.db.movers.ElvUF_TargetMover = "BOTTOM,ElvUIParent,BOTTOM,267,280"
            E.db.movers.ElvUF_FocusMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-256,280"
            E.db.movers.ElvUF_TargetTargetMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-447,280"

            -- Group Elements
            E.db.movers.ElvUF_PartyMover = "TOPLEFT,ElvUIParent,TOPLEFT,418,-361"         
            E.db.movers.ElvUF_Raid10Mover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,281"
            E.db.movers.ElvUF_Raid25Mover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,281"
            E.db.movers.ElvUF_Raid40Mover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,281"
            E.db.movers.ElvUF_RaidpetMover = "TOPLEFT,ElvUIParent,TOPLEFT,4,-403"
            E.db.movers.ArenaHeaderMover = "TOPRIGHT,UIParent,TOPRIGHT,-387,-344"
            E.db.movers.BossHeaderMover = "TOPRIGHT,ElvUIParent,TOPRIGHT,-387,-370"
            E.db.movers.ElvUF_TankMover = "BOTTOM,ElvUIParent,BOTTOM,-303,49"

            -- Castbars
            E.db.movers.ElvUF_PlayerCastbarMover =  "BOTTOM,ElvUIParent,BOTTOM,0,220"
            E.db.movers.ElvUF_PetCastbarMover = "BOTTOM,ElvUIParent,BOTTOM,0,222"
            E.db.movers.ElvUF_TargetCastbarMover = "BOTTOM,ElvUIParent,BOTTOM,267,259"
			E.db.movers.ElvUF_FocusCastbarMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-256,259"

            -- Action Bars
            E.db.movers.ElvBar_Pet = "BOTTOM,ElvUIParent,BOTTOM,217,66"
            E.db.movers.ShiftAB = "TOPLEFT,ElvUIParent,BOTTOMLEFT,588,98"
			E.db.movers.ElvBar_Totem = "BOTTOM,ElvUIParent,BOTTOM,-310,66"

        elseif layout == 'Healer-H' or layout == 'Healer-V' then

            -- Individual Units
            E.db.movers.ElvUF_PlayerMover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,478,280"
            E.db.movers.ElvUF_PetMover = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,478,167"
            E.db.movers.ElvUF_TargetMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,280"
            E.db.movers.ElvUF_FocusMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,226"
            E.db.movers.ElvUF_TargetTargetMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-348,280"            

            -- Group Elements
            E.db.movers.ElvUF_PartyMover = "TOPLEFT,ElvUIParent,BOTTOMLEFT,712,324"            
            E.db.movers.ElvUF_Raid10Mover = "TOPLEFT,ElvUIParent,BOTTOMLEFT,712,324"
            E.db.movers.ElvUF_Raid25Mover = "TOPLEFT,ElvUIParent,BOTTOMLEFT,712,324"
            E.db.movers.ElvUF_Raid40Mover = "TOPLEFT,ElvUIParent,BOTTOMLEFT,712,324"
            E.db.movers.ElvUF_RaidpetMover = "TOPLEFT,ElvUIParent,BOTTOMLEFT,1207,249"
            E.db.movers.ArenaHeaderMover = "TOPRIGHT,ElvUIParent,TOPRIGHT,-289,-331"
            E.db.movers.BossHeaderMover = "TOPRIGHT,ElvUIParent,TOPRIGHT,-289,-306"
            E.db.movers.ElvUF_TankMover = "BOTTOM,ElvUIParent,BOTTOM,-303,49"

            -- Castbars
            E.db.movers.ElvUF_PlayerCastbarMover = "BOTTOM,ElvUIParent,BOTTOM,0,74"            
            E.db.movers.ElvUF_PetCastbarMover = "BOTTOM,ElvUIParent,BOTTOM,0,197"
            E.db.movers.ElvUF_TargetCastbarMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-478,259" 
            E.db.movers.ElvUF_FocusCastbarMover = "BOTTOMRIGHT,ElvUIParent,BOTTOMRIGHT,-288,205"                       

            -- Action Bars
            E.db.movers.ElvBar_Pet = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,317"
            E.db.movers.ShiftAB = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,282"
			E.db.movers.ElvBar_Totem = "BOTTOMLEFT,ElvUIParent,BOTTOMLEFT,4,282"
        end

        if layout == "Healer-H" then
            E.db.movers.ElvUF_PartyMover = "TOPLEFT,ElvUIParent,BOTTOMLEFT,712,324"
        elseif layout == "Healer-V" then 
            E.db.movers.ElvUF_PartyMover = "TOPLEFT,ElvUIParent,TOPLEFT,478,-361"
        end
        
    end
end

db.general = function()

    E.db.general.afk = false
    E.db.general.autoAcceptInvite = false
    E.db.general.autoRepair = "PLAYER"
    E.db.general.bottomPanel = false
    E.db.general.font = MUI:GetProfileFont()
    E.db.general.autoRoll = true

    E.db.general.selectQuestReward = true
    E.db.general.minimap.clusterBackdrop = false
    E.db.general.minimap.locationFont = MUI:GetProfileFont()
    E.db.general.minimap.timeFont = MUI:GetProfileFont()

    E.db.general.valuecolor.b = 0
    E.db.general.valuecolor.g = 0.42352941176471
    E.db.general.valuecolor.r = 1

    E.db.general.totems = E.db.general.totems or {}
    E.db.general.totems.enable = false
    E.db.general.totems.font = MUI:GetProfileFont()
    E.db.general.totems.mouseover = true
    E.db.general.totems.growthDirection = "HORIZONTAL"
    E.db.general.totems.spacing = 1

    E.db.general.backdropfadecolor.a = 0.80000001192093
    E.db.general.backdropfadecolor.r = 0.058823529411765
    E.db.general.backdropfadecolor.g = 0.058823529411765
    E.db.general.backdropfadecolor.b = 0.058823529411765

    if MUI:GetProfileResolution() == 'FULL_HD' then

        E.db.general.fontSize = 13
        E.db.general.minimap.size = 199
        E.db.general.minimap.locationFontSize = 13
        E.db.general.minimap.timeFontSize = 12
        E.db.general.totems.fontSize = 13
        E.db.general.totems.size = 28

    end    
    
end

db.auras = function()

    E.db.auras.font = MUI:GetProfileFont()
    E.db.auras.fontOutline = "OUTLINE"
    E.db.auras.cooldown.hhmmColor.b = 1
    E.db.auras.cooldown.hhmmColor.g = 1
    E.db.auras.cooldown.hhmmColor.r = 1
    E.db.auras.cooldown.secondsColor.b = 0
    E.db.auras.cooldown.checkSeconds = true
    E.db.auras.cooldown.mmssColor.b = 1
    E.db.auras.cooldown.mmssColor.g = 1
    E.db.auras.cooldown.mmssColor.r = 1
    E.db.auras.cooldown.override = true
    E.db.auras.cooldown.mmssThreshold = 600
    E.db.auras.buffs.verticalSpacing = 16
    E.db.auras.buffs.horizontalSpacing = 3
    E.db.auras.debuffs.horizontalSpacing = 3

    if MUI:GetProfileResolution() == 'FULL_HD' then

        E.db.auras.buffs.countFontSize = 13
        E.db.auras.buffs.durationFontSize = 13
        E.db.auras.debuffs.countFontSize = 13
        E.db.auras.debuffs.durationFontSize = 13
        E.db.auras.buffs.size = 34
        E.db.auras.buffs.wrapAfter = 14    
        E.db.auras.debuffs.wrapAfter = 14
        E.db.auras.debuffs.size = 34

    end

end

db.bags = function()
    
    E.db.bags.bagBar.growthDirection = "HORIZONTAL"
    E.db.bags.bagBar.justBackpack = true
    E.db.bags.bagBar.mouseover = true  
    E.db.bags.bagBar.spacing = -1
    E.db.bags.bagButtonSpacing = 0
    E.db.bags.clearSearchOnClose = true
    E.db.bags.countFont = MUI:GetProfileFont()
    E.db.bags.countFontOutline = "OUTLINE"   
    E.db.bags.countxOffset = 1
    E.db.bags.countyOffset = 1
    E.db.bags.itemInfoFont = MUI:GetProfileFont()
    E.db.bags.itemInfoFontOutline = "OUTLINE"
    E.db.bags.itemLevelFontOutline = "OUTLINE"                       
    E.db.bags.moneyCoins = false
    E.db.bags.moneyFormat = "CONDENSED"
    E.db.bags.split.bagSpacing = 2
    E.db.bags.itemLevelxOffset = 1
    E.db.bags.itemLevelyOffset = 1
    E.db.bags.itemLevelFont = MUI:GetProfileFont()
	E.db.bags.cooldown.fonts.enable = true
	E.db.bags.cooldown.fonts.font = MUI:GetProfileFont()
	E.db.bags.cooldown.fonts.fontSize = 13
    E.db.bags.vendorGrays.enable = true

    if MUI:GetProfileResolution() == 'FULL_HD' then

        E.db.bags.bagBar.size = 40
        E.db.bags.bagSize = 40
        E.db.bags.bagWidth = 440
        E.db.bags.bankSize = 40
        E.db.bags.bankWidth = 396
        E.db.bags.countFontSize = 13
        E.db.bags.itemInfoFontSize = 13
        E.db.bags.itemLevelFontSize = 13

    end

end

db.chat = function()
    
    E.db.chat.editBoxPosition = "ABOVE_CHAT"
    E.db.chat.font = MUI:GetProfileFont()
    E.db.chat.panelBackdrop = "LEFT"
    E.db.chat.panelBackdropNameLeft = ""
    E.db.chat.panelColor.a = 0.67553424835205
    E.db.chat.panelColor.b = 0.058823529411765
    E.db.chat.panelColor.g = 0.058823529411765
    E.db.chat.panelColor.r = 0.058823529411765
	E.db.chat.tabSelectedTextEnabled = true
    E.db.chat.panelTabBackdrop = false
    E.db.chat.panelTabTransparency = true  
    E.db.chat.separateSizes = true
    E.db.chat.showHistory.CHANNEL = false
    E.db.chat.showHistory.EMOTE = false
    E.db.chat.showHistory.INSTANCE = false              
    E.db.chat.tabFont = MUI:GetProfileFont()
    E.db.chat.timeStampFormat = "%H:%M:%S"
	E.db.chat.tabSelector = "NONE"

    if MUI:GetProfileResolution() == 'FULL_HD' then

        E.db.chat.panelHeight = 250
        E.db.chat.panelWidth = 396
        E.db.chat.panelHeightRight = 335
        E.db.chat.panelWidthRight = 232
        E.db.chat.tabFontSize = 13

    end

end

db.databars = function()

    E.db.databars.experience.font = MUI:GetProfileFont()
    E.db.databars.experience.fontOutline = "OUTLINE"
    E.db.databars.experience.showLevel = true
    E.db.databars.experience.showQuestXP = false
    E.db.databars.experience.textFormat = "REM"
    E.db.databars.experience.orientation = "HORIZONTAL"
    E.db.databars.petExperience.font = MUI:GetProfileFont()
    E.db.databars.petExperience.textFormat = "REM"
    E.db.databars.petExperience.hideAtMaxLevel = true
	E.db.databars.petExperience.enable = false
	E.db.databars.honor.enable = false
	E.db.databars.honor.height = 10
	E.db.databars.honor.orientation = "HORIZONTAL"
	E.db.databars.honor.font = MUI:GetProfileFont()
	E.db.databars.reputation.enable = true
	E.db.databars.reputation.height = 10
	E.db.databars.reputation.orientation = "HORIZONTAL"
	E.db.databars.reputation.font = MUI:GetProfileFont()
        
    if MUI:GetProfileResolution() == 'FULL_HD' then
	
		E.db.databars.reputation.width = 201
		E.db.databars.honor.width = 201
        E.db.databars.experience.textSize = 13
        E.db.databars.experience.height = 27
        E.db.databars.experience.width = 396
        E.db.databars.petExperience.textSize = 13
        E.db.databars.petExperience.height = 20
        E.db.databars.petExperience.width = 300
		E.db.databars.honor.FontSize = 13
        E.db.databars.reputation.FontSize = 13
		
    end

end

db.datatext = function()

    E.db.datatexts.leftChatPanel = false
    E.db.datatexts.rightChatPanel = false
    E.db.datatexts.panels.DTB2_DBT2_RightBottomBar = E.db.datatexts.panels.DTB2_DBT2_RightBottomBar or {}
    E.db.datatexts.panels.DTB2_DBT2_RightBottomBar.left = "Durability"
    E.db.datatexts.panels.DTB2_DBT2_RightBottomBar.right = "Gold"
    E.db.datatexts.panels.DTB2_DBT2_LeftBottomBar = E.db.datatexts.panels.DTB2_DBT2_LeftBottomBar or {}
    E.db.datatexts.panels.DTB2_DBT2_LeftBottomBar.left = "System"
    E.db.datatexts.panels.DTB2_DBT2_LeftBottomBar.right = "Time"
    E.db.datatexts.font = MUI:GetProfileFont()
	E.db.datatexts.timeFormat = "%H:%M"
    E.db.datatexts.minimapPanels = false

    if MUI:GetProfileResolution() == 'FULL_HD' then

        E.db.datatexts.fontSize = 12

    end

end

db.tooltip = function()

    E.db.tooltip.font = MUI:GetProfileFont()
    E.db.tooltip.fontOutline = "OUTLINE"
    E.db.tooltip.headerFont = MUI:GetProfileFont()
    E.db.tooltip.headerFontOutline = "OUTLINE"
    E.db.tooltip.healthBar.font = MUI:GetProfileFont()
    E.db.tooltip.healthBar.text = false   
    E.db.tooltip.healthBar.height = 2
    E.db.tooltip.cursorAnchor = false
    E.db.tooltip.visibility.combatOverride = "SHIFT"

    if MUI:GetProfileResolution() == 'FULL_HD' then

        E.db.tooltip.healthBar.fontSize = 12
        E.db.tooltip.smallTextFontSize = 12
        E.db.tooltip.textFontSize = 12 

    end

end

db.actionbars = function()

    if MUI:GetBlacklist('actionBars') then return end

    E.db.actionbar.bar1.enabled = true
    E.db.actionbar.bar2.enabled = false
    E.db.actionbar.bar3.enabled = true
    E.db.actionbar.bar4.enabled = true
    E.db.actionbar.bar5.enabled = true
    E.db.actionbar.bar6.enabled = false
    E.db.actionbar.stanceBar.enabled = true
    E.db.actionbar.microbar.enabled = true

    E.db.actionbar.font = MUI:GetProfileFont()
    E.db.actionbar.fontOutline = "OUTLINE"    
    E.db.actionbar.desaturateOnCooldown = true
    E.db.actionbar.macrotext = true
    E.db.actionbar.transparentBackdrops = true
    E.db.actionbar.transparentButtons = true
    E.db.actionbar.hotkeyTextPosition = "TOPLEFT"    
    E.db.actionbar.hotkeyTextXOffset = 1
    E.db.actionbar.hotkeyTextYOffset = -1
    E.db.actionbar.countTextPosition = "BOTTOMLEFT"    
    E.db.actionbar.countTextXOffset = 1
    E.db.actionbar.countTextYOffset = 1
    E.db.actionbar.cooldown.fonts.enable = true
    E.db.actionbar.cooldown.fonts.font = MUI:GetProfileFont()
    E.db.actionbar.cooldown.fonts.font = MUI:GetProfileFont()
    E.db.actionbar.cooldown.hhmmColor.b = 1
    E.db.actionbar.cooldown.hhmmColor.g = 1
    E.db.actionbar.cooldown.hhmmColor.r = 1
    E.db.actionbar.cooldown.checkSeconds = true
    E.db.actionbar.cooldown.mmssColor.b = 1
    E.db.actionbar.cooldown.mmssColor.g = 1
    E.db.actionbar.cooldown.mmssColor.r = 1
    E.db.actionbar.cooldown.threshold = -1
    E.db.actionbar.cooldown.fonts.enable = true
    E.db.actionbar.cooldown.fonts.font = MUI:GetProfileFont()
    E.db.actionbar.cooldown.mmssThreshold = 300

    E.db.actionbar.microbar.backdropSpacing = 0
    E.db.actionbar.microbar.symbolic = false

    E.db.actionbar.microbar.transparentBackdrop = true
    E.db.actionbar.microbar.alpha = 0.7
    E.db.actionbar.microbar.buttonSpacing = 1

    E.db.actionbar.barTotem.flyoutDirection = "UP"
    E.db.actionbar.barTotem.buttonspacing = -1
    E.db.actionbar.barTotem.alpha = 1

    E.db.actionbar.stanceBar.point = "TOPLEFT"
    E.db.actionbar.stanceBar.style = "classic"
    E.db.actionbar.stanceBar.alpha = 1
    E.db.actionbar.stanceBar.buttons = 9
    E.db.actionbar.stanceBar.buttonsPerRow = 9
	E.db.actionbar.stanceBar.buttonspacing = -1

    E.db.actionbar.barPet.point = "TOPLEFT"
    E.db.actionbar.barPet.buttonspacing = -1
    E.db.actionbar.barPet.alpha = 1
    E.db.actionbar.barPet.buttonsPerRow = 10
    E.db.actionbar.barPet.backdropSpacing = 0
    E.db.actionbar.barPet.backdrop = false

    local showMouseover, showGrid = MUI:GetActionBarsSettings()
    for i = 1, 6 do
        E.db.actionbar["bar"..i].buttons = 12
        E.db.actionbar["bar"..i].buttonspacing = -1
        E.db.actionbar["bar"..i].alpha = 0.85
        E.db.actionbar["bar"..i].mouseover = showMouseover
        E.db.actionbar["bar"..i].visibility = ""
        E.db.actionbar["bar"..i].backdrop = false
        E.db.actionbar["bar"..i].backdropSpacing = 0
        E.db.actionbar["bar"..i].buttonsPerRow = 12
        E.db.actionbar["bar"..i].showGrid = showGrid
    end
    E.db.actionbar.barPet.showGrid = showGrid
    E.db.actionbar.barPet.mouseover = showMouseover   
    E.db.actionbar.stanceBar.mouseover = showMouseover
    E.db.actionbar.barTotem.mouseover = false
    E.db.actionbar.microbar.mouseover = showMouseover    

    if MUI:GetProfileResolution() == 'FULL_HD' then

        for i = 1, 6 do
            E.db.actionbar["bar"..i].buttonsize = 32
        end

        E.db.actionbar.cooldown.fonts.fontSize = 13
        E.db.actionbar.fontSize = 13
        E.db.actionbar.barPet.buttonsize = 32
        E.db.actionbar.stanceBar.buttonsize = 32
        E.db.actionbar.barTotem.buttonsize = 32
        E.db.actionbar.microbar.buttonSize = 15

    end

end

db.unitframes = function(layout)
    
    E.db.unitframe = E.db.unitframe or {}
    E.db.unitframe.units = E.db.unitframe.units or {}
    E.db.unitframe.units.raid10 = E.db.unitframe.units.raid10 or {}
    E.db.unitframe.units.raid25 = E.db.unitframe.units.raid25 or {}
    E.db.unitframe.units.raid40 = E.db.unitframe.units.raid40 or {}
    E.db.unitframe.units.party = E.db.unitframe.units.party or {}

    E.db.unitframe.smartRaidFilter = false

    -- UF custom texts
    E.db.unitframe.units.arena.customTexts = E.db.unitframe.units.arena.customTexts or {}
    E.db.unitframe.units.arena.customTexts.UnitHealth = E.db.unitframe.units.arena.customTexts.UnitHealth or {}
    E.db.unitframe.units.arena.customTexts.UnitName = E.db.unitframe.units.arena.customTexts.UnitName or {}
    E.db.unitframe.units.arena.customTexts.UnitPower = E.db.unitframe.units.arena.customTexts.UnitPower or {}

    E.db.unitframe.units.focus.customTexts = E.db.unitframe.units.focus.customTexts or {}
    E.db.unitframe.units.focus.customTexts.UnitName = E.db.unitframe.units.focus.customTexts.UnitName or {}
    E.db.unitframe.units.focus.customTexts.UnitPower = E.db.unitframe.units.focus.customTexts.UnitPower or {}
    E.db.unitframe.units.focus.customTexts.UnitHealth = E.db.unitframe.units.focus.customTexts.UnitHealth or {}

    E.db.unitframe.units.party.customTexts = E.db.unitframe.units.party.customTexts or {}
    E.db.unitframe.units.party.customTexts.DeadGhostStatus = E.db.unitframe.units.party.customTexts.DeadGhostStatus or {}

    E.db.unitframe.units.party.customTexts = E.db.unitframe.units.party.customTexts or {}
    E.db.unitframe.units.party.customTexts.UnitName = E.db.unitframe.units.party.customTexts.UnitName or {}
    E.db.unitframe.units.party.customTexts.OfflineStatus = E.db.unitframe.units.party.customTexts.OfflineStatus or {}
    E.db.unitframe.units.party.customTexts.UnitHealth = E.db.unitframe.units.party.customTexts.UnitHealth or {}

    E.db.unitframe.units.pet.customTexts = E.db.unitframe.units.pet.customTexts or {}
    E.db.unitframe.units.pet.customTexts.UnitHealth = E.db.unitframe.units.pet.customTexts.UnitHealth or {}
    E.db.unitframe.units.pet.customTexts.UnitName = E.db.unitframe.units.pet.customTexts.UnitName or {}
    E.db.unitframe.units.pet.customTexts.UnitPower = E.db.unitframe.units.pet.customTexts.UnitPower or {}

    E.db.unitframe.units.player.customTexts = E.db.unitframe.units.player.customTexts or {}
    E.db.unitframe.units.player.customTexts.AltPowerValue = E.db.unitframe.units.player.customTexts.AltPowerValue or {}
    E.db.unitframe.units.player.customTexts.UnitName = E.db.unitframe.units.player.customTexts.UnitName or {}
    E.db.unitframe.units.player.customTexts.UnitPower = E.db.unitframe.units.player.customTexts.UnitPower or {}
    E.db.unitframe.units.player.customTexts.UnitHealth = E.db.unitframe.units.player.customTexts.UnitHealth or {}

    E.db.unitframe.units.raid10.customTexts = E.db.unitframe.units.raid10.customTexts or {}
    E.db.unitframe.units.raid10.customTexts.DeadGhostStatus = E.db.unitframe.units.raid10.customTexts.DeadGhostStatus or {}
    E.db.unitframe.units.raid10.customTexts.UnitName = E.db.unitframe.units.raid10.customTexts.UnitName or {}

    E.db.unitframe.units.raid25.customTexts = E.db.unitframe.units.raid25.customTexts or {}
    E.db.unitframe.units.raid25.customTexts.DeadGhostStatus = E.db.unitframe.units.raid25.customTexts.DeadGhostStatus or {}
    E.db.unitframe.units.raid25.customTexts.UnitName = E.db.unitframe.units.raid25.customTexts.UnitName or {}

    E.db.unitframe.units.raid40.customTexts = E.db.unitframe.units.raid40.customTexts or {}
    E.db.unitframe.units.raid40.customTexts.DeadGhostStatus = E.db.unitframe.units.raid40.customTexts.DeadGhostStatus or {}
    E.db.unitframe.units.raid40.customTexts.UnitName = E.db.unitframe.units.raid40.customTexts.UnitName or {}

    E.db.unitframe.units.raidpet.customTexts = E.db.unitframe.units.raidpet.customTexts or {}
    E.db.unitframe.units.raidpet.customTexts.UnitName = E.db.unitframe.units.raidpet.customTexts.UnitName or {}

    E.db.unitframe.units.target.customTexts = E.db.unitframe.units.target.customTexts or {}
    E.db.unitframe.units.target.customTexts.UnitName = E.db.unitframe.units.target.customTexts.UnitName or {}
    E.db.unitframe.units.target.customTexts.UnitPower = E.db.unitframe.units.target.customTexts.UnitPower or {}
    E.db.unitframe.units.target.customTexts.UnitHealth = E.db.unitframe.units.target.customTexts.UnitHealth or {}

    E.db.unitframe.units.targettarget.customTexts = E.db.unitframe.units.targettarget.customTexts or {}
    E.db.unitframe.units.targettarget.customTexts.UnitName = E.db.unitframe.units.targettarget.customTexts.UnitName or {}

    E.db.unitframe.units.boss.customTexts = E.db.unitframe.units.boss.customTexts or {}
    E.db.unitframe.units.boss.customTexts.UnitName = E.db.unitframe.units.boss.customTexts.UnitName or {}
    E.db.unitframe.units.boss.customTexts.UnitPower = E.db.unitframe.units.boss.customTexts.UnitPower or {}
    E.db.unitframe.units.boss.customTexts.UnitHealth = E.db.unitframe.units.boss.customTexts.UnitHealth or {}

    local unitFrames = { 'party', 'raid10', 'raid25', 'raid40', 'raidpet' }

    for _, unitFrame in ipairs(unitFrames) do
        E.db.unitframe.units[unitFrame] = E.db.unitframe.units[unitFrame] or {}
        E.db.unitframe.units[unitFrame].buffIndicator = E.db.unitframe.units[unitFrame].buffIndicator or {}
        E.db.unitframe.units[unitFrame].debuffs = E.db.unitframe.units[unitFrame].debuffs or {}
        E.db.unitframe.units[unitFrame].buffs = E.db.unitframe.units[unitFrame].buffs or {}
        E.db.unitframe.units[unitFrame].rdebuffs = E.db.unitframe.units[unitFrame].rdebuffs or {}

        E.db.unitframe.units[unitFrame].buffIndicator.enable = true
        E.db.unitframe.units[unitFrame].debuffs.enable = true
        E.db.unitframe.units[unitFrame].buffs.enable = unitFrame ~= 'raidpet' 
        E.db.unitframe.units[unitFrame].rdebuffs.enable = unitFrame ~= 'raidpet' and unitFrame ~= 'party'
        -- Load Raid Debuffs Indicator on everything but raidpet (we modified filters for raidpet)
    end

    -- Threat Style
    E.db.unitframe.units.raid10.threatStyle = "ICONLEFT"
    E.db.unitframe.units.raid25.threatStyle = "ICONLEFT"
    E.db.unitframe.units.raid40.threatStyle = "ICONLEFT"
    E.db.unitframe.units.party.threatStyle = "ICONLEFT"

    -- Colors
    E.db.unitframe.colors.castColor.b = 0
    E.db.unitframe.colors.castColor.g = 0.67843137254902
    E.db.unitframe.colors.castColor.r = 1
    E.db.unitframe.colors.castNoInterrupt.b = 0.25098039215686
    E.db.unitframe.colors.castNoInterrupt.g = 0.25098039215686
    E.db.unitframe.colors.castNoInterrupt.r = 0.78039215686275
    E.db.unitframe.colors.castbar_backdrop.b = 0.10588235294118
    E.db.unitframe.colors.castbar_backdrop.g = 0.10588235294118
    E.db.unitframe.colors.castbar_backdrop.r = 0.2078431372549
    E.db.unitframe.colors.colorhealthbyvalue = false
    E.db.unitframe.colors.customcastbarbackdrop = true
    E.db.unitframe.colors.customhealthbackdrop = true
    E.db.unitframe.colors.debuffHighlight.blendMode = "ALPHAKEY"
    E.db.unitframe.colors.frameGlow.mouseoverGlow.enable = false
    E.db.unitframe.colors.frameGlow.targetGlow.enable = false
    E.db.unitframe.colors.health.b = 0.17254901960784
    E.db.unitframe.colors.health.g = 0.17254901960784
    E.db.unitframe.colors.health.r = 0.1921568627451
    E.db.unitframe.colors.health_backdrop.b = 0.23137254901961
    E.db.unitframe.colors.health_backdrop.g = 0.23137254901961
    E.db.unitframe.colors.health_backdrop.r = 0.27058823529412
    E.db.unitframe.colors.health_backdrop_dead.b = 0.46274509803922
    E.db.unitframe.colors.health_backdrop_dead.g = 0.46274509803922
    E.db.unitframe.colors.health_backdrop_dead.r = 0.51764705882353
    E.db.unitframe.colors.healthclass = true
    E.db.unitframe.colors.transparentHealth = E.private.MUI.general.profileSettings.unitframes.transparentHealth
    E.db.unitframe.colors.power.MANA.b = 1
    E.db.unitframe.colors.power.MANA.g = 0.86274509803922
    E.db.unitframe.colors.power.MANA.r = 0.019607843137255

    -- Cooldown
    E.db.unitframe.cooldown.fonts.enable = true
    E.db.unitframe.cooldown.fonts.font = MUI:GetProfileFont()

    E.db.unitframe.font = MUI:GetProfileFont()
    E.db.unitframe.fontOutline = "OUTLINE"
    E.db.unitframe.statusbar = MUI:GetProfileTexture()

    -- UF: Player
    E.db.unitframe.units.player.RestIcon.enable = false
    E.db.unitframe.units.player.aurabar.enable = false
    E.db.unitframe.units.player.buffs.anchorPoint = "TOPRIGHT"
    E.db.unitframe.units.player.buffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.player.castbar.enable = MUI:GetPlayerCastBar()
    E.db.unitframe.units.player.castbar.tickWidth = 1
    E.db.unitframe.units.player.castbar.format = "CURRENTMAX"
    E.db.unitframe.units.player.castbar.spark = false
    E.db.unitframe.units.player.classbar.enable = false
    E.db.unitframe.units.player.colorOverride = "FORCE_ON"
    E.db.unitframe.units.player.customTexts.AltPowerValue.attachTextTo = "Health"
    E.db.unitframe.units.player.customTexts.AltPowerValue.enable = false
    E.db.unitframe.units.player.customTexts.AltPowerValue.font = MUI:GetProfileFont()
    E.db.unitframe.units.player.customTexts.AltPowerValue.fontOutline = "OUTLINE"
    E.db.unitframe.units.player.customTexts.AltPowerValue.justifyH = "LEFT"
    E.db.unitframe.units.player.customTexts.AltPowerValue.text_format = "[altpowercolor][classpower:current]"
    E.db.unitframe.units.player.customTexts.AltPowerValue.xOffset = 3
    E.db.unitframe.units.player.customTexts.AltPowerValue.yOffset = 0
    E.db.unitframe.units.player.customTexts.UnitPower.attachTextTo = "Power"
    E.db.unitframe.units.player.customTexts.UnitPower.enable = false
    E.db.unitframe.units.player.customTexts.UnitPower.font = MUI:GetProfileFont()
    E.db.unitframe.units.player.customTexts.UnitPower.fontOutline = "OUTLINE"
    E.db.unitframe.units.player.customTexts.UnitPower.justifyH = "CENTER"
    E.db.unitframe.units.player.customTexts.UnitPower.text_format = "[power:current]"
    E.db.unitframe.units.player.customTexts.UnitPower.xOffset = 0
    E.db.unitframe.units.player.customTexts.UnitPower.yOffset = 0
    E.db.unitframe.units.player.customTexts.UnitHealth.attachTextTo = "Health"
    E.db.unitframe.units.player.customTexts.UnitHealth.enable = true
    E.db.unitframe.units.player.customTexts.UnitHealth.font = MUI:GetProfileFont()
    E.db.unitframe.units.player.customTexts.UnitHealth.fontOutline = "OUTLINE"
    E.db.unitframe.units.player.customTexts.UnitHealth.justifyH = "RIGHT"
    E.db.unitframe.units.player.customTexts.UnitHealth.text_format = "[health:current]"
    E.db.unitframe.units.player.customTexts.UnitHealth.xOffset = -2
    E.db.unitframe.units.player.customTexts.UnitHealth.yOffset = 0
    E.db.unitframe.units.player.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.player.customTexts.UnitName.enable = false
    E.db.unitframe.units.player.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.player.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.player.customTexts.UnitName.justifyH = "LEFT"
    E.db.unitframe.units.player.customTexts.UnitName.text_format = "[name]"
    E.db.unitframe.units.player.customTexts.UnitName.xOffset = 5
    E.db.unitframe.units.player.customTexts.UnitName.yOffset = 20
    E.db.unitframe.units.player.debuffs.anchorPoint = "TOPRIGHT"
    E.db.unitframe.units.player.debuffs.enable = false
    E.db.unitframe.units.player.healPrediction.enable = false
    E.db.unitframe.units.player.health.text_format = ""
    E.db.unitframe.units.player.power.EnergyManaRegen = true
    E.db.unitframe.units.player.power.detachFromFrame = true
    E.db.unitframe.units.player.power.enable = false
    E.db.unitframe.units.player.power.powerPrediction = true
    E.db.unitframe.units.player.power.text_format = ""
    E.db.unitframe.units.player.pvp.text_format = ""
    E.db.unitframe.units.player.raidRoleIcons.enable = false
    E.db.unitframe.units.player.threatStyle = "NONE"
    E.db.unitframe.units.player.raidicon.attachTo = "LEFT"
    E.db.unitframe.units.player.raidicon.attachToObject = "Health"
    E.db.unitframe.units.player.raidicon.xOffset = 5
    E.db.unitframe.units.player.raidicon.yOffset = 0
	E.db.unitframe.units.player.absorbPrediction.absorbTexture = "Flatt"
    -- UF: Target
    E.db.unitframe.units.target.combobar.enable = false
    E.db.unitframe.units.target.aurabar.enable = false
    E.db.unitframe.units.target.buffs.attachTo = "DEBUFFS"
    E.db.unitframe.units.target.buffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.target.buffs.spacing = -1
    E.db.unitframe.units.target.buffs.yOffset = -1
    E.db.unitframe.units.target.castbar.enable = true
    E.db.unitframe.units.target.castbar.spark = false
    E.db.unitframe.units.target.castbar.strataAndLevel.useCustomLevel = true
    E.db.unitframe.units.target.colorOverride = "FORCE_ON"

    E.db.unitframe.units.target.customTexts.UnitPower.attachTextTo = "Health"
    E.db.unitframe.units.target.customTexts.UnitPower.enable = true
    E.db.unitframe.units.target.customTexts.UnitPower.font = MUI:GetProfileFont()
    E.db.unitframe.units.target.customTexts.UnitPower.fontOutline = "OUTLINE"
    E.db.unitframe.units.target.customTexts.UnitPower.justifyH = "RIGHT"
    E.db.unitframe.units.target.customTexts.UnitPower.text_format = "[power:current]"
    E.db.unitframe.units.target.customTexts.UnitPower.xOffset = -2
    E.db.unitframe.units.target.customTexts.UnitPower.yOffset = 0

    E.db.unitframe.units.target.customTexts.UnitHealth.attachTextTo = "Health"
    E.db.unitframe.units.target.customTexts.UnitHealth.enable = true
    E.db.unitframe.units.target.customTexts.UnitHealth.font = MUI:GetProfileFont()
    E.db.unitframe.units.target.customTexts.UnitHealth.fontOutline = "OUTLINE"
    E.db.unitframe.units.target.customTexts.UnitHealth.justifyH = "LEFT"
    E.db.unitframe.units.target.customTexts.UnitHealth.text_format = "[health:percent] || [health:current]"
    E.db.unitframe.units.target.customTexts.UnitHealth.xOffset = 2
    E.db.unitframe.units.target.customTexts.UnitHealth.yOffset = -8

    E.db.unitframe.units.target.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.target.customTexts.UnitName.enable = true
    E.db.unitframe.units.target.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.target.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.target.customTexts.UnitName.justifyH = "LEFT"
    E.db.unitframe.units.target.customTexts.UnitName.text_format = "[name:abbrev:medium]"
    E.db.unitframe.units.target.customTexts.UnitName.xOffset = 2
    E.db.unitframe.units.target.customTexts.UnitName.yOffset = 8

    E.db.unitframe.units.target.debuffs.attachTo = "FRAME"
    E.db.unitframe.units.target.debuffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.target.debuffs.spacing = -1
    E.db.unitframe.units.target.debuffs.yOffset = -1
    E.db.unitframe.units.target.debuffs.priority = "Blacklist,Personal,RaidDebuffs,CCDebuffs,Friendly:Dispellable,Friendly:notCastByUnit,Friendly:CastByNPC"
    --E.db.unitframe.units.target.debuffs.perrow = 9
    E.db.unitframe.units.target.buffs.perrow = 9
    E.db.unitframe.units.target.fader.enable = false
    E.db.unitframe.units.target.fader.range = false
    E.db.unitframe.units.target.healPrediction.enable = false
    E.db.unitframe.units.target.health.text_format = ""  
    E.db.unitframe.units.target.name.text_format = ""
    E.db.unitframe.units.target.power.text_format = ""
    E.db.unitframe.units.target.raidicon.attachTo = "CENTER"
    E.db.unitframe.units.target.raidicon.attachToObject = "Health"
    E.db.unitframe.units.target.raidicon.yOffset = 0
    E.db.unitframe.units.target.smartAuraPosition = "FLUID_BUFFS_ON_DEBUFFS"
    E.db.unitframe.units.target.threatStyle = "NONE"
	E.db.unitframe.units.target.absorbPrediction.absorbTexture = "Flatt"

    E.db.unitframe.units.targettarget.debuffs.enable = false
    E.db.unitframe.units.targettarget.debuffs.yOffset = -2
    E.db.unitframe.units.targettarget.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.targettarget.customTexts.UnitName.enable = true
    E.db.unitframe.units.targettarget.customTexts.UnitName.text_format = "[name:abbrev:medium]"
    E.db.unitframe.units.targettarget.customTexts.UnitName.yOffset = 0
    E.db.unitframe.units.targettarget.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.targettarget.customTexts.UnitName.justifyH = "CENTER"
    E.db.unitframe.units.targettarget.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.targettarget.customTexts.UnitName.xOffset = 0
    E.db.unitframe.units.targettarget.colorOverride = "FORCE_ON"
    E.db.unitframe.units.targettarget.fader.enable = false
    E.db.unitframe.units.targettarget.health.frequentUpdates = true
    E.db.unitframe.units.targettarget.name.text_format = ""
    E.db.unitframe.units.targettarget.buffs.anchorPoint = "TOPRIGHT"
    E.db.unitframe.units.targettarget.buffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.targettarget.buffs.maxDuration = 0
    E.db.unitframe.units.targettarget.buffs.yOffset = -2
    E.db.unitframe.units.targettarget.orientation = "RIGHT"
	
    -- UF: Pet
    E.db.unitframe.units.pet.buffs.priority = "Blacklist,Personal,PlayerBuffs,Dispellable"
    E.db.unitframe.units.pet.debuffs.attachTo = "BUFFS"
    E.db.unitframe.units.pet.debuffs.priority = "Blacklist,Personal,Boss,RaidDebuffs,CCDebuffs,Dispellable,Whitelist"
    E.db.unitframe.units.pet.fader.enable = false
    E.db.unitframe.units.pet.healPrediction.enable = false
    E.db.unitframe.units.pet.name.text_format = ""
    E.db.unitframe.units.pet.power.attachTextTo = "Frame"
    E.db.unitframe.units.pet.power.height = 6
    E.db.unitframe.units.pet.power.xOffset = 0
    E.db.unitframe.units.pet.threatStyle = "NONE"
    E.db.unitframe.units.pet.castbar.enable = false
    E.db.unitframe.units.pet.colorOverride = "FORCE_ON"
    E.db.unitframe.units.pet.customTexts.UnitPower.attachTextTo = "Power"
    E.db.unitframe.units.pet.customTexts.UnitPower.enable = true
    E.db.unitframe.units.pet.customTexts.UnitPower.font = MUI:GetProfileFont()
    E.db.unitframe.units.pet.customTexts.UnitPower.fontOutline = "OUTLINE"
    E.db.unitframe.units.pet.customTexts.UnitPower.justifyH = "CENTER"
    E.db.unitframe.units.pet.customTexts.UnitPower.text_format = "[power:current]"
    E.db.unitframe.units.pet.customTexts.UnitPower.xOffset = 0
    E.db.unitframe.units.pet.customTexts.UnitPower.yOffset = 0
    E.db.unitframe.units.pet.customTexts.UnitHealth.attachTextTo = "Health"
    E.db.unitframe.units.pet.customTexts.UnitHealth.enable = true
    E.db.unitframe.units.pet.customTexts.UnitHealth.font = MUI:GetProfileFont()
    E.db.unitframe.units.pet.customTexts.UnitHealth.fontOutline = "OUTLINE"
    E.db.unitframe.units.pet.customTexts.UnitHealth.justifyH = "CENTER"
    E.db.unitframe.units.pet.customTexts.UnitHealth.text_format = "[health:current] - [health:max]"
    E.db.unitframe.units.pet.customTexts.UnitHealth.xOffset = 0
    E.db.unitframe.units.pet.customTexts.UnitHealth.yOffset = 0
    E.db.unitframe.units.pet.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.pet.customTexts.UnitName.enable = false
    E.db.unitframe.units.pet.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.pet.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.pet.customTexts.UnitName.justifyH = "CENTER"
    E.db.unitframe.units.pet.customTexts.UnitName.text_format = "[name:abbrev:short]"
    E.db.unitframe.units.pet.customTexts.UnitName.xOffset = 0
    E.db.unitframe.units.pet.customTexts.UnitName.yOffset = 0
	E.db.unitframe.units.pet.absorbPrediction.absorbTexture = "Flatt"
	
    -- UF: Focus
    E.db.unitframe.units.focus.colorOverride = "FORCE_ON"
    E.db.unitframe.units.focus.disableTargetGlow = true
    E.db.unitframe.units.focus.fader.enable = false
    E.db.unitframe.units.focus.healPrediction.enable = false
    E.db.unitframe.units.focus.name.text_format = ""
    E.db.unitframe.units.focus.orientation = "RIGHT"
    E.db.unitframe.units.focus.power.attachTextTo = "Power"
    E.db.unitframe.units.focus.power.height = 6
    E.db.unitframe.units.focus.power.position = "CENTER"
    E.db.unitframe.units.focus.threatStyle = "NONE"

    E.db.unitframe.units.focus.buffs.anchorPoint = "TOPRIGHT"
    E.db.unitframe.units.focus.buffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.focus.buffs.enable = false
    E.db.unitframe.units.focus.buffs.growthX = "LEFT"
    E.db.unitframe.units.focus.buffs.maxDuration = 0
    E.db.unitframe.units.focus.buffs.priority = "Blacklist,Personal,nonPersonal"
    E.db.unitframe.units.focus.buffs.spacing = -1
    E.db.unitframe.units.focus.buffs.yOffset = -2

    E.db.unitframe.units.focus.debuffs.anchorPoint = "LEFT"
    E.db.unitframe.units.focus.debuffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.focus.debuffs.enable = false
    E.db.unitframe.units.focus.debuffs.perrow = 6
    E.db.unitframe.units.focus.debuffs.priority = "Blacklist,Personal,RaidDebuffs,CCDebuffs,Friendly:Dispellable"
    E.db.unitframe.units.focus.debuffs.spacing = -1
    E.db.unitframe.units.focus.debuffs.xOffset = -7
    E.db.unitframe.units.focus.debuffs.yOffset = -2

    E.db.unitframe.units.focus.castbar.enable = true
    E.db.unitframe.units.focus.castbar.spark = false
    E.db.unitframe.units.focus.castbar.strataAndLevel.frameStrata = "BACKGROUND"
    E.db.unitframe.units.focus.castbar.strataAndLevel.useCustomStrata = true

    E.db.unitframe.units.focus.customTexts.UnitPower.attachTextTo = "Health"
    E.db.unitframe.units.focus.customTexts.UnitPower.enable = true
    E.db.unitframe.units.focus.customTexts.UnitPower.font = MUI:GetProfileFont()
    E.db.unitframe.units.focus.customTexts.UnitPower.fontOutline = "OUTLINE"
    E.db.unitframe.units.focus.customTexts.UnitPower.justifyH = "Right"
    E.db.unitframe.units.focus.customTexts.UnitPower.text_format = "[power:current]"
    E.db.unitframe.units.focus.customTexts.UnitPower.xOffset = -2
    E.db.unitframe.units.focus.customTexts.UnitPower.yOffset = 0

    E.db.unitframe.units.focus.customTexts.UnitHealth.attachTextTo = "Health"
    E.db.unitframe.units.focus.customTexts.UnitHealth.enable = true
    E.db.unitframe.units.focus.customTexts.UnitHealth.font = MUI:GetProfileFont()
    E.db.unitframe.units.focus.customTexts.UnitHealth.fontOutline = "OUTLINE"
    E.db.unitframe.units.focus.customTexts.UnitHealth.justifyH = "LEFT"
    E.db.unitframe.units.focus.customTexts.UnitHealth.text_format = "[health:percent] || [health:current]"
    E.db.unitframe.units.focus.customTexts.UnitHealth.xOffset = 2
    E.db.unitframe.units.focus.customTexts.UnitHealth.yOffset = -8

    E.db.unitframe.units.focus.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.focus.customTexts.UnitName.enable = true
    E.db.unitframe.units.focus.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.focus.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.focus.customTexts.UnitName.justifyH = "LEFT"
    E.db.unitframe.units.focus.customTexts.UnitName.text_format = "[name:abbrev:medium]"
    E.db.unitframe.units.focus.customTexts.UnitName.xOffset = 2
    E.db.unitframe.units.focus.customTexts.UnitName.yOffset = 8
	E.db.unitframe.units.focus.absorbPrediction.absorbTexture = "Flatt"

    -- UF: Arena
    E.db.unitframe.units.arena.buffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.arena.buffs.enable = false
    E.db.unitframe.units.arena.buffs.maxDuration = 0
    E.db.unitframe.units.arena.buffs.priority = "Blacklist,CastByUnit,Dispellable,Whitelist,RaidBuffsElvUI"
    E.db.unitframe.units.arena.colorOverride = "FORCE_ON"

    E.db.unitframe.units.arena.customTexts.UnitPower.attachTextTo = "Power"
    E.db.unitframe.units.arena.customTexts.UnitPower.enable = true
    E.db.unitframe.units.arena.customTexts.UnitPower.font = MUI:GetProfileFont()
    E.db.unitframe.units.arena.customTexts.UnitPower.fontOutline = "OUTLINE"
    E.db.unitframe.units.arena.customTexts.UnitPower.justifyH = "CENTER"
    E.db.unitframe.units.arena.customTexts.UnitPower.text_format = "[power:current]"
    E.db.unitframe.units.arena.customTexts.UnitPower.xOffset = 0
    E.db.unitframe.units.arena.customTexts.UnitPower.yOffset = 0

    E.db.unitframe.units.arena.customTexts.UnitHealth.attachTextTo = "Health"
    E.db.unitframe.units.arena.customTexts.UnitHealth.enable = true
    E.db.unitframe.units.arena.customTexts.UnitHealth.font = MUI:GetProfileFont()
    E.db.unitframe.units.arena.customTexts.UnitHealth.fontOutline = "OUTLINE"
    E.db.unitframe.units.arena.customTexts.UnitHealth.justifyH = "RIGHT"
    E.db.unitframe.units.arena.customTexts.UnitHealth.text_format = "[health:percent]"
    E.db.unitframe.units.arena.customTexts.UnitHealth.xOffset = -3
    E.db.unitframe.units.arena.customTexts.UnitHealth.yOffset = 0

    E.db.unitframe.units.arena.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.arena.customTexts.UnitName.enable = true
    E.db.unitframe.units.arena.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.arena.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.arena.customTexts.UnitName.justifyH = "LEFT"
    E.db.unitframe.units.arena.customTexts.UnitName.text_format = "[name:abbrev:short]"
    E.db.unitframe.units.arena.customTexts.UnitName.xOffset = 3
    E.db.unitframe.units.arena.customTexts.UnitName.yOffset = 0

    E.db.unitframe.units.arena.debuffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.arena.debuffs.desaturate = true
    E.db.unitframe.units.arena.debuffs.enable = false
    E.db.unitframe.units.arena.debuffs.maxDuration = 0
    E.db.unitframe.units.arena.debuffs.priority = "Blacklist,Boss,Personal,RaidDebuffs,CastByUnit,Whitelist"
    E.db.unitframe.units.arena.debuffs.yOffset = -3
    E.db.unitframe.units.arena.growthDirection = "UP"
    E.db.unitframe.units.arena.healPrediction.enable = false
    E.db.unitframe.units.arena.health.text_format = ""
    E.db.unitframe.units.arena.name.text_format = ""
    E.db.unitframe.units.arena.power.text_format = ""
    E.db.unitframe.units.arena.spacing = -1
	E.db.unitframe.units.arena.absorbPrediction.absorbTexture = "Flatt"
    -- UF: Assist
    E.db.unitframe.units.assist.enable = false

    -- UF: Boss
    E.db.unitframe.units.boss.buffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.boss.buffs.enable = true
    E.db.unitframe.units.boss.buffs.anchorPoint = "RIGHT"
    E.db.unitframe.units.boss.buffs.numrows = 2
    E.db.unitframe.units.boss.buffs.sizeOverride = 20
    E.db.unitframe.units.boss.buffs.countFontSize = 11
    E.db.unitframe.units.boss.buffs.xOffset = 3
    E.db.unitframe.units.boss.buffs.yOffset = 10
    E.db.unitframe.units.boss.colorOverride = "FORCE_ON"

    E.db.unitframe.units.boss.customTexts.UnitPower.attachTextTo = "Power"
    E.db.unitframe.units.boss.customTexts.UnitPower.enable = true
    E.db.unitframe.units.boss.customTexts.UnitPower.font = MUI:GetProfileFont()
    E.db.unitframe.units.boss.customTexts.UnitPower.fontOutline = "OUTLINE"
    E.db.unitframe.units.boss.customTexts.UnitPower.justifyH = "CENTER"
    E.db.unitframe.units.boss.customTexts.UnitPower.text_format = "[power:current]"
    E.db.unitframe.units.boss.customTexts.UnitPower.xOffset = 0
    E.db.unitframe.units.boss.customTexts.UnitPower.yOffset = 0

    E.db.unitframe.units.boss.customTexts.UnitHealth.attachTextTo = "Health"
    E.db.unitframe.units.boss.customTexts.UnitHealth.enable = true
    E.db.unitframe.units.boss.customTexts.UnitHealth.font = MUI:GetProfileFont()
    E.db.unitframe.units.boss.customTexts.UnitHealth.fontOutline = "OUTLINE"
    E.db.unitframe.units.boss.customTexts.UnitHealth.justifyH = "RIGHT"
    E.db.unitframe.units.boss.customTexts.UnitHealth.text_format = "[health:percent]"
    E.db.unitframe.units.boss.customTexts.UnitHealth.xOffset = -3
    E.db.unitframe.units.boss.customTexts.UnitHealth.yOffset = 0

    E.db.unitframe.units.boss.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.boss.customTexts.UnitName.enable = true
    E.db.unitframe.units.boss.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.boss.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.boss.customTexts.UnitName.justifyH = "LEFT"
    E.db.unitframe.units.boss.customTexts.UnitName.text_format = "[name:abbrev:short]"
    E.db.unitframe.units.boss.customTexts.UnitName.xOffset = 3
    E.db.unitframe.units.boss.customTexts.UnitName.yOffset = 0

    E.db.unitframe.units.boss.castbar.enable = false

    E.db.unitframe.units.boss.debuffs.enable = true
    E.db.unitframe.units.boss.debuffs.numrows = 1
    E.db.unitframe.units.boss.debuffs.perrow = 6
    E.db.unitframe.units.boss.debuffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.boss.debuffs.yOffset = 0

    E.db.unitframe.units.boss.growthDirection = "UP"
    E.db.unitframe.units.boss.health.text_format = ""
    E.db.unitframe.units.boss.name.text_format = ""
    E.db.unitframe.units.boss.power.height = 6
    E.db.unitframe.units.boss.power.text_format = ""

    -- UF: Tank
    E.db.unitframe.units.tank.buffIndicator.enable = true
    E.db.unitframe.units.tank.debuffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.tank.enable = false
    E.db.unitframe.units.tank.name.text_format = "[name:medium]"
    E.db.unitframe.units.tank.rdebuffs.enable = false
    E.db.unitframe.units.tank.rdebuffs.font = MUI:GetProfileFont()
    E.db.unitframe.units.tank.targetsGroup.enable = false
    E.db.unitframe.units.tank.threatStyle = "NONE"
    E.db.unitframe.units.tank.verticalSpacing = 1

    -- UF: Party
    E.db.unitframe.units.party.buffs.enable = true
    E.db.unitframe.units.party.buffs.anchorPoint = "BOTTOMLEFT"
    E.db.unitframe.units.party.buffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.party.buffs.perrow = 3
    E.db.unitframe.units.party.buffs.spacing = -1
    E.db.unitframe.units.party.colorOverride = "FORCE_ON"
    E.db.unitframe.units.party.customTexts.DeadGhostStatus.attachTextTo = "Health"
    E.db.unitframe.units.party.customTexts.DeadGhostStatus.enable = true
    E.db.unitframe.units.party.customTexts.DeadGhostStatus.font = MUI:GetProfileFont()
    E.db.unitframe.units.party.customTexts.DeadGhostStatus.fontOutline = "OUTLINE"
    E.db.unitframe.units.party.customTexts.DeadGhostStatus.justifyH = "CENTER"
    E.db.unitframe.units.party.customTexts.DeadGhostStatus.text_format = "[namecolor][dead]"
    E.db.unitframe.units.party.customTexts.DeadGhostStatus.xOffset = 0   
    E.db.unitframe.units.party.customTexts.OfflineStatus.attachTextTo = "Health"
    E.db.unitframe.units.party.customTexts.OfflineStatus.enable = false
    E.db.unitframe.units.party.customTexts.OfflineStatus.font = MUI:GetProfileFont()
    E.db.unitframe.units.party.customTexts.OfflineStatus.fontOutline = "OUTLINE"
    E.db.unitframe.units.party.customTexts.OfflineStatus.justifyH = "CENTER"
    E.db.unitframe.units.party.customTexts.OfflineStatus.text_format = "[namecolor][offline]"
    E.db.unitframe.units.party.customTexts.OfflineStatus.xOffset = 0
    E.db.unitframe.units.party.customTexts.UnitHealth.attachTextTo = "Health"
    E.db.unitframe.units.party.customTexts.UnitHealth.enable = false
    E.db.unitframe.units.party.customTexts.UnitHealth.font = MUI:GetProfileFont()
    E.db.unitframe.units.party.customTexts.UnitHealth.fontOutline = "OUTLINE"
    E.db.unitframe.units.party.customTexts.UnitHealth.justifyH = "RIGHT"
    E.db.unitframe.units.party.customTexts.UnitHealth.text_format = "[health:current]"
    E.db.unitframe.units.party.customTexts.UnitHealth.xOffset = -5
    E.db.unitframe.units.party.customTexts.UnitHealth.yOffset = 0
    E.db.unitframe.units.party.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.party.customTexts.UnitName.enable = true
    E.db.unitframe.units.party.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.party.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.party.customTexts.UnitName.justifyH = "CENTER"
    E.db.unitframe.units.party.customTexts.UnitName.xOffset = 0
    E.db.unitframe.units.party.customTexts.UnitName.yOffset = 0
    E.db.unitframe.units.party.debuffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.party.debuffs.perrow = 3
    E.db.unitframe.units.party.groupBy = "ROLE"
    E.db.unitframe.units.party.healPrediction.enable = true
    E.db.unitframe.units.party.health.text_format = ""
    E.db.unitframe.units.party.name.text_format = ""
    E.db.unitframe.units.party.petsGroup.anchorPoint = "LEFT"
    E.db.unitframe.units.party.petsGroup.enable = true
    E.db.unitframe.units.party.petsGroup.name.text_format = "[health:current]"
    
    E.db.unitframe.units.party.power.enable = true
    E.db.unitframe.units.party.power.text_format = ""
    E.db.unitframe.units.party.rdebuffs.font = MUI:GetProfileFont()
    E.db.unitframe.units.party.rdebuffs.yOffset = 15
    E.db.unitframe.units.party.rdebuffs.fontOutline = "OUTLINE"
    E.db.unitframe.units.party.readycheckIcon.attachTo = "CENTER"
    E.db.unitframe.units.party.readycheckIcon.yOffset = 13
    E.db.unitframe.units.party.roleIcon.enable = true
    E.db.unitframe.units.party.sortDir = "DESC"
    E.db.unitframe.units.party.threatStyle = "ICONLEFT"
    E.db.unitframe.units.party.verticalSpacing = -1
    E.db.unitframe.units.party.horizontalSpacing = -1
	E.db.unitframe.units.party.absorbPrediction.absorbTexture = "Flatt"
	
	if layout == 'DPS/Tank' or layout == 'Healer-V' then
	
		E.db.unitframe.units.party.petsGroup.xOffset = -15
		
	elseif layout == 'Healer-H' then
	
		E.db.unitframe.units.party.petsGroup.xOffset = 0
		E.db.unitframe.units.party.petsGroup.yOffset = -15
		
	end
    -- DPS/TANK UF: Raid 10
    E.db.unitframe.units.raid10.colorOverride = "FORCE_ON"
    E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.attachTextTo = "Health"
    E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.enable = true
    E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.font = MUI:GetProfileFont()
    E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.fontOutline = "OUTLINE"
    E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.justifyH = "CENTER"
    E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.text_format = "[namecolor][dead]"

    E.db.unitframe.units.raid10.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.raid10.customTexts.UnitName.enable = true
    E.db.unitframe.units.raid10.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.raid10.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.raid10.customTexts.UnitName.justifyH = "CENTER"
    E.db.unitframe.units.raid10.customTexts.UnitName.text_format = "[name:veryshort]"

    E.db.unitframe.units.raid10.groupBy = "ROLE"
    E.db.unitframe.units.raid10.horizontalSpacing = -1
    E.db.unitframe.units.raid10.name.text_format = ""
    E.db.unitframe.units.raid10.numGroups = 2
    E.db.unitframe.units.raid10.groupsPerRowCol = 1
    E.db.unitframe.units.raid10.orientation = "LEFT"
    E.db.unitframe.units.raid10.power.enable = true
    E.db.unitframe.units.raid10.power.height = 4
    E.db.unitframe.units.raid10.power.position = "RIGHT"
    E.db.unitframe.units.raid10.power.yOffset = 0
    E.db.unitframe.units.raid10.raidRoleIcons.enable = false
    E.db.unitframe.units.raid10.raidRoleIcons.yOffset = 3
    E.db.unitframe.units.raid10.readycheckIcon.attachTo = "CENTER"
    E.db.unitframe.units.raid10.readycheckIcon.yOffset = 13
    E.db.unitframe.units.raid10.roleIcon.damager = false
    E.db.unitframe.units.raid10.roleIcon.enable = false
    E.db.unitframe.units.raid10.roleIcon.healer = false
    E.db.unitframe.units.raid10.verticalSpacing = -1
    E.db.unitframe.units.raid10.health.text_format = ""
    E.db.unitframe.units.raid10.healPrediction.enable = true

    E.db.unitframe.units.raid10.buffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.raid10.buffs.anchorPoint = "BOTTOMLEFT"
    E.db.unitframe.units.raid10.debuffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.raid10.debuffs.anchorPoint = "TOPLEFT"
    E.db.unitframe.units.raid10.rdebuffs.font = MUI:GetProfileFont()
    E.db.unitframe.units.raid10.rdebuffs.fontOutline = "OUTLINE"
	E.db.unitframe.units.raid10.absorbPrediction.absorbTexture = "Flatt"

    -- DPS/TANK UF: Raid 25
    E.db.unitframe.units.raid25.colorOverride = "FORCE_ON"
    E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.attachTextTo = "Health"
    E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.enable = true
    E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.font = MUI:GetProfileFont()
    E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.fontOutline = "OUTLINE"
    E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.justifyH = "CENTER"
    E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.text_format = "[namecolor][dead]"

    E.db.unitframe.units.raid25.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.raid25.customTexts.UnitName.enable = true
    E.db.unitframe.units.raid25.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.raid25.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.raid25.customTexts.UnitName.justifyH = "CENTER"
    E.db.unitframe.units.raid25.customTexts.UnitName.text_format = "[name:veryshort]"

    E.db.unitframe.units.raid25.groupBy = "ROLE"
    E.db.unitframe.units.raid25.horizontalSpacing = -1
    E.db.unitframe.units.raid25.name.text_format = ""
    E.db.unitframe.units.raid25.numGroups = 5
    E.db.unitframe.units.raid25.groupsPerRowCol = 1
    E.db.unitframe.units.raid25.orientation = "LEFT"
    E.db.unitframe.units.raid25.power.enable = true
    E.db.unitframe.units.raid25.power.height = 4
    E.db.unitframe.units.raid25.power.position = "RIGHT"
    E.db.unitframe.units.raid25.power.yOffset = 0
    E.db.unitframe.units.raid25.raidRoleIcons.enable = false
    E.db.unitframe.units.raid25.raidRoleIcons.yOffset = 3
    E.db.unitframe.units.raid25.readycheckIcon.attachTo = "CENTER"
    E.db.unitframe.units.raid25.readycheckIcon.yOffset = 13
    E.db.unitframe.units.raid25.roleIcon.damager = false
    E.db.unitframe.units.raid25.roleIcon.enable = false
    E.db.unitframe.units.raid25.roleIcon.healer = false
    E.db.unitframe.units.raid25.verticalSpacing = -1
    E.db.unitframe.units.raid25.health.text_format = ""
    E.db.unitframe.units.raid25.healPrediction.enable = true

    E.db.unitframe.units.raid25.buffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.raid25.buffs.anchorPoint = "BOTTOMLEFT"
    E.db.unitframe.units.raid25.debuffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.raid25.debuffs.anchorPoint = "TOPLEFT"
    E.db.unitframe.units.raid25.rdebuffs.font = MUI:GetProfileFont()
    E.db.unitframe.units.raid25.rdebuffs.fontOutline = "OUTLINE"
	E.db.unitframe.units.raid25.absorbPrediction.absorbTexture = "Flatt"

    -- DPS/TANK UF: Raid 40
    E.db.unitframe.units.raid40.colorOverride = "FORCE_ON"
    E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.attachTextTo = "Health"
    E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.enable = true
    E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.font = MUI:GetProfileFont()
    E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.fontOutline = "OUTLINE"
    E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.justifyH = "CENTER"
    E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.text_format = "[namecolor][dead]"

    E.db.unitframe.units.raid40.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.raid40.customTexts.UnitName.enable = true
    E.db.unitframe.units.raid40.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.raid40.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.raid40.customTexts.UnitName.justifyH = "CENTER"
    E.db.unitframe.units.raid40.customTexts.UnitName.text_format = "[name:veryshort]"

    E.db.unitframe.units.raid40.groupBy = "ROLE"
    E.db.unitframe.units.raid40.health.yOffset = 0
    E.db.unitframe.units.raid40.horizontalSpacing = -1
    E.db.unitframe.units.raid40.name.text_format = ""
    E.db.unitframe.units.raid40.numGroups = 8
    E.db.unitframe.units.raid40.orientation = "LEFT"
	E.db.unitframe.units.raid40.power.enable = true
    E.db.unitframe.units.raid40.power.height = 4
    E.db.unitframe.units.raid40.power.position = "RIGHT"
    E.db.unitframe.units.raid40.power.yOffset = 0
    E.db.unitframe.units.raid40.raidRoleIcons.enable = false
    E.db.unitframe.units.raid40.raidRoleIcons.yOffset = 3
    E.db.unitframe.units.raid40.readycheckIcon.attachTo = "CENTER"
    E.db.unitframe.units.raid40.readycheckIcon.yOffset = 13
    E.db.unitframe.units.raid40.verticalSpacing = -1
    E.db.unitframe.units.raid40.health.text_format = ""
    E.db.unitframe.units.raid40.healPrediction.enable = true
    
    E.db.unitframe.units.raid40.buffs.countFont = "SFUIDisplayCondensed-Semibold"
    E.db.unitframe.units.raid40.buffs.anchorPoint = "BOTTOMLEFT"
    E.db.unitframe.units.raid40.debuffs.countFont = "SFUIDisplayCondensed-Semibold"
    E.db.unitframe.units.raid40.debuffs.anchorPoint = "TOPLEFT"
    E.db.unitframe.units.raid40.rdebuffs.font = "SFUIDisplayCondensed-Semibold"
    E.db.unitframe.units.raid40.rdebuffs.fontOutline = "OUTLINE"
	E.db.unitframe.units.raid40.absorbPrediction.absorbTexture = "Flatt"

    -- UF: Raid Pet
    E.db.unitframe.units.raidpet.health.text_format = ""
    E.db.unitframe.units.raidpet.horizontalSpacing = -1
    E.db.unitframe.units.raidpet.name.text_format = ""
    E.db.unitframe.units.raidpet.numGroups = 3
    E.db.unitframe.units.raidpet.orientation = "LEFT"
    E.db.unitframe.units.raidpet.verticalSpacing = -1
    E.db.unitframe.units.raidpet.debuffs.countFont = MUI:GetProfileFont()
    E.db.unitframe.units.raidpet.debuffs.anchorPoint = "TOPLEFT"
    E.db.unitframe.units.raidpet.customTexts.UnitName.attachTextTo = "Health"
    E.db.unitframe.units.raidpet.customTexts.UnitName.enable = true
    E.db.unitframe.units.raidpet.customTexts.UnitName.font = MUI:GetProfileFont()
    E.db.unitframe.units.raidpet.customTexts.UnitName.fontOutline = "OUTLINE"
    E.db.unitframe.units.raidpet.customTexts.UnitName.justifyH = "CENTER"
    E.db.unitframe.units.raidpet.customTexts.UnitName.text_format = "[name:veryshort]"
    E.db.unitframe.units.raidpet.customTexts.UnitName.xOffset = 0
    E.db.unitframe.units.raidpet.customTexts.UnitName.yOffset = 0
	E.db.unitframe.units.raidpet.absorbPrediction.absorbTexture = "Flatt"

    if layout == 'DPS/Tank' then

        E.db.unitframe.units.party.customTexts.UnitName.text_format = "[name]"
        E.db.unitframe.units.raidpet.enable = false
        E.db.unitframe.units.player.castbar.displayTarget = false
        E.db.unitframe.units.party.debuffs.xOffset = 2
        E.db.unitframe.units.party.debuffs.numrows = 2
        E.db.unitframe.units.raid10.growthDirection = "RIGHT_UP"
        E.db.unitframe.units.raid25.growthDirection = "RIGHT_UP"
        E.db.unitframe.units.raid40.growthDirection = "RIGHT_UP"

    elseif layout == 'Healer-H' or layout == 'Healer-V' then

        if layout == "Healer-H" then
            E.db.unitframe.units.party.debuffs.anchorPoint = "TOPLEFT"
            E.db.unitframe.units.party.debuffs.xOffset = 0
            E.db.unitframe.units.party.debuffs.numrows = 1
            E.db.unitframe.units.party.growthDirection = "RIGHT_DOWN"
            E.db.unitframe.units.party.customTexts.UnitName.text_format = "[name:abbrev:veryshort]"
        elseif layout == "Healer-V" then
            E.db.unitframe.units.party.debuffs.xOffset = 2
            E.db.unitframe.units.party.debuffs.numrows = 2
            E.db.unitframe.units.party.customTexts.UnitName.text_format = "[name]" 
        end  

        E.db.unitframe.units.raidpet.enable = true
        E.db.unitframe.units.player.castbar.displayTarget = true
        E.db.unitframe.units.raid10.growthDirection = "RIGHT_DOWN"
        E.db.unitframe.units.raid25.growthDirection = "RIGHT_DOWN"
        E.db.unitframe.units.raid40.growthDirection = "RIGHT_DOWN"
    end

    -- SIZE RESOLUTION CHANGES
    if MUI:GetProfileResolution() == 'FULL_HD' then

        E.db.unitframe.cooldown.fonts.fontSize = 20
        E.db.unitframe.fontSize = 13

        E.db.unitframe.units.player.CombatIcon.size = 23
        E.db.unitframe.units.player.customTexts.AltPowerValue.size = 13
        E.db.unitframe.units.player.customTexts.UnitPower.size = 13
        E.db.unitframe.units.player.customTexts.UnitHealth.size = 13
        E.db.unitframe.units.player.customTexts.UnitName.size = 13
        E.db.unitframe.units.player.height = 44
        E.db.unitframe.units.player.power.height = 8
        E.db.unitframe.units.player.width = 235
        E.db.unitframe.units.player.raidicon.size = 23

        E.db.unitframe.units.pet.height = 44
        E.db.unitframe.units.pet.width = 120
        E.db.unitframe.units.pet.castbar.height = 20
        E.db.unitframe.units.pet.castbar.width = 200
        E.db.unitframe.units.pet.customTexts.UnitPower.size = 13
        E.db.unitframe.units.pet.customTexts.UnitHealth.size = 13
        E.db.unitframe.units.pet.customTexts.UnitName.size = 13

        E.db.unitframe.units.target.width = 235
        E.db.unitframe.units.target.height = 44
        E.db.unitframe.units.target.power.height = 6
        E.db.unitframe.units.target.buffs.countFontSize = 13
        E.db.unitframe.units.target.buffs.perrow = 8
        E.db.unitframe.units.target.buffs.sizeOverride = 23
        E.db.unitframe.units.target.debuffs.countFontSize = 13
        E.db.unitframe.units.target.debuffs.perrow = 8
        E.db.unitframe.units.target.debuffs.sizeOverride = 23
        E.db.unitframe.units.target.castbar.height = 22
        E.db.unitframe.units.target.castbar.width = 235
        E.db.unitframe.units.target.customTexts.UnitPower.size = 13
        E.db.unitframe.units.target.customTexts.UnitHealth.size = 13
        E.db.unitframe.units.target.customTexts.UnitName.size = 13
        E.db.unitframe.units.target.raidicon.size = 23

        E.db.unitframe.units.targettarget.width = 120
        E.db.unitframe.units.targettarget.height = 44
        E.db.unitframe.units.targettarget.debuffs.countFontSize = 13
        E.db.unitframe.units.targettarget.debuffs.sizeOverride = 37
        E.db.unitframe.units.targettarget.customTexts.UnitName.size = 13
        E.db.unitframe.units.targettarget.buffs.countFontSize = 13

        E.db.unitframe.units.focus.height = 44
        E.db.unitframe.units.focus.width = 180
        E.db.unitframe.units.focus.castbar.height = 22
        E.db.unitframe.units.focus.castbar.width = 180
        E.db.unitframe.units.focus.buffs.countFontSize = 13
        E.db.unitframe.units.focus.debuffs.countFontSize = 13
        E.db.unitframe.units.focus.debuffs.sizeOverride = 37
        E.db.unitframe.units.focus.customTexts.UnitPower.size = 13
        E.db.unitframe.units.focus.customTexts.UnitHealth.size = 13
        E.db.unitframe.units.focus.customTexts.UnitName.size = 13

        E.db.unitframe.units.arena.height = 46
        E.db.unitframe.units.arena.width = 180
        E.db.unitframe.units.arena.power.height = 6
        E.db.unitframe.units.arena.buffs.countFontSize = 13
        E.db.unitframe.units.arena.buffs.sizeOverride = 22
        E.db.unitframe.units.arena.buffs.yOffset = 20
        E.db.unitframe.units.arena.debuffs.countFontSize = 13
        E.db.unitframe.units.arena.debuffs.sizeOverride = 22
        E.db.unitframe.units.arena.customTexts.UnitPower.size = 13
        E.db.unitframe.units.arena.customTexts.UnitHealth.size = 13
        E.db.unitframe.units.arena.customTexts.UnitName.size = 13
        E.db.unitframe.units.arena.pvpTrinket.size = 44

        E.db.unitframe.units.boss.height = 44
        E.db.unitframe.units.boss.width = 180
        E.db.unitframe.units.boss.buffs.countFontSize = 13
        E.db.unitframe.units.boss.debuffs.sizeOverride = 30
        E.db.unitframe.units.boss.debuffs.xOffset = -3
        E.db.unitframe.units.boss.debuffs.countFontSize = 13
        E.db.unitframe.units.boss.buffs.sizeOverride = 20
        E.db.unitframe.units.boss.buffs.countFontSize = 11
        E.db.unitframe.units.boss.buffs.xOffset = 3
        E.db.unitframe.units.boss.buffs.yOffset = 10
        E.db.unitframe.units.boss.customTexts.UnitPower.size = 13
        E.db.unitframe.units.boss.customTexts.UnitHealth.size = 13
        E.db.unitframe.units.boss.customTexts.UnitName.size = 13

        E.db.unitframe.units.party.customTexts.DeadGhostStatus.size = 12
        E.db.unitframe.units.party.customTexts.OfflineStatus.size = 12
        E.db.unitframe.units.party.customTexts.UnitHealth.size = 13
        E.db.unitframe.units.party.customTexts.UnitName.size = 13
        E.db.unitframe.units.party.customTexts.DeadGhostStatus.yOffset = 14
        E.db.unitframe.units.party.customTexts.OfflineStatus.yOffset = 14


        E.db.unitframe.units.raidpet.height = 35
        E.db.unitframe.units.raidpet.width = 70
        E.db.unitframe.units.raidpet.debuffs.countFontSize = 11
        E.db.unitframe.units.raidpet.debuffs.sizeOverride = 17
        E.db.unitframe.units.raidpet.debuffs.yOffset = -17
        E.db.unitframe.units.raidpet.rdebuffs.fontSize = 12
        E.db.unitframe.units.raidpet.customTexts.UnitName.size = 13

        E.db.unitframe.units.tank.height = 45
        E.db.unitframe.units.tank.width = 100
        E.db.unitframe.units.tank.debuffs.countFontSize = 13

        E.db.unitframe.units.party.buffIndicator.countFontSize = 13
        E.db.unitframe.units.raid10.buffIndicator.countFontSize = 13
        E.db.unitframe.units.raid25.buffIndicator.countFontSize = 13
        E.db.unitframe.units.raid40.buffIndicator.countFontSize = 13

        E.db.unitframe.units.raid10.buffs.sizeOverride = 13
        E.db.unitframe.units.raid10.debuffs.sizeOverride = 13

        E.db.unitframe.units.raid25.buffs.sizeOverride = 13
        E.db.unitframe.units.raid25.debuffs.sizeOverride = 13

        E.db.unitframe.units.raid40.buffs.sizeOverride = 13
        E.db.unitframe.units.raid40.debuffs.sizeOverride = 13

        E.db.unitframe.units.raid10.customTexts.UnitName.size = 13
        E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.size = 12

        E.db.unitframe.units.raid25.customTexts.UnitName.size = 13
        E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.size = 12

        E.db.unitframe.units.raid40.customTexts.UnitName.size = 13
        E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.size = 12

        if layout == 'DPS/Tank' then

            E.db.unitframe.units.player.castbar.height = 33
            E.db.unitframe.units.player.castbar.width = 275

            E.db.unitframe.units.party.customTexts.UnitName.text_format = "[name]"
            E.db.unitframe.units.party.height = 55
            E.db.unitframe.units.party.width = 230
            E.db.unitframe.units.party.power.height = 6
            E.db.unitframe.units.party.readycheckIcon.size = 20

            E.db.unitframe.units.party.debuffs.sizeOverride = 25
            E.db.unitframe.units.party.debuffs.countFontSize = 12
            E.db.unitframe.units.party.debuffs.yOffset = 13

            E.db.unitframe.units.party.buffs.countFontSize = 12
            E.db.unitframe.units.party.buffs.sizeOverride = 20
            E.db.unitframe.units.party.buffs.yOffset = 21
			E.db.unitframe.units.party.buffs.attachTo = "HEALTH"

            E.db.unitframe.units.party.rdebuffs.size = 30
            E.db.unitframe.units.party.rdebuffs.fontSize = 12
            E.db.unitframe.units.party.rdebuffs.yOffset = 10

            E.db.unitframe.units.party.petsGroup.height = 35
            E.db.unitframe.units.party.petsGroup.width = 90            

            E.db.unitframe.units.raid10.width = 80
            E.db.unitframe.units.raid10.height = 50
            E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.xOffset = 0
            E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.yOffset = 15
            E.db.unitframe.units.raid10.customTexts.UnitName.xOffset = 0
            E.db.unitframe.units.raid10.customTexts.UnitName.yOffset = 0
            E.db.unitframe.units.raid10.readycheckIcon.size = 20
            
            E.db.unitframe.units.raid10.buffs.countFontSize = 12
            E.db.unitframe.units.raid10.buffs.sizeOverride = 16
            E.db.unitframe.units.raid10.buffs.yOffset = 16
			E.db.unitframe.units.raid10.buffs.attachTo = "HEALTH"

            E.db.unitframe.units.raid10.debuffs.countFontSize = 12
            E.db.unitframe.units.raid10.debuffs.sizeOverride = 16
            E.db.unitframe.units.raid10.debuffs.yOffset = -16

            E.db.unitframe.units.raid10.rdebuffs.size = 26
            E.db.unitframe.units.raid10.rdebuffs.fontSize = 12
            E.db.unitframe.units.raid10.rdebuffs.yOffset = 7

            E.db.unitframe.units.raid25.width = 80
            E.db.unitframe.units.raid25.height = 40
            E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.xOffset = 0
            E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.yOffset = 15
            E.db.unitframe.units.raid25.customTexts.UnitName.xOffset = 0
            E.db.unitframe.units.raid25.customTexts.UnitName.yOffset = 0
            E.db.unitframe.units.raid25.readycheckIcon.size = 20
            
            E.db.unitframe.units.raid25.buffs.countFontSize = 12
            E.db.unitframe.units.raid25.buffs.sizeOverride = 16
            E.db.unitframe.units.raid25.buffs.yOffset = 16
			E.db.unitframe.units.raid25.buffs.attachTo = "HEALTH"

            E.db.unitframe.units.raid25.debuffs.countFontSize = 12
            E.db.unitframe.units.raid25.debuffs.sizeOverride = 16
            E.db.unitframe.units.raid25.debuffs.yOffset = -16

            E.db.unitframe.units.raid25.rdebuffs.size = 26
            E.db.unitframe.units.raid25.rdebuffs.fontSize = 12
            E.db.unitframe.units.raid25.rdebuffs.yOffset = 7

            E.db.unitframe.units.raid40.width = 80
            E.db.unitframe.units.raid40.height = 32
            E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.xOffset = 0
            E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.yOffset = 15
            E.db.unitframe.units.raid40.customTexts.UnitName.xOffset = 0
            E.db.unitframe.units.raid40.customTexts.UnitName.yOffset = 0
            E.db.unitframe.units.raid40.readycheckIcon.size = 20

            E.db.unitframe.units.raid40.buffs.countFontSize = 12
            E.db.unitframe.units.raid40.buffs.sizeOverride = 16
            E.db.unitframe.units.raid40.buffs.yOffset = 16
			E.db.unitframe.units.raid40.buffs.attachTo = "HEALTH"

            E.db.unitframe.units.raid40.debuffs.countFontSize = 12
            E.db.unitframe.units.raid40.debuffs.sizeOverride = 16
            E.db.unitframe.units.raid40.debuffs.yOffset = -16

            E.db.unitframe.units.raid40.rdebuffs.size = 26
            E.db.unitframe.units.raid40.rdebuffs.fontSize = 12
            E.db.unitframe.units.raid40.rdebuffs.yOffset = 7

            E.db.unitframe.units.raidpet.height = 35
            E.db.unitframe.units.raidpet.width = 47

        elseif layout == 'Healer-H' or layout == 'Healer-V' then

            if layout == "Healer-H" then
                E.db.unitframe.units.party.customTexts.UnitName.text_format = "[name:abbrev:veryshort]"
                E.db.unitframe.units.party.height = 55
                E.db.unitframe.units.party.width = 100
                E.db.unitframe.units.party.power.height = 6
                E.db.unitframe.units.party.readycheckIcon.size = 16

                E.db.unitframe.units.party.debuffs.sizeOverride = 18
                E.db.unitframe.units.party.debuffs.countFontSize = 12
                E.db.unitframe.units.party.debuffs.yOffset = -18

                E.db.unitframe.units.party.buffs.countFontSize = 12
                E.db.unitframe.units.party.buffs.sizeOverride = 18
                E.db.unitframe.units.party.buffs.yOffset = 19
				E.db.unitframe.units.party.buffs.attachTo = "HEALTH"

                E.db.unitframe.units.party.rdebuffs.size = 25
                E.db.unitframe.units.party.rdebuffs.fontSize = 12
                E.db.unitframe.units.party.rdebuffs.yOffset = 14

                E.db.unitframe.units.party.petsGroup.height = 25
                E.db.unitframe.units.party.petsGroup.width = 100
                E.db.unitframe.units.party.petsGroup.anchorPoint = "BOTTOM"
            elseif layout == "Healer-V" then
                E.db.unitframe.units.party.customTexts.UnitName.text_format = "[name]"
                E.db.unitframe.units.party.height = 55
                E.db.unitframe.units.party.width = 235
                E.db.unitframe.units.party.power.height = 6
                E.db.unitframe.units.party.readycheckIcon.size = 20

                E.db.unitframe.units.party.debuffs.sizeOverride = 25
                E.db.unitframe.units.party.debuffs.countFontSize = 13
                E.db.unitframe.units.party.debuffs.yOffset = 13

                E.db.unitframe.units.party.buffs.countFontSize = 12
                E.db.unitframe.units.party.buffs.sizeOverride = 20
                E.db.unitframe.units.party.buffs.yOffset = 20
				E.db.unitframe.units.party.buffs.attachTo = "HEALTH"

                E.db.unitframe.units.party.rdebuffs.size = 30
                E.db.unitframe.units.party.rdebuffs.fontSize = 12
                E.db.unitframe.units.party.rdebuffs.yOffset = 10

                E.db.unitframe.units.party.petsGroup.height = 35
                E.db.unitframe.units.party.petsGroup.width = 90
            end

            E.db.unitframe.units.player.castbar.height = 35
            E.db.unitframe.units.player.castbar.width = 497

            E.db.unitframe.units.raid10.width = 100
            E.db.unitframe.units.raid10.height = 60
            E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.size = 13
            E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.xOffset = 0
            E.db.unitframe.units.raid10.customTexts.DeadGhostStatus.yOffset = 15
            E.db.unitframe.units.raid10.customTexts.UnitName.xOffset = 0
            E.db.unitframe.units.raid10.customTexts.UnitName.yOffset = 0
            E.db.unitframe.units.raid10.readycheckIcon.size = 20

            E.db.unitframe.units.raid10.buffs.countFontSize = 12
            E.db.unitframe.units.raid10.buffs.sizeOverride = 18
            E.db.unitframe.units.raid10.buffs.yOffset = 18
			E.db.unitframe.units.raid10.buffs.attachTo = "HEALTH"

            E.db.unitframe.units.raid10.debuffs.countFontSize = 12
            E.db.unitframe.units.raid10.debuffs.sizeOverride = 18
            E.db.unitframe.units.raid10.debuffs.yOffset = -18

            E.db.unitframe.units.raid10.rdebuffs.size = 30
            E.db.unitframe.units.raid10.rdebuffs.fontSize = 13
            E.db.unitframe.units.raid10.rdebuffs.yOffset = 15

            E.db.unitframe.units.raid25.width = 100
            E.db.unitframe.units.raid25.height = 50
            E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.size = 13
            E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.xOffset = 0
            E.db.unitframe.units.raid25.customTexts.DeadGhostStatus.yOffset = 15
            E.db.unitframe.units.raid25.customTexts.UnitName.xOffset = 0
            E.db.unitframe.units.raid25.customTexts.UnitName.yOffset = 0
            E.db.unitframe.units.raid25.readycheckIcon.size = 20

            E.db.unitframe.units.raid25.buffs.countFontSize = 12
            E.db.unitframe.units.raid25.buffs.sizeOverride = 18
            E.db.unitframe.units.raid25.buffs.yOffset = 18
			E.db.unitframe.units.raid25.buffs.attachTo = "HEALTH"

            E.db.unitframe.units.raid25.debuffs.countFontSize = 12
            E.db.unitframe.units.raid25.debuffs.sizeOverride = 18
            E.db.unitframe.units.raid25.debuffs.yOffset = -18

            E.db.unitframe.units.raid25.rdebuffs.size = 30
            E.db.unitframe.units.raid25.rdebuffs.fontSize = 13
            E.db.unitframe.units.raid25.rdebuffs.yOffset = 15

            E.db.unitframe.units.raid40.width = 100
            E.db.unitframe.units.raid40.height = 32
            E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.size = 13
            E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.xOffset = 0
            E.db.unitframe.units.raid40.customTexts.DeadGhostStatus.yOffset = 15
            E.db.unitframe.units.raid40.customTexts.UnitName.xOffset = 0
            E.db.unitframe.units.raid40.customTexts.UnitName.yOffset = 0
            E.db.unitframe.units.raid40.readycheckIcon.size = 20

            E.db.unitframe.units.raid40.buffs.countFontSize = 12
            E.db.unitframe.units.raid40.buffs.sizeOverride = 13
            E.db.unitframe.units.raid40.buffs.yOffset = 13
			E.db.unitframe.units.raid40.buffs.attachTo = "HEALTH"

            E.db.unitframe.units.raid40.debuffs.countFontSize = 12
            E.db.unitframe.units.raid40.debuffs.sizeOverride = 13
            E.db.unitframe.units.raid40.debuffs.yOffset = -13

            E.db.unitframe.units.raid40.rdebuffs.size = 27
            E.db.unitframe.units.raid40.rdebuffs.fontSize = 13
            E.db.unitframe.units.raid40.rdebuffs.yOffset = 2

        end

    end

end

db.nameplates = function()

    E.private.nameplates.enable = true

	local plates = { 'FRIENDLY_PLAYER', 'FRIENDLY_NPC', 'ENEMY_PLAYER', 'ENEMY_NPC' }

    for _, nameplateType in ipairs(plates) do
        E.db.nameplates.units[nameplateType].debuffs.countFont = MUI:GetProfileFont()
        E.db.nameplates.units[nameplateType].debuffs.durationFont = MUI:GetProfileFont()
        E.db.nameplates.units[nameplateType].debuffs.countYOffset = 0
        E.db.nameplates.units[nameplateType].debuffs.yOffset = 4
        E.db.nameplates.units[nameplateType].debuffs.attachTo = "FRAME"
        E.db.nameplates.units[nameplateType].debuffs.countXOffset = 0
        E.db.nameplates.units[nameplateType].debuffs.spacing = 0
        E.db.nameplates.units[nameplateType].debuffs.filters.priority = "Blacklist,CCDebuffs,Personal"
        E.db.nameplates.units[nameplateType].castbar.font = MUI:GetProfileFont()
        E.db.nameplates.units[nameplateType].castbar.textPosition = "ONBAR"
        E.db.nameplates.units[nameplateType].name.abbrev = true
        E.db.nameplates.units[nameplateType].name.font = MUI:GetProfileFont()
		E.db.nameplates.units[nameplateType].name.textFormat = "namenp:abbrev:medium"
        E.db.nameplates.units[nameplateType].health.text.font = MUI:GetProfileFont()
        E.db.nameplates.units[nameplateType].health.text.enable = true
        E.db.nameplates.units[nameplateType].health.text.format = "CURRENT_PERCENT"
        E.db.nameplates.units[nameplateType].level.enable = false
        E.db.nameplates.units[nameplateType].level.font = MUI:GetProfileFont()
        E.db.nameplates.units[nameplateType].buffs.countFont = MUI:GetProfileFont()
        E.db.nameplates.units[nameplateType].buffs.durationFont = MUI:GetProfileFont()
        E.db.nameplates.units[nameplateType].buffs.enable = false
        E.db.nameplates.units[nameplateType].buffs.filters.priority = "Blacklist,blockNoDuration,Personal,TurtleBuffs"
        E.db.nameplates.units[nameplateType].raidTargetIndicator.position = "LEFT"
		E.db.nameplates.units[nameplateType].name.useClassColor = false
    end

    E.db.nameplates.threat.badScale = 1
    E.db.nameplates.threat.goodScale = 1
    E.db.nameplates.nonTargetTransparency = 1
    E.db.nameplates.plateSize.friendlyHeight = 16
    E.db.nameplates.plateSize.friendlyWidth = 130
    E.db.nameplates.plateSize.enemyWidth = 130
    E.db.nameplates.plateSize.enemyHeight = 16
    E.db.nameplates.statusbar = MUI:GetProfileTexture()
    E.db.nameplates.useTargetScale = false
    E.db.nameplates.targetScale = 1
    E.db.nameplates.fadeIn = false
    E.db.nameplates.units.TARGET.glowStyle = "style1"
    E.db.nameplates.units.TARGET.arrow = "Arrow11"
    E.db.nameplates.units.TARGET.comboPoints.enable = false
    E.db.nameplates.alwaysShowTargetHealth = false
    E.db.nameplates.clickThrough.friendly = true
	E.db.nameplates.units.FRIENDLY_PLAYER.name.useClassColor = true
	
    

    E.db.nameplates.filters.Mark_Circle = E.db.nameplates.filters.Mark_Circle or {}
    E.db.nameplates.filters.Mark_Circle.triggers = E.db.nameplates.filters.Mark_Circle.triggers or {}
    E.db.nameplates.filters.Mark_Cross = E.db.nameplates.filters.Mark_Cross or {}
    E.db.nameplates.filters.Mark_Cross.triggers = E.db.nameplates.filters.Mark_Cross.triggers or {}
    E.db.nameplates.filters.Mark_Moon = E.db.nameplates.filters.Mark_Moon or {}
    E.db.nameplates.filters.Mark_Moon.triggers = E.db.nameplates.filters.Mark_Moon.triggers or {}
    E.db.nameplates.filters.Mark_Skull = E.db.nameplates.filters.Mark_Skull or {}
    E.db.nameplates.filters.Mark_Skull.triggers = E.db.nameplates.filters.Mark_Skull.triggers or {}
    E.db.nameplates.filters.Mark_Diamond = E.db.nameplates.filters.Mark_Diamond or {}
    E.db.nameplates.filters.Mark_Diamond.triggers = E.db.nameplates.filters.Mark_Diamond.triggers or {}
    E.db.nameplates.filters.Mark_Star = E.db.nameplates.filters.Mark_Star or {}
    E.db.nameplates.filters.Mark_Star.triggers = E.db.nameplates.filters.Mark_Star.triggers or {}
    E.db.nameplates.filters.Mark_Triangle = E.db.nameplates.filters.Mark_Triangle or {}
    E.db.nameplates.filters.Mark_Triangle.triggers = E.db.nameplates.filters.Mark_Triangle.triggers or {}
    E.db.nameplates.filters.Mark_Square = E.db.nameplates.filters.Mark_Square or {}
    E.db.nameplates.filters.Mark_Square.triggers = E.db.nameplates.filters.Mark_Square.triggers or {}

    E.global.nameplates.filters = E.global.nameplates.filters or {}
    
    E.global.nameplates.filters["Mark_Circle"] = {
        ["actions"] = {
            ["iconOnly"] = false,
            ["color"] = {
                ["health"] = true,
                ["borderColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["nameColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["healthColor"] = {
                    ["a"] = 1,
                    ["b"] = 0,
                    ["g"] = 0.50196078431373,
                    ["r"] = 1,
                },
                ["border"] = false,
                ["name"] = false,
            },
            ["nameOnly"] = false,
            ["alpha"] = -1,
            ["flash"] = {
                ["color"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["enable"] = false,
                ["speed"] = 4,
            },
            ["hide"] = false,
            ["scale"] = 1,
            ["icon"] = false,
            ["texture"] = {
                ["enable"] = false,
                ["texture"] = "ElvUI Norm",
            },
        },
        ["triggers"] = {
            ["totems"] = {
                ["w1"] = true,
                ["w3"] = true,
                ["w2"] = true,
                ["enable"] = false,
                ["a4"] = true,
                ["a5"] = true,
                ["a3"] = true,
                ["a2"] = true,
                ["a1"] = true,
                ["e3"] = true,
                ["e2"] = true,
                ["e1"] = true,
                ["f3"] = true,
                ["e4"] = true,
                ["e5"] = true,
                ["e6"] = true,
                ["f6"] = true,
                ["o1"] = true,
                ["w5"] = true,
                ["w4"] = true,
                ["f5"] = true,
                ["f4"] = true,
                ["f2"] = true,
                ["f1"] = true,
            },
            ["uniqueUnits"] = {
                ["enable"] = false,
                ["u2"] = true,
                ["u1"] = true,
            },
            ["isResting"] = false,
            ["healthThreshold"] = false,
            ["level"] = false,
            ["curlevel"] = 0,
            ["healthUsePlayer"] = false,
            ["role"] = {
                ["tank"] = false,
                ["damager"] = false,
                ["healer"] = false,
            },
            ["buffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["maxlevel"] = 0,
            ["cooldowns"] = {
                ["mustHaveAll"] = false,
            },
            ["priority"] = 1,
            ["outOfCombat"] = false,
            ["instanceType"] = {
                ["sanctuary"] = false,
                ["party"] = false,
                ["pvp"] = false,
                ["raid"] = false,
                ["arena"] = false,
                ["none"] = false,
            },
            ["raidTarget"] = {
                ["circle"] = true,
                ["diamond"] = false,
                ["square"] = false,
                ["moon"] = false,
                ["star"] = false,
                ["triangle"] = false,
                ["skull"] = false,
                ["cross"] = false,
            },
            ["debuffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["underPowerThreshold"] = 0,
            ["nameplateType"] = {
                ["enemyNPC"] = false,
                ["friendlyPlayer"] = false,
                ["enable"] = false,
                ["enemyPlayer"] = false,
                ["friendlyNPC"] = false,
            },
            ["minlevel"] = 0,
            ["instanceDifficulty"] = {
                ["dungeon"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
                ["raid"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
            },
            ["overHealthThreshold"] = 0,
            ["underHealthThreshold"] = 0,
            ["overPowerThreshold"] = 0,
            ["notTarget"] = false,
            ["powerThreshold"] = false,
            ["reactionType"] = {
                ["neutral"] = false,
                ["hostile"] = false,
                ["friendly"] = false,
                ["enabled"] = false,
            },
            ["isTarget"] = false,
            ["inCombat"] = false,
        },
    }
    E.global.nameplates.filters["Mark_Cross"] = {
        ["actions"] = {
            ["iconOnly"] = false,
            ["color"] = {
                ["health"] = true,
                ["borderColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["nameColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["healthColor"] = {
                    ["a"] = 1,
                    ["b"] = 0,
                    ["g"] = 0,
                    ["r"] = 1,
                },
                ["border"] = false,
                ["name"] = false,
            },
            ["nameOnly"] = false,
            ["alpha"] = -1,
            ["flash"] = {
                ["color"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["enable"] = false,
                ["speed"] = 4,
            },
            ["hide"] = false,
            ["scale"] = 1,
            ["icon"] = false,
            ["texture"] = {
                ["enable"] = false,
                ["texture"] = "ElvUI Norm",
            },
        },
        ["triggers"] = {
            ["totems"] = {
                ["w1"] = true,
                ["w3"] = true,
                ["w2"] = true,
                ["enable"] = false,
                ["a4"] = true,
                ["a5"] = true,
                ["a3"] = true,
                ["a2"] = true,
                ["a1"] = true,
                ["e3"] = true,
                ["e2"] = true,
                ["e1"] = true,
                ["f3"] = true,
                ["e4"] = true,
                ["e5"] = true,
                ["e6"] = true,
                ["f6"] = true,
                ["o1"] = true,
                ["w5"] = true,
                ["w4"] = true,
                ["f5"] = true,
                ["f4"] = true,
                ["f2"] = true,
                ["f1"] = true,
            },
            ["uniqueUnits"] = {
                ["enable"] = false,
                ["u2"] = true,
                ["u1"] = true,
            },
            ["isResting"] = false,
            ["healthThreshold"] = false,
            ["level"] = false,
            ["curlevel"] = 0,
            ["healthUsePlayer"] = false,
            ["role"] = {
                ["tank"] = false,
                ["damager"] = false,
                ["healer"] = false,
            },
            ["buffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["maxlevel"] = 0,
            ["cooldowns"] = {
                ["mustHaveAll"] = false,
            },
            ["priority"] = 1,
            ["outOfCombat"] = false,
            ["instanceType"] = {
                ["sanctuary"] = false,
                ["party"] = false,
                ["pvp"] = false,
                ["raid"] = false,
                ["arena"] = false,
                ["none"] = false,
            },
            ["raidTarget"] = {
                ["circle"] = false,
                ["square"] = false,
                ["diamond"] = false,
                ["cross"] = true,
                ["star"] = false,
                ["triangle"] = false,
                ["skull"] = false,
                ["moon"] = false,
            },
            ["debuffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["underPowerThreshold"] = 0,
            ["nameplateType"] = {
                ["enemyNPC"] = false,
                ["friendlyPlayer"] = false,
                ["enable"] = false,
                ["enemyPlayer"] = false,
                ["friendlyNPC"] = false,
            },
            ["minlevel"] = 0,
            ["instanceDifficulty"] = {
                ["dungeon"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
                ["raid"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
            },
            ["overHealthThreshold"] = 0,
            ["underHealthThreshold"] = 0,
            ["overPowerThreshold"] = 0,
            ["notTarget"] = false,
            ["powerThreshold"] = false,
            ["reactionType"] = {
                ["neutral"] = false,
                ["hostile"] = false,
                ["friendly"] = false,
                ["enabled"] = false,
            },
            ["isTarget"] = false,
            ["inCombat"] = false,
        },
    }
    E.global.nameplates.filters["Mark_Moon"] = {
        ["actions"] = {
            ["iconOnly"] = false,
            ["color"] = {
                ["health"] = true,
                ["borderColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["nameColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["healthColor"] = {
                    ["a"] = 1,
                    ["b"] = 0.94117647058824,
                    ["g"] = 0.8,
                    ["r"] = 0.41176470588235,
                },
                ["border"] = false,
                ["name"] = false,
            },
            ["nameOnly"] = false,
            ["alpha"] = -1,
            ["flash"] = {
                ["color"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["enable"] = false,
                ["speed"] = 4,
            },
            ["hide"] = false,
            ["scale"] = 1,
            ["icon"] = false,
            ["texture"] = {
                ["enable"] = false,
                ["texture"] = "ElvUI Norm",
            },
        },
        ["triggers"] = {
            ["totems"] = {
                ["w1"] = true,
                ["w3"] = true,
                ["w2"] = true,
                ["enable"] = false,
                ["a4"] = true,
                ["a5"] = true,
                ["a3"] = true,
                ["a2"] = true,
                ["a1"] = true,
                ["e3"] = true,
                ["e2"] = true,
                ["e1"] = true,
                ["f3"] = true,
                ["e4"] = true,
                ["e5"] = true,
                ["e6"] = true,
                ["f6"] = true,
                ["o1"] = true,
                ["w5"] = true,
                ["w4"] = true,
                ["f5"] = true,
                ["f4"] = true,
                ["f2"] = true,
                ["f1"] = true,
            },
            ["uniqueUnits"] = {
                ["enable"] = false,
                ["u2"] = true,
                ["u1"] = true,
            },
            ["isResting"] = false,
            ["healthThreshold"] = false,
            ["level"] = false,
            ["curlevel"] = 0,
            ["healthUsePlayer"] = false,
            ["role"] = {
                ["tank"] = false,
                ["damager"] = false,
                ["healer"] = false,
            },
            ["buffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["maxlevel"] = 0,
            ["cooldowns"] = {
                ["mustHaveAll"] = false,
            },
            ["priority"] = 1,
            ["outOfCombat"] = false,
            ["instanceType"] = {
                ["sanctuary"] = false,
                ["party"] = false,
                ["pvp"] = false,
                ["raid"] = false,
                ["arena"] = false,
                ["none"] = false,
            },
            ["raidTarget"] = {
                ["circle"] = false,
                ["square"] = false,
                ["diamond"] = false,
                ["moon"] = true,
                ["star"] = false,
                ["triangle"] = false,
                ["skull"] = false,
                ["cross"] = false,
            },
            ["debuffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["underPowerThreshold"] = 0,
            ["nameplateType"] = {
                ["enemyNPC"] = false,
                ["friendlyPlayer"] = false,
                ["enable"] = false,
                ["enemyPlayer"] = false,
                ["friendlyNPC"] = false,
            },
            ["minlevel"] = 0,
            ["instanceDifficulty"] = {
                ["dungeon"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
                ["raid"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
            },
            ["overHealthThreshold"] = 0,
            ["underHealthThreshold"] = 0,
            ["overPowerThreshold"] = 0,
            ["notTarget"] = false,
            ["powerThreshold"] = false,
            ["reactionType"] = {
                ["neutral"] = false,
                ["hostile"] = false,
                ["friendly"] = false,
                ["enabled"] = false,
            },
            ["isTarget"] = false,
            ["inCombat"] = false,
        },
    }
    E.global.nameplates.filters["Mark_Skull"] = {
        ["actions"] = {
            ["iconOnly"] = false,
            ["color"] = {
                ["health"] = true,
                ["borderColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["nameColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["healthColor"] = {
                    ["a"] = 1,
                    ["b"] = 0.6156862745098,
                    ["g"] = 0.6156862745098,
                    ["r"] = 0.6156862745098,
                },
                ["border"] = false,
                ["name"] = false,
            },
            ["nameOnly"] = false,
            ["alpha"] = -1,
            ["flash"] = {
                ["color"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["enable"] = false,
                ["speed"] = 4,
            },
            ["hide"] = false,
            ["scale"] = 1,
            ["icon"] = false,
            ["texture"] = {
                ["enable"] = false,
                ["texture"] = "ElvUI Norm",
            },
        },
        ["triggers"] = {
            ["totems"] = {
                ["w1"] = true,
                ["w3"] = true,
                ["w2"] = true,
                ["enable"] = false,
                ["a4"] = true,
                ["a5"] = true,
                ["a3"] = true,
                ["a2"] = true,
                ["a1"] = true,
                ["e3"] = true,
                ["e2"] = true,
                ["e1"] = true,
                ["f3"] = true,
                ["e4"] = true,
                ["e5"] = true,
                ["e6"] = true,
                ["f6"] = true,
                ["o1"] = true,
                ["w5"] = true,
                ["w4"] = true,
                ["f5"] = true,
                ["f4"] = true,
                ["f2"] = true,
                ["f1"] = true,
            },
            ["uniqueUnits"] = {
                ["enable"] = false,
                ["u2"] = true,
                ["u1"] = true,
            },
            ["isResting"] = false,
            ["healthThreshold"] = false,
            ["level"] = false,
            ["curlevel"] = 0,
            ["healthUsePlayer"] = false,
            ["role"] = {
                ["tank"] = false,
                ["damager"] = false,
                ["healer"] = false,
            },
            ["buffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["maxlevel"] = 0,
            ["cooldowns"] = {
                ["mustHaveAll"] = false,
            },
            ["priority"] = 1,
            ["outOfCombat"] = false,
            ["instanceType"] = {
                ["sanctuary"] = false,
                ["party"] = false,
                ["pvp"] = false,
                ["raid"] = false,
                ["arena"] = false,
                ["none"] = false,
            },
            ["raidTarget"] = {
                ["circle"] = false,
                ["square"] = false,
                ["diamond"] = false,
                ["moon"] = false,
                ["star"] = false,
                ["triangle"] = false,
                ["skull"] = true,
                ["cross"] = false,
            },
            ["debuffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["underPowerThreshold"] = 0,
            ["nameplateType"] = {
                ["enemyNPC"] = false,
                ["friendlyPlayer"] = false,
                ["enable"] = false,
                ["enemyPlayer"] = false,
                ["friendlyNPC"] = false,
            },
            ["minlevel"] = 0,
            ["instanceDifficulty"] = {
                ["dungeon"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
                ["raid"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
            },
            ["overHealthThreshold"] = 0,
            ["underHealthThreshold"] = 0,
            ["overPowerThreshold"] = 0,
            ["notTarget"] = false,
            ["powerThreshold"] = false,
            ["reactionType"] = {
                ["neutral"] = false,
                ["hostile"] = false,
                ["friendly"] = false,
                ["enabled"] = false,
            },
            ["isTarget"] = false,
            ["inCombat"] = false,
        },
    }
    E.global.nameplates.filters["Mark_Diamond"] = {
        ["actions"] = {
            ["iconOnly"] = false,
            ["color"] = {
                ["health"] = true,
                ["borderColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["nameColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["healthColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 0,
                    ["r"] = 1,
                },
                ["border"] = false,
                ["name"] = false,
            },
            ["nameOnly"] = false,
            ["alpha"] = -1,
            ["flash"] = {
                ["color"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["enable"] = false,
                ["speed"] = 4,
            },
            ["hide"] = false,
            ["scale"] = 1,
            ["icon"] = false,
            ["texture"] = {
                ["enable"] = false,
                ["texture"] = "ElvUI Norm",
            },
        },
        ["triggers"] = {
            ["totems"] = {
                ["w1"] = true,
                ["w3"] = true,
                ["w2"] = true,
                ["enable"] = false,
                ["a4"] = true,
                ["a5"] = true,
                ["a3"] = true,
                ["a2"] = true,
                ["a1"] = true,
                ["e3"] = true,
                ["e2"] = true,
                ["e1"] = true,
                ["f3"] = true,
                ["e4"] = true,
                ["e5"] = true,
                ["e6"] = true,
                ["f6"] = true,
                ["o1"] = true,
                ["w5"] = true,
                ["w4"] = true,
                ["f5"] = true,
                ["f4"] = true,
                ["f2"] = true,
                ["f1"] = true,
            },
            ["uniqueUnits"] = {
                ["enable"] = false,
                ["u2"] = true,
                ["u1"] = true,
            },
            ["isResting"] = false,
            ["healthThreshold"] = false,
            ["level"] = false,
            ["curlevel"] = 0,
            ["healthUsePlayer"] = false,
            ["role"] = {
                ["tank"] = false,
                ["damager"] = false,
                ["healer"] = false,
            },
            ["buffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["maxlevel"] = 0,
            ["cooldowns"] = {
                ["mustHaveAll"] = false,
            },
            ["priority"] = 1,
            ["outOfCombat"] = false,
            ["instanceType"] = {
                ["sanctuary"] = false,
                ["party"] = false,
                ["pvp"] = false,
                ["raid"] = false,
                ["arena"] = false,
                ["none"] = false,
            },
            ["raidTarget"] = {
                ["circle"] = false,
                ["square"] = false,
                ["diamond"] = true,
                ["moon"] = false,
                ["star"] = false,
                ["triangle"] = false,
                ["skull"] = false,
                ["cross"] = false,
            },
            ["debuffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["underPowerThreshold"] = 0,
            ["nameplateType"] = {
                ["enemyNPC"] = false,
                ["friendlyPlayer"] = false,
                ["enable"] = false,
                ["enemyPlayer"] = false,
                ["friendlyNPC"] = false,
            },
            ["minlevel"] = 0,
            ["instanceDifficulty"] = {
                ["dungeon"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
                ["raid"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
            },
            ["overHealthThreshold"] = 0,
            ["underHealthThreshold"] = 0,
            ["overPowerThreshold"] = 0,
            ["notTarget"] = false,
            ["powerThreshold"] = false,
            ["reactionType"] = {
                ["neutral"] = false,
                ["hostile"] = false,
                ["friendly"] = false,
                ["enabled"] = false,
            },
            ["isTarget"] = false,
            ["inCombat"] = false,
        },
    }
    E.global.nameplates.filters["Mark_Star"] = {
        ["actions"] = {
            ["iconOnly"] = false,
            ["color"] = {
                ["health"] = true,
                ["borderColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["nameColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["healthColor"] = {
                    ["a"] = 1,
                    ["b"] = 0,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["border"] = false,
                ["name"] = false,
            },
            ["nameOnly"] = false,
            ["alpha"] = -1,
            ["flash"] = {
                ["color"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["enable"] = false,
                ["speed"] = 4,
            },
            ["hide"] = false,
            ["scale"] = 1,
            ["icon"] = false,
            ["texture"] = {
                ["enable"] = false,
                ["texture"] = "ElvUI Norm",
            },
        },
        ["triggers"] = {
            ["totems"] = {
                ["w1"] = true,
                ["w3"] = true,
                ["w2"] = true,
                ["enable"] = false,
                ["a4"] = true,
                ["a5"] = true,
                ["a3"] = true,
                ["a2"] = true,
                ["a1"] = true,
                ["e3"] = true,
                ["e2"] = true,
                ["e1"] = true,
                ["f3"] = true,
                ["e4"] = true,
                ["e5"] = true,
                ["e6"] = true,
                ["f6"] = true,
                ["o1"] = true,
                ["w5"] = true,
                ["w4"] = true,
                ["f5"] = true,
                ["f4"] = true,
                ["f2"] = true,
                ["f1"] = true,
            },
            ["uniqueUnits"] = {
                ["enable"] = false,
                ["u2"] = true,
                ["u1"] = true,
            },
            ["isResting"] = false,
            ["healthThreshold"] = false,
            ["level"] = false,
            ["curlevel"] = 0,
            ["healthUsePlayer"] = false,
            ["role"] = {
                ["tank"] = false,
                ["damager"] = false,
                ["healer"] = false,
            },
            ["buffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["maxlevel"] = 0,
            ["cooldowns"] = {
                ["mustHaveAll"] = false,
            },
            ["priority"] = 1,
            ["outOfCombat"] = false,
            ["instanceType"] = {
                ["sanctuary"] = false,
                ["party"] = false,
                ["pvp"] = false,
                ["raid"] = false,
                ["arena"] = false,
                ["none"] = false,
            },
            ["raidTarget"] = {
                ["circle"] = false,
                ["diamond"] = false,
                ["square"] = false,
                ["moon"] = false,
                ["star"] = true,
                ["triangle"] = false,
                ["skull"] = false,
                ["cross"] = false,
            },
            ["debuffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["underPowerThreshold"] = 0,
            ["nameplateType"] = {
                ["enemyNPC"] = false,
                ["friendlyPlayer"] = false,
                ["enable"] = false,
                ["enemyPlayer"] = false,
                ["friendlyNPC"] = false,
            },
            ["minlevel"] = 0,
            ["instanceDifficulty"] = {
                ["dungeon"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
                ["raid"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
            },
            ["overHealthThreshold"] = 0,
            ["underHealthThreshold"] = 0,
            ["overPowerThreshold"] = 0,
            ["notTarget"] = false,
            ["powerThreshold"] = false,
            ["reactionType"] = {
                ["neutral"] = false,
                ["hostile"] = false,
                ["friendly"] = false,
                ["enabled"] = false,
            },
            ["isTarget"] = false,
            ["inCombat"] = false,
        },
    }
    E.global.nameplates.filters["Mark_Triangle"] = {
        ["actions"] = {
            ["iconOnly"] = false,
            ["color"] = {
                ["health"] = true,
                ["borderColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["nameColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["healthColor"] = {
                    ["a"] = 1,
                    ["b"] = 0,
                    ["g"] = 1,
                    ["r"] = 0,
                },
                ["border"] = false,
                ["name"] = false,
            },
            ["nameOnly"] = false,
            ["alpha"] = -1,
            ["flash"] = {
                ["color"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["enable"] = false,
                ["speed"] = 4,
            },
            ["hide"] = false,
            ["scale"] = 1,
            ["icon"] = false,
            ["texture"] = {
                ["enable"] = false,
                ["texture"] = "ElvUI Norm",
            },
        },
        ["triggers"] = {
            ["totems"] = {
                ["w1"] = true,
                ["w3"] = true,
                ["w2"] = true,
                ["enable"] = false,
                ["a4"] = true,
                ["a5"] = true,
                ["a3"] = true,
                ["a2"] = true,
                ["a1"] = true,
                ["e3"] = true,
                ["e2"] = true,
                ["e1"] = true,
                ["f3"] = true,
                ["e4"] = true,
                ["e5"] = true,
                ["e6"] = true,
                ["f6"] = true,
                ["o1"] = true,
                ["w5"] = true,
                ["w4"] = true,
                ["f5"] = true,
                ["f4"] = true,
                ["f2"] = true,
                ["f1"] = true,
            },
            ["uniqueUnits"] = {
                ["enable"] = false,
                ["u2"] = true,
                ["u1"] = true,
            },
            ["isResting"] = false,
            ["healthThreshold"] = false,
            ["level"] = false,
            ["curlevel"] = 0,
            ["healthUsePlayer"] = false,
            ["role"] = {
                ["tank"] = false,
                ["damager"] = false,
                ["healer"] = false,
            },
            ["buffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["maxlevel"] = 0,
            ["cooldowns"] = {
                ["mustHaveAll"] = false,
            },
            ["priority"] = 1,
            ["outOfCombat"] = false,
            ["instanceType"] = {
                ["sanctuary"] = false,
                ["party"] = false,
                ["pvp"] = false,
                ["raid"] = false,
                ["arena"] = false,
                ["none"] = false,
            },
            ["raidTarget"] = {
                ["circle"] = false,
                ["diamond"] = false,
                ["square"] = false,
                ["cross"] = false,
                ["triangle"] = true,
                ["star"] = false,
                ["skull"] = false,
                ["moon"] = false,
            },
            ["debuffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["underPowerThreshold"] = 0,
            ["nameplateType"] = {
                ["enemyNPC"] = false,
                ["friendlyPlayer"] = false,
                ["enable"] = false,
                ["enemyPlayer"] = false,
                ["friendlyNPC"] = false,
            },
            ["minlevel"] = 0,
            ["instanceDifficulty"] = {
                ["dungeon"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
                ["raid"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
            },
            ["overHealthThreshold"] = 0,
            ["underHealthThreshold"] = 0,
            ["overPowerThreshold"] = 0,
            ["notTarget"] = false,
            ["powerThreshold"] = false,
            ["reactionType"] = {
                ["neutral"] = false,
                ["hostile"] = false,
                ["friendly"] = false,
                ["enabled"] = false,
            },
            ["isTarget"] = false,
            ["inCombat"] = false,
        },
    }
    E.global.nameplates.filters["Mark_Square"] = {
        ["actions"] = {
            ["iconOnly"] = false,
            ["color"] = {
                ["health"] = true,
                ["borderColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["nameColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["healthColor"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 0,
                    ["r"] = 0,
                },
                ["border"] = false,
                ["name"] = false,
            },
            ["nameOnly"] = false,
            ["alpha"] = -1,
            ["flash"] = {
                ["color"] = {
                    ["a"] = 1,
                    ["b"] = 1,
                    ["g"] = 1,
                    ["r"] = 1,
                },
                ["enable"] = false,
                ["speed"] = 4,
            },
            ["hide"] = false,
            ["scale"] = 1,
            ["icon"] = false,
            ["texture"] = {
                ["enable"] = false,
                ["texture"] = "ElvUI Norm",
            },
        },
        ["triggers"] = {
            ["totems"] = {
                ["w1"] = true,
                ["w3"] = true,
                ["w2"] = true,
                ["enable"] = false,
                ["a4"] = true,
                ["a5"] = true,
                ["a3"] = true,
                ["a2"] = true,
                ["a1"] = true,
                ["e3"] = true,
                ["e2"] = true,
                ["e1"] = true,
                ["f3"] = true,
                ["e4"] = true,
                ["e5"] = true,
                ["e6"] = true,
                ["f6"] = true,
                ["o1"] = true,
                ["w5"] = true,
                ["w4"] = true,
                ["f5"] = true,
                ["f4"] = true,
                ["f2"] = true,
                ["f1"] = true,
            },
            ["uniqueUnits"] = {
                ["enable"] = false,
                ["u2"] = true,
                ["u1"] = true,
            },
            ["isResting"] = false,
            ["healthThreshold"] = false,
            ["level"] = false,
            ["curlevel"] = 0,
            ["healthUsePlayer"] = false,
            ["role"] = {
                ["tank"] = false,
                ["damager"] = false,
                ["healer"] = false,
            },
            ["buffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["maxlevel"] = 0,
            ["cooldowns"] = {
                ["mustHaveAll"] = false,
            },
            ["priority"] = 1,
            ["outOfCombat"] = false,
            ["instanceType"] = {
                ["sanctuary"] = false,
                ["party"] = false,
                ["pvp"] = false,
                ["raid"] = false,
                ["arena"] = false,
                ["none"] = false,
            },
            ["raidTarget"] = {
                ["circle"] = false,
                ["diamond"] = false,
                ["square"] = true,
                ["moon"] = false,
                ["star"] = false,
                ["triangle"] = false,
                ["skull"] = false,
                ["cross"] = false,
            },
            ["debuffs"] = {
                ["minTimeLeft"] = 0,
                ["mustHaveAll"] = false,
                ["missing"] = false,
                ["maxTimeLeft"] = 0,
            },
            ["underPowerThreshold"] = 0,
            ["nameplateType"] = {
                ["enemyNPC"] = false,
                ["friendlyPlayer"] = false,
                ["enable"] = false,
                ["enemyPlayer"] = false,
                ["friendlyNPC"] = false,
            },
            ["minlevel"] = 0,
            ["instanceDifficulty"] = {
                ["dungeon"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
                ["raid"] = {
                    ["normal"] = false,
                    ["heroic"] = false,
                },
            },
            ["overHealthThreshold"] = 0,
            ["underHealthThreshold"] = 0,
            ["overPowerThreshold"] = 0,
            ["notTarget"] = false,
            ["powerThreshold"] = false,
            ["reactionType"] = {
                ["neutral"] = false,
                ["hostile"] = false,
                ["friendly"] = false,
                ["enabled"] = false,
            },
            ["isTarget"] = false,
            ["inCombat"] = false,
        },
    }

    E.db.nameplates.filters.Mark_Circle.triggers.enable = true
    E.db.nameplates.filters.Mark_Cross.triggers.enable = true
    E.db.nameplates.filters.Mark_Moon.triggers.enable = true
    E.db.nameplates.filters.Mark_Skull.triggers.enable = true
    E.db.nameplates.filters.Mark_Diamond.triggers.enable = true
    E.db.nameplates.filters.Mark_Star.triggers.enable = true
    E.db.nameplates.filters.Mark_Triangle.triggers.enable = true
    E.db.nameplates.filters.Mark_Square.triggers.enable = true

    if MUI:GetProfileResolution() == 'FULL_HD' then
        
        for _, nameplateType in ipairs(plates) do
            E.db.nameplates.units[nameplateType].health.height = 18
            E.db.nameplates.units[nameplateType].health.width = 155
            E.db.nameplates.units[nameplateType].health.text.position = "BOTTOMRIGHT"
            E.db.nameplates.units[nameplateType].health.text.xOffset = -2
            E.db.nameplates.units[nameplateType].health.text.yOffset = 14
            E.db.nameplates.units[nameplateType].health.text.fontSize = 9
            E.db.nameplates.units[nameplateType].name.position = "BOTTOMLEFT"
            E.db.nameplates.units[nameplateType].name.xOffset = 2
            E.db.nameplates.units[nameplateType].name.yOffset = 14
            E.db.nameplates.units[nameplateType].name.fontSize = 9
            E.db.nameplates.units[nameplateType].debuffs.size = 20
            E.db.nameplates.units[nameplateType].debuffs.perrow = 7
            E.db.nameplates.units[nameplateType].debuffs.countFontSize = 10
            E.db.nameplates.units[nameplateType].debuffs.durationFontSize = 10
            E.db.nameplates.units[nameplateType].debuffs.xOffset = 1
            E.db.nameplates.units[nameplateType].castbar.iconSize = 34
            E.db.nameplates.units[nameplateType].castbar.height = 15
            E.db.nameplates.units[nameplateType].castbar.width = 155
            E.db.nameplates.units[nameplateType].castbar.fontSize = 9
            E.db.nameplates.units[nameplateType].castbar.iconOffsetX = 0
            E.db.nameplates.units[nameplateType].castbar.yOffset = -1
            E.db.nameplates.units[nameplateType].raidTargetIndicator.size = 23
            E.db.nameplates.units[nameplateType].raidTargetIndicator.xOffset = -6
			E.db.nameplates.units[nameplateType].name.useClassColor = false
        end
        E.db.nameplates.units.FRIENDLY_PLAYER.name.useClassColor = true
    end

end

db.filters = function()

    local indicatorSize = MUI:GetProfileResolution() == 'FULL_HD' and 15 or 17

    local GetSpellInfo = GetSpellInfo
    local pairs = pairs

    local tinyDebuffs = {}

    tinyDebuffs['VOA'] = {
        72004,
        67332,
        72121,
        66684,
        72098,
        72120
    }

    tinyDebuffs['OS'] = {
        58936, -- Rain of Fire 
        60708, -- Fade Armor 
        57491, -- Flame Tsunami
    }

    tinyDebuffs['NAXX'] = {
        27819, -- Detonate Mana 
        28410, -- Chains of Kel'thuzad 
        28522, -- Icebolt
        28622, -- Web Wrap
        29204, -- Inevitable Doom
        29212, -- Cripple 
        29213, -- Curse of the Plaguebringer
        29214, -- Wrath of the Plaguebringer 
        29232, -- Fungal Creep
        29306, -- Infected Wound
        29310, -- Spell Disruption 
        29865, -- Deathbloom
        54022, -- Locust Swarm
        54098, -- Poison Bolt Volley
        54378, -- Mortal Wound
        55011, -- Decrepit Fever
        55053, -- Deathbloom
        55604, -- Death Plague
        55665, -- Life Drain
        56538, -- Plague Splash
        27825, -- Shadow Mark
        55699, -- Chill
        56674, -- Poison Charge
        56605, -- Virulent Poison
        29848, -- Polymorph
        29849, -- Frost Nova
        54709, -- Flesh Rot
    }

    tinyDebuffs['EOE'] = {
        56272,
        60072,
        57407,
        60936,
    }

    tinyDebuffs['ULDUAR'] = {
        62469,
        64386,
        64771,
        64152,
        64156,
        64668,
        63549,
        62418,
        62680,
        62469,
        62865,
        63355,
        63978,
        62038,
        63830,
        63138,
        63802,
        64412,
        43622,
        62269,
        61990,
        64153,
        64157,
        62526,
        63673,
        62042,
        62602,
        62928,
        62055,
        64375,
        63476,
        63322,
        64374,
        63615,
        62532,
        63042,
        64706,
        63247,
        63551
    }

    tinyDebuffs['TOGC'] = {
        66406,
        66819,
        66821,
        66823,
        66770,
        66689,
        66683,
        66242,
        66197,
        66283,
        66209,
        66211,
        66333,
        65812,
        65960,
        65801,
        65543,
        66054,
        65809,
        66075,
        66069,
        67721,
        66012,
        65775,
        66320
    }

    tinyDebuffs['ICC'] = {
        70450,
        71089,
        71163,
        71127,
        70435,
        70671,
        70432,
        71257,
        69146,
        61603,
        71204,
        55095,
        70659,
        72408,
        72769,
        69290,
        72219,
        69789,
        69508,
        69774,
        72295,
        72454,
        70341,
        72999,
        71807,
        70838,
        71623,
        70949,
        72151,
        70877,
        70923,
        70873,
        70744,
        70751,
        70633,
        71941,
        70766,
        70107,
        70106,
        69766,
        71665,
        72133,
        68981,
        70541,
        68980,
        72385,
        69762,
        72884,
        70127
    }

    tinyDebuffs['RS'] = {
        74630,
        74802,
    }

    local bigDebuffs = {}

    bigDebuffs['OS'] = {
        39647,
    }

    bigDebuffs['NAXX'] = {
        54121,
        55550,
        29998,
        27808,
        28169,
        55314,
    }

    bigDebuffs['EOE'] = {
        61079,
    }

    bigDebuffs['ULDUAR'] = {
        65121,
        62589,
        63025,
        63276,
        62374,
        61888,
        67237,
        62997,
        63666,
        64125,
        64290,
        63666,
        63477,
        13704,
        63134,
        62283,
        63493,
        64698,
        64970
    }

    bigDebuffs['TOGC'] = {
        66869,
        66331,
        66532,
        66237,
        65950,
        66001,
        66013,
        67574
    }

    bigDebuffs['ICC'] = {
        70980,
        69483,
        69065,
        71289,
        71237,
        69651,
        69248,
        69278,
        69674,
        70215,
        70911,
        69774,
        71340,
        72985,
        70126,
        70157,
        69242,
        69409,
        70337,
        72865,
        72446
    }

    bigDebuffs['RS'] = {
        74562,
        74792,
        74453,
    }

    local blacklist = {
        22790,
        25771,
        42859
    }

    local turtle = {
        47883,
        29166,
    }


    -- Aura Filters
    E.global["unitframe"]["aurafilters"] = E.global["unitframe"]["aurafilters"] or {}

    local AddSpellId = function(spellId, filter, type)
        if not spellId or not filter then
            return
        end

        local spellName = GetSpellInfo(spellId)

        if not spellName then
            return
        end
    
        if not E.global.unitframe.aurafilters[filter] then
            E.global.unitframe.aurafilters[filter] = {
                type = type,
                spells = {},
            }
        end

        if E.global.unitframe.aurafilters[filter].spells[spellName] then
            return
        end

        E.global.unitframe.aurafilters[filter].spells[spellName] = {
            ["enable"] = true,
            ["priority"] = 0,
            ["stackThreshold"] = 0,
        }
    end
    
    AddSpellId(53227, 'CCDebuffs')

    for _, spellId in pairs(turtle) do
        AddSpellId(spellId, 'TurtleBuffs', 'Whitelist')
    end

    for _, spellId in pairs(blacklist) do
        AddSpellId(spellId, 'Blacklist', 'Whitelist')
    end

    for _, spellId in pairs(tinyDebuffs['VOA']) do 
        AddSpellId(spellId, 'RaidDebuffs_VoA', 'Whitelist')
    end

    for _, spellId in pairs(tinyDebuffs['OS']) do
        AddSpellId(spellId, 'RaidDebuffs_OS', 'Whitelist')
    end

    for _, spellId in pairs(tinyDebuffs['NAXX']) do
        AddSpellId(spellId, 'RaidDebuffs_Naxx', 'Whitelist')
    end

    for _, spellId in pairs(tinyDebuffs['EOE']) do
        AddSpellId(spellId, 'RaidDebuffs_EoE', 'Whitelist')
    end

    for _, spellId in pairs(tinyDebuffs['ULDUAR']) do
        AddSpellId(spellId, 'RaidDebuffs_Ulduar', 'Whitelist')
    end

    for _, spellId in pairs(tinyDebuffs['TOGC']) do
        AddSpellId(spellId, 'RaidDebuffs_ToGC', 'Whitelist')
    end

    for _, spellId in pairs(tinyDebuffs['ICC']) do
        AddSpellId(spellId, 'RaidDebuffs_ICC', 'Whitelist')
    end

    for _, spellId in pairs(tinyDebuffs['RS']) do
        AddSpellId(spellId, 'RaidDebuffs_RS', 'Whitelist')
    end

    for _ , spellId in pairs(tinyDebuffs['RS']) do
        AddSpellId(spellId, 'RaidDebuffs_RS', 'Whitelist')
    end

    for _, filterName in pairs( { 'OS', 'NAXX', 'EOE', 'ULDUAR', 'TOGC', 'ICC', 'RS'} ) do
        for _, spellId in pairs(bigDebuffs[filterName]) do
            AddSpellId(spellId, 'Debuff Indicators', 'Whitelist')
            AddSpellId(spellId, 'BLACKLIST: Debuff Indicators', 'Blacklist')
        end 
    end

    E.global["unitframe"]["buffwatch"] = E.global["unitframe"]["buffwatch"] or {}

    E.global["unitframe"]["buffwatch"]["MAGE"] = {
        [54646] = {
            ["sizeOverride"] = 15,
            ["point"] = "TOPLEFT",
            ["style"] = "texturedIcon",
            ["onlyShowMissing"] = false,
        },
        [48066] = {
            ["enabled"] = true,
            ["sizeOverride"] = 10,
            ["point"] = "TOP",
            ["xOffset"] = 0,
            ["yOffset"] = 0,
            ["style"] = "texturedIcon",
            ["id"] = 48066,
            ["color"] = {
                ["r"] = 1,
                ["g"] = 0,
                ["b"] = 0,
            },
            ["anyUnit"] = true,
            ["onlyShowMissing"] = false,
        },
    }

    E.global["unitframe"]["buffwatch"]["WARLOCK"] = {
        [47883] = {
            ["enabled"] = true,
            ["anyUnit"] = true,
            ["point"] = "TOPLEFT",
            ["xOffset"] = 0,
            ["displayText"] = false,
            ["textThreshold"] = -1,
            ["yOffset"] = 0,
            ["style"] = "texturedIcon",
            ["sizeOverride"] = 15,
            ["color"] = {
                ["b"] = 1,
                ["g"] = 0.41960784313725,
                ["r"] = 0,
            },
            ["id"] = 47883,
        },
        [48066] = {
            ["enabled"] = true,
            ["sizeOverride"] = 10,
            ["point"] = "TOP",
            ["xOffset"] = 0,
            ["yOffset"] = 0,
            ["style"] = "texturedIcon",
            ["id"] = 48066,
            ["color"] = {
                ["r"] = 1,
                ["g"] = 0,
                ["b"] = 0,
            },
            ["anyUnit"] = true,
            ["onlyShowMissing"] = false,
        },
    }

    E.global["unitframe"]["buffwatch"]["PRIEST"] = {
        -- Power Infusion
        [10060] = {
            ["enabled"] = false,
        },
        -- PoM
        [48111] = {
            ["sizeOverride"] = indicatorSize,
            ["style"] = "texturedIcon",
            ["point"] = "TOPRIGHT",
            ["xOffset"] = -(indicatorSize+1),
            ["decimalThreshold"] = -1,
        },
        -- Weakened Soul
        [6788] = {
            ["sizeOverride"] = 13,
            ["point"] = "TOP",
            ["style"] = "texturedIcon",
        },
        -- Power Word: Shield
        [48066] = {
            ["anyUnit"] = false,
            ["point"] = "TOPRIGHT",
            ["color"] = {
                ["b"] = 0,
                ["g"] = 0,
                ["r"] = 1,
            },
            ["sizeOverride"] = indicatorSize,
            ["style"] = "texturedIcon",
            ["onlyShowMissing"] = false,
        },
        -- Renew
        [48068] = {
            ["sizeOverride"] = indicatorSize,
            ["style"] = "texturedIcon",
            ["decimalThreshold"] = -1,
            ["point"] = "BOTTOMRIGHT",
        },
    }    

    E.global["unitframe"]["buffwatch"]["PALADIN"] = {
        [6940] = {
            ["enabled"] = false,
            ["sizeOverride"] = 13,
            ["point"] = "BOTTOMLEFT",
            ["style"] = "texturedIcon",
            ["yOffset"] = -2,
        },
        [10278] = {
            ["enabled"] = false,
            ["sizeOverride"] = 13,
            ["point"] = "BOTTOMLEFT",
            ["style"] = "texturedIcon",
            ["yOffset"] = -2,
        },
        [48066] = {
            ["enabled"] = true,
            ["anyUnit"] = true,
            ["point"] = "TOP",
            ["xOffset"] = 0,
            ["yOffset"] = 0,
            ["style"] = "texturedIcon",
            ["id"] = 48066,
            ["color"] = {
                ["r"] = 1,
                ["g"] = 0,
                ["b"] = 0,
            },
            ["sizeOverride"] = 10,
            ["onlyShowMissing"] = false,
        },
        [1038] = {
            ["enabled"] = false,
            ["sizeOverride"] = 13,
            ["point"] = "BOTTOMLEFT",
            ["style"] = "texturedIcon",
            ["yOffset"] = -2,
        },
        [1044] = {
            ["enabled"] = false,
            ["sizeOverride"] = 13,
            ["point"] = "BOTTOMLEFT",
            ["style"] = "texturedIcon",
            ["yOffset"] = -3,
        },
        [53563] = {
            ["anyUnit"] = false,
            ["style"] = "texturedIcon",
            ["point"] = "BOTTOMRIGHT",
            ["color"] = {
                ["r"] = 1,
                ["g"] = 0,
                ["b"] = 0,
            },
            ["sizeOverride"] = indicatorSize,
            ["decimalThreshold"] = -1,
        },
        [53601] = {
            ["sizeOverride"] = indicatorSize,
            ["point"] = "TOPRIGHT",
            ["decimalThreshold"] = -1,
            ["anyUnit"] = false,
            ["style"] = "texturedIcon",
            ["onlyShowMissing"] = false,
        },
    }

    E.global["unitframe"]["buffwatch"]["SHAMAN"] = {
        -- Riptide
        [61301] = {
            ["sizeOverride"] = indicatorSize,
            ["style"] = "texturedIcon",
            ["decimalThreshold"] = 1,
            ["point"] = "TOPRIGHT",
        },
        -- Power Word: Shield
        [48066] = {
            ["enabled"] = true,
            ["sizeOverride"] = 10,
            ["point"] = "TOP",
            ["xOffset"] = 0,
            ["yOffset"] = 0,
            ["style"] = "texturedIcon",
            ["id"] = 48066,
            ["color"] = {
                ["r"] = 1,
                ["g"] = 0,
                ["b"] = 0,
            },
            ["anyUnit"] = true,
            ["onlyShowMissing"] = false,
        },
        -- Earthliving
        [52000] = {
            ["sizeOverride"] = indicatorSize,
            ["style"] = "texturedIcon",
            ["xOffset"] = -(indicatorSize+1),
            ["decimalThreshold"] = 1,
            ["point"] = "TOPRIGHT",
            ["onlyShowMissing"] = false,
        },
        -- Ancestral Fortitude
        --[[[16237] = {
            ["enabled"] = false,
            ["anyUnit"] = true,
            ["point"] = "TOPRIGHT",
            ["xOffset"] = -19,
            ["displayText"] = true,
            ["style"] = "texturedIcon",
            ["decimalThreshold"] = 1,
            ["color"] = {
                ["r"] = 1,
                ["g"] = 0.86274509803922,
                ["b"] = 0,
            },
            ["sizeOverride"] = 15,
            ["onlyShowMissing"] = false,
        },]]--
        -- Earth Shield
        [49284] = {
            ["sizeOverride"] = indicatorSize,
            ["point"] = "BOTTOMRIGHT",
            ["decimalThreshold"] = 1,
            ["color"] = {
                ["r"] = 1,
                ["g"] = 1,
                ["b"] = 1,
            },
            ["anyUnit"] = false,
            ["style"] = "texturedIcon",
            ["onlyShowMissing"] = false,
        },
    }

    E.global["unitframe"]["buffwatch"]["DRUID"] = {
        -- Wild Growth
        [53251] = {
            ["sizeOverride"] = indicatorSize,
            ["style"] = "texturedIcon",
            ["color"] = {
                ["b"] = 0.72549019607843,
                ["g"] = 0,
                ["r"] = 1,
            },
            ["point"] = "BOTTOMRIGHT",
            ["xOffset"] = -(indicatorSize+1),
            ["textColor"] = {
                ["g"] = 0.90196078431373,
                ["b"] = 0,
            },
        },
        -- Lifebloom
        [48451] = {
            ["sizeOverride"] = indicatorSize,
            ["style"] = "texturedIcon",
            ["decimalThreshold"] = 0,
            ["color"] = {
                ["b"] = 0,
                ["g"] = 0,
                ["r"] = 1,
            },
            ["anyUnit"] = false,
            ["textColor"] = {
                ["g"] = 0.90196078431373,
                ["b"] = 0,
            },
            ["point"] = "TOPRIGHT",
        },
        -- Rejuvenation
        [48441] = {
            ["sizeOverride"] = 15,
            ["style"] = "texturedIcon",
            ["textColor"] = {
                ["g"] = 0.90196078431373,
                ["b"] = 0,
            },
            ["color"] = {
                ["b"] = 1,
                ["g"] = 0.75686274509804,
                ["r"] = 0,
            },
            ["decimalThreshold"] = -1,
            ["point"] = "BOTTOMRIGHT",
            ["onlyShowMissing"] = false,
        },
        -- Regrowth
        [48443] = {
            ["sizeOverride"] = indicatorSize,
            ["style"] = "texturedIcon",
            ["point"] = "TOPRIGHT",
            ["xOffset"] = -(indicatorSize+1),
            ["decimalThreshold"] = -1,
            ["textColor"] = {
                ["g"] = 0.90196078431373,
                ["b"] = 0,
            },
        },
        -- Shield
        [48066] = {
            ["enabled"] = true,
            ["anyUnit"] = true,
            ["point"] = "TOP",
            ["xOffset"] = 0,
            ["yOffset"] = 0,
            ["style"] = "texturedIcon",
            ["id"] = 48066,
            ["sizeOverride"] = 10,
            ["color"] = {
                ["b"] = 0,
                ["g"] = 0,
                ["r"] = 1,
            },
            ["onlyShowMissing"] = false,
        },
    }

    E.db.unitframe.units.raid10.debuffs.priority = "Blacklist,BLACKLIST: Debuff Indicators,RaidDebuffs_VoA,RaidDebuffs_OS,RaidDebuffs_Naxx,RaidDebuffs_EoE,RaidDebuffs_Ulduar,RaidDebuffs_ToGC,RaidDebuffs_ICC,RaidDebuffs_RS,Dispellable"
    E.db.unitframe.units.raid25.debuffs.priority = "Blacklist,BLACKLIST: Debuff Indicators,RaidDebuffs_VoA,RaidDebuffs_OS,RaidDebuffs_Naxx,RaidDebuffs_EoE,RaidDebuffs_Ulduar,RaidDebuffs_ToGC,RaidDebuffs_ICC,RaidDebuffs_RS,Dispellable"
    E.db.unitframe.units.raid40.debuffs.priority = "Blacklist,BLACKLIST: Debuff Indicators,RaidDebuffs_VoA,RaidDebuffs_OS,RaidDebuffs_Naxx,RaidDebuffs_EoE,RaidDebuffs_Ulduar,RaidDebuffs_ToGC,RaidDebuffs_ICC,RaidDebuffs_RS,Dispellable"
    E.db.unitframe.units.party.debuffs.priority = "Blacklist,RaidDebuffs_VoA,RaidDebuffs_OS,RaidDebuffs_Naxx,RaidDebuffs_EoE,RaidDebuffs_Ulduar,RaidDebuffs_ToGC,RaidDebuffs_ICC,RaidDebuffs_RS,Dispellable"
    E.db.unitframe.units.raidpet.debuffs.priority = "Blacklist,RaidDebuffs_VoA,RaidDebuffs_OS,RaidDebuffs_Naxx,RaidDebuffs_EoE,RaidDebuffs_Ulduar,RaidDebuffs_ToGC,RaidDebuffs_ICC,RaidDebuffs_RS,Dispellable"

end

function MUI:ClassColorsDB()
    if not IsAddOnLoaded("!ClassColors") then return end

    ClassColorsDB = ClassColorsDB  or {}
    ClassColorsDB.DEATHKNIGHT = {
        b = 0.2509803921568627,
        colorStr = "ffff3f3f",
        g = 0.2509803921568627,
        r = 1,
    }

end

function MUI:LoadPlugins()
    MUI:ClassColorsDB()

    local plugins = {
        ["AddOnSkins"] = IsAddOnLoaded("ElvUI_AddOnSkins"),
        ["Enhanced"] = IsAddOnLoaded("ElvUI_Enhanced"),
        ["DataText Bar 2"] = IsAddOnLoaded("ElvUI_DTBars2"),
    }

    if plugins["AddOnSkins"] then
        E.db.addOnSkins.dbmTemplate = "Transparent"
        E.db.addOnSkins.dbmFontOutline = "NONE"
        E.db.addOnSkins.dbmFont = MUI:GetProfileFont()
        E.db.addOnSkins.omenTemplateGloss = true
        E.db.addOnSkins.embed.rightWindow = "Omen"
        E.db.addOnSkins.embed.leftWindow = "Details"

        if MUI:GetProfileResolution() == 'FULL_HD' then

            E.db.addOnSkins.dbmBarHeight = 27
            E.db.addOnSkins.dbmFontSize = 12
            E.db.addOnSkins.embed.leftWindowWidth = 190

        end
    end
    
    if plugins["DataText Bar 2"] then

        E.db.dtbars = E.db.dtbars or {}
        E.db.dtbars.DTB2_DBT2_LeftBottomBar = E.db.dtbars.DTB2_DBT2_LeftBottomBar or {}
        E.db.dtbars.DTB2_DBT2_RightBottomBar = E.db.dtbars.DTB2_DBT2_RightBottomBar or {}

        E.db.dtbars.DTB2_DBT2_LeftBottomBar.enable = true
        E.db.dtbars.DTB2_DBT2_LeftBottomBar.growth = "HORIZONTAL"
        E.db.dtbars.DTB2_DBT2_LeftBottomBar.combatHide = false
        E.db.dtbars.DTB2_DBT2_LeftBottomBar.transparent = true
        E.db.dtbars.DTB2_DBT2_LeftBottomBar.mouseover = false
        E.db.dtbars.DTB2_DBT2_LeftBottomBar.vehicleHide = false
        E.db.dtbars.DTB2_DBT2_LeftBottomBar.border = true

        E.db.dtbars.DTB2_DBT2_RightBottomBar.enable = true
        E.db.dtbars.DTB2_DBT2_RightBottomBar.growth = "HORIZONTAL"
        E.db.dtbars.DTB2_DBT2_RightBottomBar.combatHide = false
        E.db.dtbars.DTB2_DBT2_RightBottomBar.transparent = true
        E.db.dtbars.DTB2_DBT2_RightBottomBar.mouseover = false
        E.db.dtbars.DTB2_DBT2_RightBottomBar.vehicleHide = false
        E.db.dtbars.DTB2_DBT2_RightBottomBar.border = true

        if MUI:GetProfileResolution() == 'FULL_HD' then

            E.db.dtbars.DTB2_DBT2_RightBottomBar.width = 232
            E.db.dtbars.DTB2_DBT2_RightBottomBar.height = 23
            E.db.dtbars.DTB2_DBT2_LeftBottomBar.width = 396
            E.db.dtbars.DTB2_DBT2_LeftBottomBar.height = 22
            
        end

    end

    if plugins["Enhanced"] then
        E.db.enhanced.map.fogClear.enable = true
        E.db.enhanced.general.trainAllSkills = true
        E.db.enhanced.general.showQuestLevel = true
        E.db.enhanced.general.altBuyMaxStack = true
        E.db.enhanced.general.hideZoneText = true
        E.db.enhanced.character.desaturateCharacter = true
        E.db.enhanced.character.desaturateInspect = true
        E.db.enhanced.character.companionBackground = true
        E.db.enhanced.character.inspectBackground = true
        E.db.enhanced.character.characterBackground = true
        E.db.enhanced.character.desaturateCompanion = true
        E.db.enhanced.character.petBackground = true
        E.db.enhanced.character.animations = true
        E.db.enhanced.blizzard.takeAllMail = true
        E.db.enhanced.tooltip.itemQualityBorderColor = true
        E.db.enhanced.tooltip.tooltipIcon.enable = true
        E.db.enhanced.chat.dpsLinks = true
        E.db.enhanced.equipment.font = MUI:GetProfileFont()
        E.db.enhanced.equipment.fontOutline = "OUTLINE"
        E.db.enhanced.equipment.enable = true
		E.db.enhanced.blizzard.errorFrame.enable = true
		E.db.enhanced.blizzard.errorFrame.font = "SFUIDisplayCondensed-Bold"
		E.db.enhanced.blizzard.errorFrame.fontSize = 13
		E.db.enhanced.nameplates.classCache = true

        E.db.enhanced.minimap.location = true
        E.db.enhanced.minimap.buttonGrabber.mouseover = true
        E.db.enhanced.minimap.buttonGrabber.buttonsPerRow = 10
        E.db.enhanced.minimap.buttonGrabber.buttonSpacing = -1
        E.db.enhanced.minimap.buttonGrabber.insideMinimap.xOffset = 0
        E.db.enhanced.minimap.buttonGrabber.insideMinimap.yOffset = -1
        E.db.enhanced.minimap.buttonGrabber.insideMinimap.position = "BOTTOM"

        if MUI:GetProfileResolution() == 'FULL_HD' then

            E.db.enhanced.equipment.fontSize = 12

        end
    end

    local chat_error_msg = false
    for pluginName, enabled in pairs(plugins) do
        if not enabled then
            if not chat_error_msg then
                chat_error_msg = string.format("Couldn't find next plugins: |cff00c3ff%s|r", pluginName)
            else
                chat_error_msg = string.format("%s, |cff00c3ff%s|r", chat_error_msg, pluginName)
            end
        end
    end

    if chat_error_msg then
        chat_error_msg = string.format("%s. Please, download and enable them in-game. After that re-install the layout again to get all the features!", chat_error_msg)
        DEFAULT_CHAT_FRAME:AddMessage("|cffff0000MerfinUI Installation:|r")
        DEFAULT_CHAT_FRAME:AddMessage(chat_error_msg)
    end
    
end

function MUI:PrivateDB()

    E.private.general.chatBubbles = "backdrop"
    E.private.general.namefont = MUI:GetProfileFont()
    E.private.general.normTex = MUI:GetProfileTexture()
    E.private.general.glossTex = MUI:GetProfileTexture()
    E.private.general.chatBubbleFont = MUI:GetProfileFont()
    E.private.general.chatBubbleName = false
    E.private.general.dmgfont = MUI:GetProfileFont()
    E.private.general.selectQuestReward = true
    E.private.nameplates.enable = false

    if E.private.enhanced then
        E.private.enhanced.deathRecap = true
        E.private.enhanced.character = E.private.enhanced.character or {}
        E.private.enhanced.character.modelFrames = true
        E.private.enhanced.character.player = E.private.enhanced.character.player or {}
        E.private.enhanced.character.player.orderName2 = ""
        E.private.enhanced.character.player.collapsedName1 = E.private.enhanced.character.player.collapsedName1 or {}
        E.private.enhanced.character.player.collapsedName2 = E.private.enhanced.character.player.collapsedName2 or {}
        E.private.enhanced.character.player.collapsedName2.DEFENSES = false
        E.private.enhanced.character.player.collapsedName2.RANGED_COMBAT = false
        E.private.enhanced.character.player.collapsedName2.ITEM_LEVEL = false
        E.private.enhanced.character.player.collapsedName2.RESISTANCE = false
        E.private.enhanced.character.player.collapsedName2.SPELL_COMBAT = false
        E.private.enhanced.character.player.collapsedName2.MELEE_COMBAT = false
        E.private.enhanced.character.player.collapsedName2.BASE_STATS = false
        E.private.enhanced.character.enable = true
        E.private.enhanced.minimapButtonGrabber = true
        E.private.enhanced.animatedAchievementBars = true
    end

    if MUI:GetProfileResolution() == 'FULL_HD' then

        E.private.general.chatBubbleFontSize = 10

    end

end

function MUI:GlobalDB()
    ElvDB.global = ElvDB.global or {}
    ElvDB.global.general = ElvDB.global.general or {}

    E.global.unitframe.raidDebuffIndicator = {
        ["otherFilter"] = "Debuff Indicators",
        ["instanceFilter"] = "Debuff Indicators",
    }

    E.global.dtbars = E.global.dtbars or {}
    E.global.dtbars.DTB2_DBT2_LeftBottomBar = E.global.dtbars.DTB2_DBT2_LeftBottomBar or {}
    E.global.dtbars.DTB2_DBT2_LeftBottomBar.strata = "HIGH"
    E.global.dtbars.DTB2_DBT2_LeftBottomBar.point = "CENTER"
    E.global.dtbars.DTB2_DBT2_LeftBottomBar.anchor = "CENTER"
    E.global.dtbars.DTB2_DBT2_LeftBottomBar.slots = 2
    E.global.dtbars.DTB2_DBT2_LeftBottomBar.hide = false
    E.global.dtbars.DTB2_DBT2_RightBottomBar = E.global.dtbars.DTB2_DBT2_RightBottomBar or {}
    E.global.dtbars.DTB2_DBT2_RightBottomBar.strata = "HIGH"
    E.global.dtbars.DTB2_DBT2_RightBottomBar.point = "CENTER"
    E.global.dtbars.DTB2_DBT2_RightBottomBar.anchor = "CENTER"
    E.global.dtbars.DTB2_DBT2_RightBottomBar.slots = 2
    E.global.dtbars.DTB2_DBT2_RightBottomBar.hide = false

    local DB = E:GetModule('DTBars2')
    DB:CreateFrames()
    DB:MoverCreation()

    if MUI:GetProfileResolution() == 'FULL_HD' then

        ElvDB.global.general.UIScale = 0.7111111111111111

    end

end

function MUI:ImportElvUI(layout)

    local profileName = 'MerfinUI (' .. layout .. ') (' .. addonTable.ScreenHeight .. ') v' .. addonTable.Version
    E.data:SetProfile(profileName)

    MUI:GlobalDB()
    MUI:PrivateDB()
    MUI:LoadPlugins()

    db.movers(layout)
    db.general()
    db.auras()
    db.bags()
    db.chat()
    db.databars()
    db.datatext()
    db.tooltip()
    db.actionbars()
    db.unitframes(layout)
    db.nameplates()
    db.filters()

    E:UpdateAll(true)

    addonTable:PluginInstallStepComplete('ElvUI ' .. profileName)

end
