local addonName, addonTable = ...
local E, L, V, P, G = unpack(ElvUI)
local SetCVar = SetCVar

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

    addonTable:PluginInstallStepComplete("Account Settings")
end