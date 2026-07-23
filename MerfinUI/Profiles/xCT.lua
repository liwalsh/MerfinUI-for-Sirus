local addonName, addonTable = ...
local E, L = unpack(ElvUI)

function MUI:Import_xCT(layout)
	if layout == 'Blizzard' then
		SetCVar('CombatDamage', 1)
		SetCVar('CombatLogPeriodicSpells', 1)
		SetCVar('PetMeleeDamage', 1)
		SetCVar('CombatHealing', 1)
		SetCVar('fctCombatState', 1)
		_G['COMBAT_TEXT_SHOW_COMBAT_STATE'] = '1'
		SetCVar('fctDodgeParryMiss', 1)
		_G['COMBAT_TEXT_SHOW_DODGE_PARRY_MISS'] = '1'
		SetCVar('fctDamageReduction', 1)
		_G['COMBAT_TEXT_SHOW_RESISTANCES'] = '1'
		SetCVar('fctFriendlyHealers', 1)
		_G['COMBAT_TEXT_SHOW_FRIENDLY_NAMES'] = '1'

		if IsAddOnLoaded('xCT+') then
			DisableAddOn('xCT+')
		end

		addonTable:PluginInstallStepComplete('Blizzard Combat Text')

		return	
	end

	if not IsAddOnLoaded('xCT+') then
		DEFAULT_CHAT_FRAME:AddMessage('|cffbefc03MerfinUI:|r ' .. L['xCT+ addon not found'])
		return
	end

  local mainFont = MUI:GetProfileFont()

  xCTSavedDB['profiles'] = xCTSavedDB['profiles'] or {}
  xCTSavedDB['profileKeys'] = xCTSavedDB['profileKeys'] or {}

  local profileName = 'MerfinUI (' .. layout .. ') (' .. addonTable.ScreenHeight .. ') v' .. addonTable.Version

	xCTSavedDB['profiles'][profileName] = {
		['megaDamage'] = {
			['thousandSymbol'] = '|cffFF8000K|r ',
			['billionSymbol'] = '|cffFF0000G|r ',
			['millionSymbol'] = '|cffFF0000M|r ',
		},
		['spells'] = {
			['mergePet'] = true,
			['mergeHideMergedCriticals'] = true,
			['items'] = {
				['Quiver'] = {
					['Quiver'] = false,
					['Ammo Pouch'] = false,
				},
				['Weapon'] = {
					['One-Handed Axes'] = false,
					['One-Handed Swords'] = false,
					['Staves'] = false,
					['Crossbows'] = false,
					['Polearms'] = false,
					['One-Handed Maces'] = false,
					['Bows'] = false,
					['Two-Handed Swords'] = false,
					['Miscellaneous'] = false,
					['Fishing Poles'] = false,
					['Two-Handed Maces'] = false,
					['Guns'] = false,
					['Fist Weapons'] = false,
					['Daggers'] = false,
					['Wands'] = false,
					['Thrown'] = false,
					['Two-Handed Axes'] = false,
				},
				['Glyph'] = {
					['Warrior'] = false,
					['Paladin'] = false,
					['Shaman'] = false,
					['Rogue'] = false,
					['Mage'] = false,
					['Warlock'] = false,
					['Priest'] = false,
					['Hunter'] = false,
					['Death Knight'] = false,
					['Druid'] = false,
				},
				['Trade Goods'] = {
					['Other'] = false,
					['Elemental'] = false,
					['Herb'] = false,
					['Jewelcrafting'] = false,
					['Metal & Stone'] = false,
					['Parts'] = false,
					['Devices'] = false,
					['Leather'] = false,
					['Armor Enchantment'] = false,
					['Materials'] = false,
					['Enchanting'] = false,
					['Cloth'] = false,
					['Explosives'] = false,
					['Meat'] = false,
					['Weapon Enchantment'] = false,
				},
				['Miscellaneous'] = {
					['Other'] = false,
					['Reagent'] = false,
					['Mount'] = false,
					['Junk'] = false,
					['Holiday'] = false,
					['Pet'] = false,
				},
				['Recipe'] = {
					['Tailoring'] = false,
					['Blacksmithing'] = false,
					['Alchemy'] = false,
					['First Aid'] = false,
					['Book'] = false,
					['Cooking'] = false,
					['Jewelcrafting'] = false,
					['Fishing'] = false,
					['Engineering'] = false,
					['Leatherworking'] = false,
					['Inscription'] = false,
					['Enchanting'] = false,
				},
				['Consumable'] = {
					['Other'] = false,
					['Elixir'] = false,
					['Food & Drink'] = false,
					['Potion'] = false,
					['Scroll'] = false,
					['Flask'] = false,
					['Bandage'] = false,
					['Item Enhancement'] = false,
				},
				['Gem'] = {
					['Simple'] = false,
					['Blue'] = false,
					['Meta'] = false,
					['Prismatic'] = false,
					['Purple'] = false,
					['Green'] = false,
					['Yellow'] = false,
					['Orange'] = false,
					['Red'] = false,
				},
				['version'] = 1,
				['Projectile'] = {
					['Arrow'] = false,
					['Bullet'] = false,
				},
				['Armor'] = {
					['Totems'] = false,
					['Shields'] = false,
					['Librams'] = false,
					['Miscellaneous'] = false,
					['Leather'] = false,
					['Idols'] = false,
					['Mail'] = false,
					['Plate'] = false,
					['Cloth'] = false,
					['Sigils'] = false,
				},
				['Quest'] = {
					['Quest'] = false,
				},
				['Container'] = {
					['Bag'] = false,
					['Mining Bag'] = false,
					['Soul Bag'] = false,
					['Gem Bag'] = false,
					['Engineering Bag'] = false,
					['Herb Bag'] = false,
					['Inscription Bag'] = false,
					['Leatherworking Bag'] = false,
					['Enchanting Bag'] = false,
				},
			},
			['mergeDontMergeCriticals'] = false,
			['merge'] = {
				[980] = {
				['enabled'] = false,
				},
				[20153] = {
				['enabled'] = false,
				},
				[172] = {
				['enabled'] = false,
				},
				[348] = {
				['enabled'] = false,
				},
			},
		},
		['frames'] = {
			['general'] = {
				['showDispells'] = false,
				['showPartyKills'] = false,
				['showDebuffs'] = false,
				['font'] = mainFont,
				['showHonorGains'] = false,
				['showInterrupts'] = false,
				['showRepChanges'] = false,
				['showBuffs'] = false,
				['showLowManaHealth'] = false,
			},
			['outgoing'] = {
				['fontShadowOffsetX'] = 1,
				['enableFontShadow'] = false,
				['fontShadowOffsetY'] = -1,
				['enableOverhealing'] = false,
				['font'] = mainFont,
				['enableOutHeal'] = false,
				['enableOutAbsorbs'] = false,
				['insertText'] = 'top',
				['enableHots'] = false,
			},
			['loot'] = {
				['enableFontShadow'] = false,
				['font'] = mainFont,
				['enabledFrame'] = false,
				['Y'] = 226,
				['X'] = 5,
			},
			['power'] = {
				['enabledFrame'] = false,
			},
			['critical'] = {
				['secondaryFrame'] = 2,
				['enabledFrame'] = false,
			},
			['healing'] = {
				['enableFontShadow'] = false,
				['font'] = mainFont,
				['enableRealmNames'] = false,
				['showFriendlyHealers'] = false,
				['enableClassNames'] = false,
				['fontSize'] = 13,
				['enabledFrame'] = false,
				['fontJustify'] = 'RIGHT',
				['Y'] = 213,
				['X'] = -403,
			},
			['procs'] = {
				['fontSize'] = 17,
				['enabledFrame'] = false,
				['Y'] = 71,
				['font'] = mainFont,
				['X'] = 8,
			},
			['damage'] = {
				['font'] = mainFont,
				['fontSize'] = 15,
				['enabledFrame'] = false,
				['Y'] = -417,
				['X'] = -412,
			},
			['class'] = {
				['colors'] = {
				['comboPoints'] = {
					['color'] = {1, 0.82, 0,},
				},
				['comboPointsMax'] = {
					['color'] = {0, 0.82, 1,},
				},
				},
				['enabledFrame'] = false,
			},
		},
		['dbVersion'] = '4.6.1',
		['spellFilter'] = {
			['listHealing'] = {
				['15290'] = false,
			},
			['listSpells'] = {
				['15290'] = false,
			},
			},
			['SpellColors'] = {
			['64'] = {
				['color'] = {1, 0.5, 1,},
			},
			['1'] = {
				['color'] = {[3] = 0,},
			},
			['2'] = {
				['color'] = {nil, 0.9, 0.5,},
			},
			['4'] = {
				['color'] = {nil, 0.5, 0,},
			},
			['8'] = {
				['color'] = {0.3, [3] = 0.3,},
			},
			['16'] = {
				['color'] = {0.5, 1, 1,},
			},
			['32'] = {
				['color'] = {0.5, 0.5,},
			},
		},
	}

	if layout == 'Tank' then
		local healing = xCTSavedDB['profiles'][profileName]['frames']['healing']
		healing.enabledFrame = true
	end

	if MUI:GetProfileResolution() == 'QUAD_HD' then
		xCTSavedDB.profiles[profileName].frames.general.Y = 400
		xCTSavedDB.profiles[profileName].frames.general.X = 0
		xCTSavedDB.profiles[profileName].frames.general.fontSize = 16
		xCTSavedDB.profiles[profileName].frames.outgoing.Width = 169
		xCTSavedDB.profiles[profileName].frames.outgoing.Height = 120
		xCTSavedDB.profiles[profileName].frames.outgoing.fontSize = 16
		xCTSavedDB.profiles[profileName].frames.outgoing.iconsSize = 24
		xCTSavedDB.profiles[profileName].frames.critical.iconsSize = 24

		if layout == 'DPS' or layout == 'Tank' or layout == 'DPS/Tank' then
			xCTSavedDB.profiles[profileName].frames.outgoing.Y = -427
			xCTSavedDB.profiles[profileName].frames.outgoing.X = 340
			xCTSavedDB.profiles[profileName].frames.outgoing.enableOutHeal = false
		elseif layout == 'Healer' then
			xCTSavedDB.profiles[profileName].frames.outgoing.Y = -473
			xCTSavedDB.profiles[profileName].frames.outgoing.X = 868
			xCTSavedDB.profiles[profileName].frames.outgoing.enableOutHeal = true
		end

		if layout == 'Tank' then
			local healing = xCTSavedDB['profiles'][profileName]['frames']['healing']
			healing.Width = 275
			healing.fontSize = 14
			healing.Y = -279
			healing.X = -580
			healing.Height = 104
		end

	elseif MUI:GetProfileResolution() == 'FULL_HD' then
		xCTSavedDB.profiles[profileName].frames.general.Y = 300
		xCTSavedDB.profiles[profileName].frames.general.X = 0
		xCTSavedDB.profiles[profileName].frames.general.fontSize = 14
		xCTSavedDB.profiles[profileName].frames.outgoing.Width = 167
		xCTSavedDB.profiles[profileName].frames.outgoing.Height = 128
		xCTSavedDB.profiles[profileName].frames.outgoing.fontSize = 14
		xCTSavedDB.profiles[profileName].frames.outgoing.iconsSize = 20
		xCTSavedDB.profiles[profileName].frames.critical.iconsSize = 20

		if layout == 'DPS' or layout == 'Tank' or layout == 'DPS/Tank' then
			xCTSavedDB.profiles[profileName].frames.outgoing.Y = -361
			xCTSavedDB.profiles[profileName].frames.outgoing.X = 299
			xCTSavedDB.profiles[profileName].frames.outgoing.enableOutHeal = false
		elseif layout == 'Healer' then
			xCTSavedDB.profiles[profileName].frames.outgoing.Y = -448
			xCTSavedDB.profiles[profileName].frames.outgoing.X = 587
			xCTSavedDB.profiles[profileName].frames.outgoing.enableOutHeal = true
		end

		if layout == 'Tank' then
			local healing = xCTSavedDB['profiles'][profileName]['frames']['healing']
			healing.Width = 216
			healing.fontSize = 13
			healing.Y = -215
			healing.X = -510
			healing.Height = 90
		end

	end

	xCTSavedDB['profileKeys'][addonTable.AceProfileName] = profileName

	addonTable:PluginInstallStepComplete('xCT+')
end