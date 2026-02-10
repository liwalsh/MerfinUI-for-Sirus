local addonName, addonTable = ...
local E, L, V, P, G = unpack(ElvUI)
local AB = E:GetModule('ActionBars')
local UF = E:GetModule('UnitFrames')
local LSM = LibStub:GetLibrary("LibSharedMedia-3.0")
local individualUnits = { 'player', 'pet', 'pettarget', 'target', 'targettarget', 'targettargettarget', 'focus', 'focustarget' }
local groupUnits = { 'party', 'raid10', 'raid25', 'raid40' }
local customTexts = { 'UnitHealth', 'UnitName', 'UnitPower', 'DeadGhostStatus', 'OfflineStatus' }
function MUI:GetActionBarsSettings()
    local mouseover = E.private.MUI.general.profileSettings.actionbars.showMouseover
    local showGrid = E.private.MUI.general.profileSettings.actionbars.showGrid
    return mouseover, showGrid
end
function MUI:GetProfileFont()
    local profileFont = E.private.MUI.general.profileSettings.media.font
    return profileFont or addonTable.Font
end
function MUI:GetProfileTexture()
    local profileTexture = E.private.MUI.general.profileSettings.media.texture
    return profileTexture or addonTable.Texture
end
function MUI:GetDarkThemeColors()
    local color = E.private.MUI.general.layout.dark.color
    local backdropColor = E.private.MUI.general.layout.dark.backdrop
    local dead = E.private.MUI.general.layout.dark.dead
    return color, backdropColor, dead
end
function MUI:GetPlayerCastBar()
    return E.private.MUI.general.profileSettings.unitframes.playerCastBar
end
function MUI:SetTransparency()
    local transp = E.private.MUI.general.profileSettings.unitframes.transparentHealth
    E.db.unitframe.colors.transparentHealth = transp
    UF:Update_AllFrames()
end
function MUI:GetBlacklist(info)
    return E.private.MUI.general.profileSettings.blacklist[info]
end
function MUI:GetMediaPath(mediaType, key)
    local hashTable = LSM:HashTable(mediaType)
    if not hashTable then return '' end
    return hashTable[key]
end
function MUI:ActionBarsSettings()
    local mouseover, showGrid = MUI:GetActionBarsSettings()
    for i = 1, 6 do
        E.db.actionbar["bar"..i].mouseover = mouseover
        E.db.actionbar["bar"..i].showGrid = showGrid
    end
    E.db.general.totems = E.db.general.totems or {}
    E.db.actionbar.barPet.mouseover = mouseover
    E.db.actionbar.microbar.mouseover = mouseover
    E.db.actionbar.stanceBar.mouseover = mouseover
    E.db.general.totems.mouseover = mouseover
    E.db.actionbar.barPet.showGrid = showGrid
    E.db.actionbar.microbar.showGrid = showGrid
    E.db.actionbar.stanceBar.showGrid = showGrid
    E.db.general.totems.showGrid = showGrid
    local AB = E:GetModule("ActionBars")
    AB:UpdateButtonSettings()
end
function MUI:ActionBarsVisibility(isAlways)
    local mouseover = not isAlways
    E.private.MUI.general.profileSettings.actionbars.showMouseover = mouseover
    for i = 1, 6 do
        E.db.actionbar["bar"..i].mouseover = mouseover
    end
    E.db.general.totems = E.db.general.totems or {}
    E.db.actionbar.barPet.mouseover = mouseover
    E.db.actionbar.microbar.mouseover = mouseover
    E.db.actionbar.stanceBar.mouseover = mouseover
    E.db.general.totems.mouseover = mouseover
    local AB = E:GetModule("ActionBars")
    AB:UpdateButtonSettings()
end
function MUI:ChangeTheme(theme)
    if theme == 'Dark' then
        for unitFrame in pairs(E.db.unitframe.units) do
            E.db.unitframe.units[unitFrame].colorOverride = "FORCE_OFF"
        end
        E.db.unitframe.colors.useDeadBackdrop = true
        E.db.unitframe.colors.transparentHealth = true
        local color, backdropColor, dead = MUI:GetDarkThemeColors()
        E.db.unitframe.colors.health.b = color.b
        E.db.unitframe.colors.health.g = color.g
        E.db.unitframe.colors.health.r = color.r
        E.db.unitframe.colors.health_backdrop.b = backdropColor.b
        E.db.unitframe.colors.health_backdrop.g = backdropColor.g
        E.db.unitframe.colors.health_backdrop.r = backdropColor.r
        E.db.unitframe.colors.health_backdrop_dead.b = dead.b
        E.db.unitframe.colors.health_backdrop_dead.g = dead.g
        E.db.unitframe.colors.health_backdrop_dead.r = dead.r
        E.db.unitframe.units['player'].customTexts.UnitName.text_format = "[namecolor][name:abbrev:medium]"
        E.db.unitframe.units['party'].customTexts.UnitName.text_format = "[namecolor][name]"
        E.db.unitframe.units['raid10'].customTexts.UnitName.text_format = "[namecolor][name:veryshort]"
        E.db.unitframe.units['raid25'].customTexts.UnitName.text_format = "[namecolor][name:veryshort]"
        E.db.unitframe.units['raid40'].customTexts.UnitName.text_format = "[namecolor][name:veryshort]"
        E.db.unitframe.units['boss'].customTexts.UnitName.text_format = "[namecolor][name:abbrev:short]"
        E.db.unitframe.units['arena'].customTexts.UnitName.text_format = "[namecolor][name:abbrev:short]"
		E.db.unitframe.units['target'].customTexts.UnitName.text_format = "[namecolor][name:abbrev:medium]"
		E.db.unitframe.units['targettarget'].customTexts.UnitName.text_format = "[namecolor][name:abbrev:medium]"
        E.db.unitframe.units['focus'].customTexts.UnitName.text_format = "[namecolor][name:abbrev:veryshort]"
		MUI:ImportDetails('DARK')
    elseif theme == 'Normal' then
        for unitFrame in pairs(E.db.unitframe.units) do
            E.db.unitframe.units[unitFrame].colorOverride = "FORCE_ON"
        end
        E.db.unitframe.colors.useDeadBackdrop = false
        E.db.unitframe.colors.transparentHealth = false
        E.db.unitframe.colors.health.b = 0.17254901960784
        E.db.unitframe.colors.health.g = 0.17254901960784
        E.db.unitframe.colors.health.r = 0.1921568627451
        E.db.unitframe.colors.health_backdrop.b = 0.23137254901961
        E.db.unitframe.colors.health_backdrop.g = 0.23137254901961
        E.db.unitframe.colors.health_backdrop.r = 0.27058823529412
        E.db.unitframe.colors.health_backdrop_dead.b = 0.46274509803922
        E.db.unitframe.colors.health_backdrop_dead.g = 0.46274509803922
        E.db.unitframe.colors.health_backdrop_dead.r = 0.51764705882353
        E.db.unitframe.units['player'].customTexts.UnitName.text_format = "[name:abbrev:medium]"
        E.db.unitframe.units['party'].customTexts.UnitName.text_format = "[name]"
        E.db.unitframe.units['raid10'].customTexts.UnitName.text_format = "[name:veryshort]"
        E.db.unitframe.units['raid25'].customTexts.UnitName.text_format = "[name:veryshort]"
        E.db.unitframe.units['raid40'].customTexts.UnitName.text_format = "[name:veryshort]"
        E.db.unitframe.units['boss'].customTexts.UnitName.text_format = "[name:abbrev:short]"
        E.db.unitframe.units['arena'].customTexts.UnitName.text_format = "[name:abbrev:short]"
		E.db.unitframe.units['target'].customTexts.UnitName.text_format = "[name:abbrev:medium]"
		E.db.unitframe.units['targettarget'].customTexts.UnitName.text_format = "[name:abbrev:medium]"
        E.db.unitframe.units['focus'].customTexts.UnitName.text_format = "[name:abbrev:veryshort]"
		MUI:ImportDetails('NORMAL')
    end
    local UF = E:GetModule("UnitFrames")
    UF:Update_AllFrames()
    addonTable:PluginInstallStepComplete(theme .." Theme")
end
function MUI:SetDefaultLayout()
    E.private.MUI.general.layout.dark.color = { r = 0.25098039215686, g = 0.22352941176471, b = 0.22352941176471, a = 1 }
    E.private.MUI.general.layout.dark.backdrop = { r = 0.83137254901961, g = 0.69803921568627, b = 0.69803921568627, a = 1 }
    E.private.MUI.general.layout.dark.dead = { r = 1, g = 0.25098039215686, b = 0.25098039215686, a = 1 }
end
function MUI:SetDefaults()
    E.private.MUI.general.profileSettings.media.font = addonTable.Font
    E.private.MUI.general.profileSettings.media.texture = addonTable.Texture
    E.private.MUI.general.profileSettings.actionbars.showMouseover = true
    E.private.MUI.general.profileSettings.actionbars.showGrid = false
    E.private.MUI.general.profileSettings.blacklist.movers = false
    E.private.MUI.general.profileSettings.blacklist.actionBars = false
    MUI:ActionBarsSettings()
end
local WarmaneRealms = {
    ['Lordaeron']            = true,
    ['Icecrown']             = true,
    ['Onyxia']               = true,
    ['Blackrock [PvP only]'] = true,
}
function MUI:IsWarmane()
    local realmName = addonTable.RealmName
    if WarmaneRealms[realmName] then
        return true
    else
        return false
    end
end
function MUI:SetActualVersion()
    local Version = GetAddOnMetadata(addonName, "Version")
	E.global.MUI.install_version = Version
	E.private.MUI.install_version = Version
    DEFAULT_CHAT_FRAME:AddMessage('|cffffff00MerfinUI:|r profile version was changed to recent v' .. Version)
end
local fontSizeAdd = {
    ['SFUIDisplayCondensed-Semibold'] = -1,
}
function MUI:SetFontSize(default)
    local font = MUI:GetProfileFont()
    local add = fontSizeAdd[font]
    if add then
        return default + add
    end
    return default
end
