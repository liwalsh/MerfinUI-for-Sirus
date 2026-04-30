local print = print
local ReloadUI = ReloadUI
local stformat = string.format
local _, addonTable = ...
local E, L = unpack(ElvUI)
local PI = E:GetModule('PluginInstaller')

function addonTable:Print(msg)
	print(stformat('%s: %s', addonTable.Name, msg))
end

E.PopupDialogs.MUI_RELOAD = {
	text = L['Reload required. Continue?'],
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = ReloadUI,
	whileDead = 1,
	hideOnEscape = false,
}

local function DeleteModified()
  if not E.private.MUI.automatation.deleteFill then
    return
  end
  hooksecurefunc(StaticPopupDialogs.DELETE_GOOD_ITEM, 'OnShow', function(frame)
    frame.editBox:SetText(DELETE_ITEM_CONFIRM_STRING)
  end)
end

function MUI:PLAYER_ENTERING_WORLD(_, isInitial, isReload)
  DeleteModified()
end

function MUI:RegisterEvents()
  MUI:RegisterEvent('PLAYER_ENTERING_WORLD')
end

local function UpdateAllTotemBordersToBlack()

    for i = 1, 12 do
        local button = _G["MultiCastActionButton"..i]
        if button and button.SetBackdropBorderColor then
            button:SetBackdropBorderColor(0, 0, 0)
        end
    end

    for i = 1, 4 do
        local button = _G["MultiCastSlotButton"..i]
        if button and button.SetBackdropBorderColor then
            button:SetBackdropBorderColor(0, 0, 0)
        end
    end

    local buttons = {
        MultiCastSummonSpellButton,
        MultiCastRecallSpellButton,
        MultiCastFlyoutFrameOpenButton,
        MultiCastFlyoutFrameCloseButton
    }

    for _, button in ipairs(buttons) do
        if button and button.SetBackdropBorderColor then
            button:SetBackdropBorderColor(0, 0, 0)
            if button.backdrop then
                button.backdrop:SetBackdropBorderColor(0, 0, 0)
            end
        end
    end

    if ElvUI_Totems and ElvUI_Totems.bar then
        for i = 1, MAX_TOTEMS do
            if ElvUI_Totems.bar[i] then
                ElvUI_Totems.bar[i]:SetBackdropBorderColor(0, 0, 0)
            end
        end
    end
end

local eventFrame = CreateFrame("Frame")
	eventFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
	eventFrame:RegisterEvent("PLAYER_TOTEM_UPDATE")
	eventFrame:RegisterEvent("ACTIONBAR_UPDATE_COOLDOWN")
	eventFrame:SetScript("OnEvent", function()
    UpdateAllTotemBordersToBlack()
end)

hooksecurefunc("MultiCastFlyoutFrame_ToggleFlyout", function()
    C_Timer:After(0.1, UpdateAllTotemBordersToBlack)
end)