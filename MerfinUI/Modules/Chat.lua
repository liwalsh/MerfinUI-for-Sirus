local addonName, addonTable = ...
local E, L, V, P, G = unpack(ElvUI)
local CH = E:GetModule('Chat')
local _G = _G
local ipairs = ipairs
local SetCVar = SetCVar
local FCF_SetWindowName = FCF_SetWindowName
local FCF_OpenNewWindow = FCF_OpenNewWindow
local FCF_ResetChatWindows = FCF_ResetChatWindows
local FCFDock_SelectWindow = FCFDock_SelectWindow
local FCF_SetChatWindowFontSize = FCF_SetChatWindowFontSize
local ChatFrame_AddMessageGroup = ChatFrame_AddMessageGroup
local ChatFrame_RemoveMessageGroup = ChatFrame_RemoveMessageGroup
local ChatFrame_RemoveAllMessageGroups = ChatFrame_RemoveAllMessageGroups
local JoinChannelByName = JoinChannelByName
local ChatFrame_RemoveChannel = ChatFrame_RemoveChannel
local ChatFrame_AddChannel = ChatFrame_AddChannel
local localizedChannels = {
    ['ruRU'] = {
        ['Общий']            = true,
        ['Торговля']         = true,
        ['ОборонаЛокальный'] = true,
        ['ПоискСпутников']   = true,
    },
}
if MUI:IsWarmane() and localizedChannels[addonTable.L] then
    localizedChannels[addonTable.L]['Global'] = true
end
function MUI:SetupChat()
    FCF_ResetChatWindows()
    FCF_OpenNewWindow()
    FCF_OpenNewWindow()
    FCF_OpenNewWindow()
    FCF_OpenNewWindow()
    local fontSize = 15
	for _, name in ipairs(_G.CHAT_FRAMES) do
		local frame = _G[name]
		local id = frame:GetID()
        if E.private.chat.enable then
            CH:UpdateChatTabs()
		end
		FCF_SetChatWindowFontSize(nil, frame, fontSize)
		if id == 1 then
			FCF_SetWindowName(frame, 'GNL')
		elseif id == 2 then
			FCF_SetWindowName(frame, 'CL')
		elseif id == 3 then
			FCF_SetWindowName(frame, 'LT')
		elseif id == 4 then
			FCF_SetWindowName(frame, 'GLD')
		elseif id == 5 then
			FCF_SetWindowName(frame, '/W')
        elseif id == 6 then
            FCF_SetWindowName(frame, 'GLB')
        end
    end
	chatGroup = {"SAY", "EMOTE", "YELL", "WHISPER", "PARTY", "PARTY_LEADER", "RAID", "RAID_LEADER", "RAID_WARNING", "BATTLEGROUND", "BATTLEGROUND_LEADER", "GUILD", "OFFICER", "ACHIEVEMENT", "GUILD_ACHIEVEMENT"}
	for i = 1, MAX_WOW_CHAT_CHANNELS do
		tinsert(chatGroup, "CHANNEL"..i)
	end
	for _, v in ipairs(chatGroup) do
		ToggleChatColorNamesByClassGroup(true, v)
	end
    local chats = { 'LOOT', 'MONEY'}
    ChatFrame_RemoveAllMessageGroups(_G.ChatFrame3)
    for _, k in ipairs(chats) do
        ChatFrame_AddMessageGroup(_G.ChatFrame3, k)
    end
    local chats = { 'GUILD', 'OFFICER', 'GUILD_ACHIEVEMENT'}
    ChatFrame_RemoveAllMessageGroups(_G.ChatFrame4)
    for _, k in ipairs(chats) do
        ChatFrame_AddMessageGroup(_G.ChatFrame4, k)
    end
    local chats = { 'WHISPER', 'WHISPER_INFORM' }
    ChatFrame_RemoveAllMessageGroups(_G.ChatFrame5)
    for _, k in ipairs(chats) do
        ChatFrame_AddMessageGroup(_G.ChatFrame5, k)
    end
    local chats = {  'GLOBAL', 'GENERAL' }
    ChatFrame_RemoveAllMessageGroups(_G.ChatFrame6)
        for _, k in ipairs(chats) do
        ChatFrame_AddMessageGroup(_G.ChatFrame6, k)
    end
    FCFDock_SelectWindow(_G.GENERAL_CHAT_DOCK, _G.ChatFrame1)
    ChatFrame_RemoveMessageGroup(_G.ChatFrame1, 'GENERAL')
    ChatFrame_RemoveMessageGroup(_G.ChatFrame1, 'GLOBAL')
    ChatFrame_RemoveMessageGroup(_G.ChatFrame1, 'LOOT')
    ChatFrame_RemoveMessageGroup(_G.ChatFrame1, 'MONEY')
    if localizedChannels[addonTable.L] then
        for channelName in pairs(localizedChannels[addonTable.L]) do
            JoinChannelByName(channelName)
            ChatFrame_RemoveChannel(_G.ChatFrame1, channelName)
            ChatFrame_AddChannel(_G.ChatFrame6, channelName)
        end
    end
    addonTable:PluginInstallStepComplete("Chat Settings")
end