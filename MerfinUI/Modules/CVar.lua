local addonName, addonTable = ...
local E, L, V, P, G = unpack(ElvUI)
local SetCVar = SetCVar

local PallyPowerDB = function()
  if not IsAddOnLoaded('PallyPower') then
    return
  end

  PallyPowerDB['profiles'] = PallyPowerDB['profiles'] or {}
  PallyPowerDB['profiles'][addonTable.MerfinProfileName] = {
    ['auras'] = false,
    ['cBuffNeedAll'] = {
      ['b'] = 0.5,
      ['t'] = 0.8,
      ['g'] = 0.5,
      ['r'] = 0.5,
    },
    ['cBuffNeedSome'] = {
      ['t'] = 0.8,
      ['g'] = 0.5,
      ['r'] = 0.5,
    },
    ['rfbuff'] = false,
    ['cBuffGood'] = {
      ['b'] = 0.06,
      ['t'] = 0.8,
      ['g'] = 0.06,
      ['r'] = 0.06,
    },
    ['cBuffNeedSpecial'] = {
      ['b'] = 0.5,
      ['t'] = 0.8,
      ['g'] = 0.5,
      ['r'] = 0.5,
    },
    ['disable'] = false,
  }

  PallyPowerDB['currentProfile'] = PallyPowerDB['currentProfile'] or {}
  PallyPowerDB['currentProfile'][addonTable.AceProfileName] = addonTable.MerfinProfileName

end

function MUI:Set_CVars()
	local CVars = {
		["autoLootDefault"] = 1,
		["cameraPivot"] = 1,
		["cameraSmoothStyle"] = 0,
		["cameraDistanceMax"] = 50,
		["cameraPitchMoveSpeed"] = 70,
		["cameraYawMoveSpeed"] = 160,
		["CombatLogPeriodicSpells"] = 0,
		["chatStyle"] = "classic",
		["scriptErrors"] = 1,
		["showTutorials"] = 0,
		["showItemLevel"] = 1,
		["ShowAllSpellRanks"] = 0,
		["showNewbieTips"] = 0,
		["UnitNameNonCombatCreatureName"] = 0,
		["UnitNameFriendlyTotemName"] = 1,
		["UnitNameFriendlyGuardianName"] = 1,
		["UnitNameEnemyTotemName"] = 1,
		["UnitNameEnemyGuardianName"] = 1,
		['nameplateShowEnemies'] = 1,
		['nameplateShowFriends'] = 1,
		['nameplateShowFriendlyPets'] = 0,
		['nameplateShowFriendlyTotems'] = 1,
		['nameplateShowFriendlyGuardians'] = 0,
		["UnitNameNPC"] = 1,
		["UnitNameOwn"] = 0,
		["alwaysShowActionBars"] = 1,
		["ShowVKeyCastbar"] = 1
	}
	for CVar, variable in pairs(CVars) do
		SetCVar(CVar, variable)
	end

	PallyPowerDB()

	addonTable:PluginInstallStepComplete("Account Settings")
end