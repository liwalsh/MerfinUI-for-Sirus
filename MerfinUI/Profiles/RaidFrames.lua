local addonName, addonTable = ...
local DisableAddOn = DisableAddOn or C_AddOns.DisableAddOn
local EnableAddOn = EnableAddOn or C_AddOns.EnableAddOn

local E, L, V, P, G = unpack(ElvUI)

local ElvUiFramesVisibility = function(show)
  E.db.unitframe.units = E.db.unitframe.units or {}

  E.db.unitframe.units.party = E.db.unitframe.units.party or {}
  E.db.unitframe.units.party.enable = show

  E.db.unitframe.units.raid1 = E.db.unitframe.units.raid1 or {}
  E.db.unitframe.units.raid1.enable = show

  E.db.unitframe.units.raid2 = E.db.unitframe.units.raid2 or {}
  E.db.unitframe.units.raid2.enable = show

  E.db.unitframe.units.raid3 = E.db.unitframe.units.raid3 or {}
  E.db.unitframe.units.raid3.enable = show
end

local reso

local GetLayoutName = function(layout, scenario)
  return string.format('%s: %s || %s', layout, scenario, reso)
end

local LoadCellDebuffs = function()
  CellDB = CellDB or {}
  CellDB['raidDebuffs'] = {
    [316] = {
      ['general'] = {
        [110963] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [130857] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [688] = {
        [115291] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [115309] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [115297] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
    [324] = {
      [738] = {
        [120778] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [727] = {
        [121442] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [121447] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      ['general'] = {
        [119354] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [131655] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [121114] = {
          ['order'] = 9,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [119840] = {
          ['order'] = 8,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [121116] = {
          ['order'] = 5,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [120938] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [122259] = {
          ['order'] = 6,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [121421] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [122246] = {
          ['order'] = 7,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [693] = {
        [119941] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
    [317] = {
      [726] = {
        [132226] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [117949] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [132222] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [679] = {
        [116322] = {
          ['order'] = 5,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [130774] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116281] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [125206] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [130395] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116199] = {
          ['order'] = 6,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116304] = {
          ['order'] = 8,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116301] = {
          ['order'] = 7,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      ['general'] = {
        [121245] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [118566] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116606] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116990] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [689] = {
        [116784] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116417] = {
          ['glowOptions'] = { { 0.95, 0.95, 0.32, 1 }, 9, 0.25, 8, 2 },
          ['trackByID'] = false,
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['glowType'] = 'None',
        },
        [131788] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116942] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [131790] = {
          ['order'] = 5,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [131792] = {
          ['order'] = 6,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [687] = {
        [117708] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [118303] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [118135] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [118048] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [682] = {
        [122151] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116161] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116278] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [677] = {
        [116525] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116550] = {
          ['order'] = 5,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116778] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [116829] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [117485] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
    [303] = {
      [649] = {
        [111600] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [111723] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      ['general'] = {
        [115436] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [115419] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [676] = {
        [107122] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [675] = {
        [106933] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [655] = {
        [107268] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
    [311] = {
      [656] = {
        [113653] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      ['general'] = {
        [113690] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [113855] = {
          ['order'] = 5,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [128164] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [114011] = {
          ['order'] = 6,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [128232] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [113436] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [654] = {
        [112955] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [660] = {
        [114056] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [114004] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
    [312] = {
      [686] = {
        [107087] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [107200] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      ['general'] = {
        [126115] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [113022] = {
          ['order'] = 6,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [106929] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [131241] = {
          ['order'] = 8,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [112999] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [115509] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [115630] = {
          ['order'] = 7,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [113020] = {
          ['order'] = 5,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [657] = {
        [118961] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [673] = {
        [107140] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [685] = {
        [106827] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [127576] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [130701] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [106872] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
    [320] = {
      [742] = {
        [122752] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [122777] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [123011] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [709] = {
        [125786] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [129147] = {
          ['order'] = 5,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [120629] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [119086] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [119985] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = true,
        },
      },
      [683] = {
        [125760] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [111850] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [117353] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [729] = {
        [123121] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      ['general'] = {
        [125760] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [125758] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [130115] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
    [313] = {
      [335] = {
        [106113] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [658] = {
        [107110] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [118540] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [106841] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [106823] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      ['general'] = {
        [106653] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [110125] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [114803] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [110099] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
    [321] = {
      [698] = {
        [119684] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      ['general'] = {
        [121185] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [118903] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [120562] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [690] = {
        [118963] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [708] = {
        [119946] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [120160] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [123655] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
    [246] = {
      [663] = {
        [114038] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [665] = {},
      ['general'] = {
        [114873] = {
          ['order'] = 5,
          ['condition'] = { 'None' },
          ['trackByID'] = true,
        },
        [111594] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [111801] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [114479] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [111813] = {
          ['order'] = 6,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [114860] = {
          ['order'] = 7,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [114493] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [666] = {
        [115350] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [111585] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = true,
        },
      },
      [659] = {
        [111631] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [111610] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [684] = {
        [113141] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
    [302] = {
      ['general'] = {
        [106648] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [114548] = {
          ['order'] = 5,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [114381] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [106546] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [106851] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
    [330] = {
      [737] = {
        [125502] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [121949] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [744] = {
        [123474] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [123017] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [713] = {
        [122835] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [741] = {
        [121881] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [122064] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [743] = {
        [123707] = {
          ['order'] = 5,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [123788] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [124849] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [124777] = {
          ['order'] = 6,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [125390] = {
          ['order'] = 4,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [124863] = {
          ['order'] = 3,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      [745] = {
        [122740] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [122761] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
      ['general'] = {
        [123175] = {
          ['order'] = 1,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
        [123017] = {
          ['order'] = 2,
          ['condition'] = { 'None' },
          ['trackByID'] = false,
        },
      },
    },
  }
end

local LoadCellIndicators = function()
  local layouts = {
    GetLayoutName('DPS/Tank', 'Raid40'),
    GetLayoutName('DPS/Tank', 'Party'),
    GetLayoutName('DPS/Tank', 'Raid10-25'),
    GetLayoutName('Healer', 'Party'),
    GetLayoutName('Healer', 'Raid40'),
    GetLayoutName('Healer', 'Raid10-25'),
  }

  for _, layout in ipairs(layouts) do
    if CellDB.layouts[layout] then
      local layoutOpt = CellDB.layouts[layout]
      for _, options in ipairs(layoutOpt.indicators) do
        if options.name == 'Class (Major)' then
          options.trackByName = true
          options.auras = {
            8936,
            774,
            33763,
            48438,
            102351,
            102352,
            48504,
            119611,
            132120,
            124081,
            115175,
            125950,
            53563,
            17,
            114908,
            139,
            41635,
            974,
            61295,
            51945,
            114163,
          }
        end
      end
    end
  end
end

function MUI:ApplyCellColorTheme(theme)
  if not E:IsAddOnEnabled('Cell') then
    DEFAULT_CHAT_FRAME:AddMessage('|cffbefc03MerfinUI:|r You need to enable Cell!')
    return
  end

  local ChangeIndicatorNameColor = function(theme)
    for _, layout in pairs(CellDB.layouts) do
      if layout.indicators then
        for i = 1, #layout.indicators do
          local indicator = layout.indicators[i]
          if indicator.indicatorName == 'nameText' then
            indicator.color = theme == 'DARK' and { 'class_color', { 1, 1, 1 } } or { 'custom_color', { 1, 1, 1 } }
          elseif indicator.indicatorName == 'roleIcon' and type(indicator.roleTexture) == 'table' then
            indicator.roleTexture = theme == 'DARK'
                and {
                  'mattui',
                  'Interface\\AddOns\\ElvUI\\Core\\Media\\Textures\\Tank.tga',
                  'Interface\\AddOns\\ElvUI\\Core\\Media\\Textures\\Healer.tga',
                  'Interface\\AddOns\\ElvUI\\Core\\Media\\Textures\\DPS.tga',
                }
              or {
                'blizzard3',
                'Interface\\AddOns\\ElvUI\\Core\\Media\\Textures\\Tank.tga',
                'Interface\\AddOns\\ElvUI\\Core\\Media\\Textures\\Healer.tga',
                'Interface\\AddOns\\ElvUI\\Core\\Media\\Textures\\DPS.tga',
              }
          end
        end
      end
    end
  end

  CellDB.appearance = CellDB.appearance or {}
  CellDB.appearance.lossColor = CellDB.appearance.lossColor or {}
  CellDB.appearance.barColor = CellDB.appearance.barColor or {}

  if theme == 'NORMAL' then
    CellDB.appearance.barAlpha = 1
    CellDB.appearance.bgAlpha = 0.5
    CellDB.appearance.lossAlpha = 0.8

    CellDB.appearance.barColor[1] = 'class_color'
    CellDB.appearance.barColor[2] = { 0.8200000077486038, 0.6794286782569355, 0.6794286782569355 }

    CellDB.appearance.lossColor[1] = 'custom'
    CellDB.appearance.lossColor[2] = { 0.1899999976158142, 0.1574285924106084, 0.1574285924106084 }

    ChangeIndicatorNameColor('NORMAL')
  else
    CellDB.appearance.barAlpha = 0.8
    CellDB.appearance.bgAlpha = 0.5
    CellDB.appearance.lossAlpha = 0.8

    CellDB.appearance.barColor[1] = 'custom'
    CellDB.appearance.barColor[2] = { 0.1803921568627451, 0.1607843137254902, 0.1607843137254902 }

    CellDB.appearance.lossColor[1] = 'custom'
    CellDB.appearance.lossColor[2] = { 0.8200000077486038, 0.6794286782569355, 0.6794286782569355 }

    -- Changing color of Name
    ChangeIndicatorNameColor('DARK')
  end
end

local ImportCell = function(layout)
  if not E:IsAddOnEnabled('Cell') then
    DEFAULT_CHAT_FRAME:AddMessage('|cffbefc03MerfinUI:|r You need to enable Cell!')
    return
  end

  reso = (MUI:GetProfileResolution() == 'QUAD_HD' and 'Quad HD')
    or (MUI:GetProfileResolution() == 'FULL_HD' and 'Full HD')

  local profileString = ''


    if MUI:GetProfileResolution() == 'QUAD_HD' then
      if layout == 'DPS/Tank' then
        profileString =
          '!CELL:272:ALL!T3vd8Tr1rEVrXNDCOxs8hetsGS4ucXcBNytSbmjqLSKJDITLrwjHYh17kPvEfrwAz3vo4WN1eCbc0pCcj97Jy4612JJ7WKYrAjnGlKYLYhpmuq0woadfkF0V8r71JYXDZ82DLwTRTJnXHslX)IDKE77nVzM38M5)mpPDzUXfl3LqCbz(ypRCe(Wc(sQYjvSy0WcbsKiMAujLMJ3qIUdYRYnC3cXt2EcLOQrteFq1esDgmHQAIU7tvMpUsSOQIslGp2w57vzJsH5vfCLuMxrCuH48bJLMACslejU7yr3224Ld7NpA4w5JZ3LGmN0cmFL25Lv7LBKiY8Dl0UC0eYrv7TENUBLpACoNd0Huc1yr7suv05WxqYOH2cRlfLOkQIbJLi0weclkvCsfHgIjKSjb(yQIACKSO08To7CsZxvN3mKTlAq3(ceWxRT4TXaYEeIWNmMQCaFTJVNzPJgkPci1beUc1KYckfms4OkscX8lC5jfuu7xwtEdlkhwiyYirukqwnA3cjsQwYWq3LsexriqVsc1Whl2qDflXw9jHZPIt)kIrJlCzR3bt7owvvR2bdtr4lQn3HuHPsVxBRqxR3b8JlsjKswsoZ1Tkqk3yhgtJnIHtU7EBvGBOqI8Y8HaP2J76KMFm(EbEWvs1eDS1OQHeD2)OWIQAmHUKtKmE4vVkPf7P9owza(4BPEwuXS6vXEvxf7fKKpmBtE8lHlhslktxORpM6HBLeXs4g1Uzr3QRv6uYMUvVQkRPwtdmOmTrsf(5rDhzf0gQPwsfdJVOtGRdNiHmPI(jNgOtPRgKtNunPC43Za(Ts43QGFxj87QivhuwONOkcdlxZzvtLYcXe4vegjumWgPbEf1OX7s5(NvU170pQ5QoOkpy)RQ9UAaJ6U6kMaANx)qylvcRjru97NQz3(vxVtsTK6CsolYzxp5Ci1V9REmnd(auQa0(u6dwgOR)K1emuIU7orCYAiR1(a9hkgVIsWoAYvRUABa0wL2zytGs3GM1VGsszzHq4IozndgmAxE0TMgtZSYDm(qBjgyXVO8z7FqqTiexjApcklNSMccQzHwqFkXJkjjOQCImlxMhw5LtgNZDOeHfUIz)zQSswJlZgIpoBqb2i4cglVkROQQKs9RCLDb7PtgSkqowPq8WcYXf2sIv2aOkwPQSGWk7g0NcYRSkd6uaqtqsylBLWeXI9ZJ7l(0nU6PFPx8QU01gpAmw)cXsWhEJnVIYlJvnblSRqqLvvmQIbhvasPqWUYWj2ACwf1EJHmNmB0qjIVs6oC2OXdhnepiskSROSn51FGMBWvlLvbBzn0IVg2qzLxqdEBPLoBWNVw84BZT1zhb(0T4LDTgxMobO7owW6Inz8OQSbtc(YIZgncROeRKGCiH4QSNh7kINS7GcY1ZUQkRwNOn6YJ3o9TXaD2KxxTeOPoB3R)g82waG6GWrPmF4WSkjX1tklRGszhQ8QjvyBoe2ObZZUIGGukWhVcqlOYd6MeXJ1R(80XgBTvFT1zZn4RTo60BBUC3IxpWKeHpMIqbg6AfbyNj4AJDRrdRkYYdlGIcOJrQctZqW08PXogZQ(e53BdbC1262ylU83zdBSdWZxNn3MhqHgWNFTPpRPDJW0gh2ofh8mRWgrgMapuMx5uz9W3n4lNTvbWWWKW1g09a8Dvz1vTk2yrHn4YgczBn3Wgc4ADJR8jl0DIEeyrVaGCQMuInS28OnPQIcS6UUzteH(w0)IXkPfHmaykeO52bHTvFBYBN(D1SNo7WBGn2ENE8gWvZTKTmgmb4Qrgnkb5uqrP(SmsqTmQjnSo0Nc3(87XR)o7O5lcn1QwBnY0W0jAiWrjOCUs5ky7Qc2GvWYF1vWA3mtNAn4RfF(bYDLRQcwT)v9vtPSIyITQPBGDmSWgfG04scD)qtn3qlEXTdT5Qv8)bltdRQM8T5oxNFFGG3U3aDcBoGjb7Lj7x0WQLObXqNOBjtlKXteVsnlvDYTXo82zln7g3k0GVwB1qjknFi6t8UGn6DPSPOcBf8hEM(XflLi6HhapCbG4IY1ZjwazwIdfwGxv0VGuczvNILme6Jlae(AlcYxK4iXeIOwPAIkLrlBxfSB3TMqDZCL5YnxnTV5g5kRJ25QXDIo4kZth4lAf)ZMX)Sbo)G70TOSErXGaAfXoflaIcZhUxxXd3EYyXwVin6ANARqojvpVcKkulMGq4oqV(kRdIrFz(Bp6vieB9Tp7vv15uBM)EM14Oi8)RP2fK7W0Ge6Wa2nPurYIkHS4Y6wii9cko7NCYo9lH0zBqmCgAaE9XsyDJ2tY0E2C48p9wgiQI7KrJP2CCUbWl1aA0qhwqu1q7dPZsNvro6Blc9UvWYsz02tSvWgO54rsQaHnWPJ8z226za4cznvKojC5F5)gcphji9QKq4BrIjrcpqZXblPEaxkqOiabHqy0LLo8JlZDqyz6SgsdFK)MxxtbirzygBlXb7pn1LpWbg3iHefcTLMJ49kGiukCJilifR3g0DOdiUIaHpmElDa6OxshvRGbGvfiGdylHr0iElqA(P9I1ogHxyRl3Vsi(yc5kJ7eCflgG5lHgB2if0OoAU6dQXT7BUfxYq8jeqRAefGoDL1agP0VuP4vW9GwH20FnWoSNDieGJxnWDC9PiXhcOYNopJxDH5jvIcmTUKLrdFadHQlfkA1HWnP6duCykqkdYmc9DO3tqHfwCiaLlmoEKT7Rhba4iiG9jPlifeKpEirajujJItuhr3MG2mioGeUYJnW4wb(RZ9Cb1exk09rUkoY2aoupgHi5kZJCDKplABUDoY1dyi7RaYnKlPFN3WLoyMiQ3(PCFKs5iS9feTaRmA8bPOWBrOhHyo8tDF5Cik(LoPVPEWgsQOEeaNLXeAZKQ3znaQzg3rsexD9dJ4by1rtVuzipdyvqq0n6YAaCqSiIAsFxuqmyQx)disbU7MxMCBmmJKM7WU2hoiS7dGBE3mg5Z5G6XSHWpogdTiwhG)uQnQBvXVfvEi3mzhRL8fxp5lTyYaIKDoKEmzTjUEIkJ8LbbmJgPxYEguHEn8sJIuZnyyQHOvCa89uFxCbPYVYUL91yJT0CBExVdCBw1NJ2FD4FDn5RJawASgxnUbln1NRgAWB7b86H6GP6ACO)FU941LhR91J)MBBdn32607l(3ZQwho83O3MxxBGhc9Xk3Uxigo0T0T0NhVnGmPvk2pApGkNDoKwYsgReKVqqn)IWkqSCaDI2scE1Ga6IU5vBuwRPQRJClohwdTrgBcYDlTaHirquS9i0P(6JwwEGRHULu71NCJGtyrDQutJavi)BAd1neQrGmK4aHfIfT7OGZGczHD6rfIfwPoT(bUqj3nzFKVxHNXqifCfujHCqJRco90VALKDKlDzVe3TbeL7(meyO50ti96K7NJSZb18JAOeIsUlWhxEK9OTlJ28DhulEnzio5iWEebzLxlytBeTB5K3Sl)(B2N)Ll7bW2VoOf3a6QnWj3URwCbRi1roih5b5cIHmXlI9HtwpKnxW293S3ocSCStdZ53VV1TrVCdb2bbAAdTH(BxU2WXzbHYcba9gGRM2AVbo)E8VXM9OtEyWUb0JBiZBjNVorJKE9wAbgl4IaiCrWFSczpqkYAlZPBBG0WGCmOA6wxKtAeWAHewzC0JXgS0BQWOguBiq99fywtoP3srVWokbC6uE5qysUHq7bnCJYIKDmxYohWpG2inbkbiqjWA5E6tgAM2A)ox6sXzBiSf9eXxFqWEunzuPZS54W6re(qcxIRWH9fx5s8gRNn28L0qczHlPvHWr5VeJC3VemR0Qu7IxQ2PXG0ctqhwntJHbzbJJXKMQfaicgW2SG64Uqnvm6vWlmmD3IrjyOsUP9RAnNMcut150csHq0RGxqQemNcTioTLqndTavD)op1tnddjnF)i0i2gWG3ge1nw1dGUJUwyjyuk2j611wg)pOlJ9NHefsHGtZYzfsqOvaCCgRayt0OAnI9sJcZ1pFmjrEQBSZcO2Ywwg5llQPHkld1E7CqYP1QjYrET0K6Kp5EstQrC1f4(gqYcrD2cLiJIcfAxnipEj34fi7yEuvSPfjJXXRjifrTgxcOI7tByq8PD4a1cZjZ(QrngefWF5K9mKwFPVLSJ8ipzU7oTpO5sUfkUoWXthu3BSin77ZtkkpsrZHzUahoGMFpO9GAj3nhPIWf1oGar(aCc6UffZq0Yj70D7BU(oqw(2qRIRkN5r2ZyupyBgydTzAqD6ILlYpa2tsiyOOYqqC6QAg5zixj8YQJBc1xPbrr(9LqUfW9jZZIGnV)XdF8Wy0spjLPGAeXn(ijlvCekQT4r7MEboYx05nt(sleIl3hGzGISmxhOJz9wjrZDj5qDudwfE1XgYAGHubKt)AWrVlY7N7CbVylWaaz6(ud4ZoxY1ncnjcmBcmRcqspPYNyUN8UMyzYF2eBsEVjK)kYJr5yYIb1S4QihK7kmDfBs3Jum5aChX30GJ4MQC0jAOXuypd20CNsMWBGr2W8XIzMzMJoZuE53xA0tlfzUtIShzn46kKDk7r)vPj1CO5R0bw0gY(greu20c1I18CKUK5dJiCRuKpweY1LcM3hicPmoKkyD6487oMaGl2FdjLX31kFxrdbXetevbSr(JKYebglpCpdWosluRuRPtAa2oiRgkPQiQJ03RwKJ5mfvsY6vyBik8oT6kis2d5KO6by1VFNox8Ib)tVgOoOlwWUmGncQTlpxY7cTwOO2uTyJPQPZ)xF10FCWanV0SNYHPU30NxJTQ3gUyqZzW4cW8pMX29ajKWesrUzTR9qPxyesXuuUPDhAK6k5lcZ5jzsQj7CSa69GvVlgbEArBbFe9KP0UkQUDyePw0Wga2XJvMUA6FOaNOY1ohvJ2GrFsmSyg)(Gf)iACMXLEG6QrcsyqwV4UIW7K42uAVUYUOv(eqJGvWgFfwcwHWMWQosRrvuaxqSUnuE6MFGLC3Axs7kuRmkEJfV4BS4jBFvWq8kQU7fszhmzOO8bSmH2cNSEkEoxsoy4I0PIunqZZ8mPmTFAH1adZ(4bxDOTUBCTduFZvZGyPzB7rF7TL2qyKgWSPyxrR8xwcT4mVhimVhW4i3pKkwie39IP(Wni4fRDb5wGKNGqN4rS89ZVSFv4vL)1)k5FG6Y)Po3LTV8ZFW74vxt()2e5)u8tUeNIPQ6Z)WVr(h4kY)87M8NH3FAGr8YTkO1qvEubnfZkaPmft5PyCs3lof2zLw6Igxx6ubPtfGdGsxkMkG5SY8sX8jbn)OqGwFzYc25GWE6OBdsGKpgK4LXP(Ci0myB5b5Z6hlWMsby(SqYU9vWyiEP2bpcciiverjMWlMQREEUdtJb2OoODYb4i)qDi1KhYey5Feh5H5ipIoKzYH4i)yJU9OCK)doYH5i)et9)XghG2dHjmkPnv3mNO2pU7gYy)1iBBj50hYQDielcKx(sYzuQGaRSnKiwYUJp3b7M)k0EPYcgeYRbmmryXCJGi7GfFA6TkIdGqG9HoGQN8GKHjhKkVqYSL4zfRPmuWhMYfDOzcZqUbgqn4z(9swE)KpNEfci34KwAaYv8SKE1134aUArY1isUwnvl0nS3WG07DkMZMkEPyohQGLIPEWE5CxaUyxtkM1cgzNNoVMIznW7oFgGcfH8CrZ5twKgdEWlift1GbwnW1R71YO7tVwDiBlrgADCj9iUezAPofZzMXCkfZQliftTIAgtgQcuotlDN1nZP)d5MmQuc6x0bMl5TsT4)8obNEMCms2LMZ9DR5CN8LjFfNKVk909iFnS4eI2lob5RRvsc3uuk7H8nj)dIKBNJS3Dtg0sc8K7WAd3P1g(hTuzbY3YAp(NSupbY3otLdiFhtV(7oHLpG8pB4YxREbK)fYD3i5FTotz1tUhiLEY9AorFifDOPVxHSK7ZEE9K)9jjBEiB9JqQ8K9Nvg8KVpqJFaK0o5bo2AtLb6m5XHP9jipPdczcsyM8uzNMmzeTOvN2PrJ5(00e12j5zYkxyYpvZLmsHND9KNJKI88KFwM0Di)8SZOK8liVaM94cxOPLR)ZSZzK8IKxYCwHgD7LtJm5wMfo1VIwAFN6PAIuVAwj5r(LwteZuxF9SZGJ8RM4K2iVr2c9BQLF2cxOPU8wzNvg5TTNog5xdT)BM48Ui)2St3I87i)(5qgl70Pi)xzNlf5Di)boYFK8FBjxjYFcU2)JPeJkv0eK9jmw8udJk5)fzI33ijhY)NwsdichTSgMjNSumZk7SwsX4WssktXPtCQnDZoR8rsXKRPSqkPK7ZecuTSqsX83HdlptG)sXKpzFPW)VatPxKIzUWVNa87Na(9Vh(DEqYeLMozcei081i(0oTHumlGc73irHYMWefOq0nNKWch)KewS1jO4SsnifdgqYxkMteNPkR0wsaPyw44a8pftPwX6NI5KMEa8tXSOSa1NIzXas(umlbiZjd)EkMGWNIzPyhaaJNQPqePykllO6Pyw20aGUgeryHjlCQPyoDTkcoo4tN7eVeEBM0WNHvi36Gsbcv1Xk41Pywj1UEsGvpVSz75z1WyvtowAs19tHUXLn0nkYgesJo6gaiNbqVp39PJekdGqyq2beEt3(jFeb(qJ)oUaFCOb6jRtKzHA9xh0JFAnAooQNzoupFvDuptX8Dsd8zQN1ZHM5q9WzeHECH9SWfsEAre1t1Pr9WnZH6HZgQhgRGE4o2a6H7id6H7JAGE4MiqpCFyc6H7JIGE4MgGEmpD5M10zR2Ru52oQN(cQ)zAvh8dfC0Ka(PSJjGFkLZk4hhODec6POC1Wav4uemOjqp5936GEkAAb6HjnMNXPMCtPkDRDcMkza9yGEOQdBgSdaBjB8oh(n0WeLZCZuDglfpbrjqHmqRIILAVrRLZXYiqMRoJwDOYtRmu5PvfkS4tyjNo3fKPiuPly2Uw2jWIClTIu0QqfOORNSI(pkkZZxtudWZ4)5pXaTd5ByG0zkbZ57EmeMJniu3o3masheMd08ufPtAKm7i3pCRVZHPwyFqQVt2WCaGphzKoAF6hMeKozQRdI3j7JLEIq6y(thW0cPZOghXVbshZNQ)raPJ5JSF6xEhTZHVICYa1zXl(deuNNes0oVPiuNXeb0ohn13HIZba8yboaGo5deQgn3VqC)jmqW4G9aXM8bewdnq4uy64YE6YD6bRXOwoAZ2CMSzl7tzEcbUmUf9rx7H4EO1)HcuACG4uQgqLPh0gewJjCridoE13jdehnWktJtb2sbEOkRcf1H6y)qErg6iJ0bbeHWCq4oZiqDofoeUZF5QVJ(bTMDHsM8IZmvo51jT2p5m3J667mUhBkvkNs2GtsfEYjpkAh9Jv04u30pCpZN7M2HbUKYY(S3sJ0bG)aGI4aepiujkGURIZYPHTDoZN1xPIzbO7yzGwdCMwRmfYgAvMsNVmFuLMQ3faJtREx0ZOudq61kILbRFN75civ0Vj92bfmR2qDJnnw6tPeHrspqZ0QnDGNWsXrpEr6jdAVczMXmMI5tDCqJF8d04rS8yMbnYzfl1mD5XOWjk5dPYJjESO8yFuaZin(4rtPWMoygr0dhLvcB6GzC6mDJ3X)nPZ2sx6hkygNoYWcmJveaBsHqofWmsb1nTGmQv3neQzgSJ6ygRT2JJzKIzCzlBsotWfN9s5I)RKZe8OaXiQO(qaX24bGmZNsm9pKzPbqQJVZYhXm4YxJ1rzGBZ(5uorObLojJVsF2UHg0)mhkTj5dV1XrP9XxuAItxuAh)JU1XlT3hIL2t0wP9ep2uAVS)OBnXW0MGt2mfJBZNP5hvQT3hOp8wzxBp7hJ5htXPDAN2XRT34vBVSojtAnQAp3QR5CQQ2oSwGp1VEr35jnrf4J(5UFnI)nuf(SHumZhLn9ERJumdcq6n1HMo2GaK74ia)locW02FwSln)rmyQyAEO)gSoDtacWJxOUJicWPW3c3JACH0VAPtXVYVZa4cNMt3r5r(s)eHTSLn1ku3eGam9NOFtaal183eykcWYMbqa(UIhtpC38Saa84fQ7VUpC3XT(IZ0aaZ(WD1baUxBaaVRJiaWSoIxRFM90WzrHcQJ8AYbaoZfU9ymaWLyUeGwV3J(rQVcSLKEDu7tFO(s91N13e2JLFFLpcFyoNOVjShDh5TLVjStnO0h)BeYm33d2JLwuZGFJqMMFpypou6pQ99GDM8wSZeGKgHIpZF)8zIastXIpZFZ6zcastHIBfk9mY3d2YSbLgb)uO4hSd9grWI4Wl9i99G1mS4pah9nDEaW4tiu6pM(9GT8Y)RsO0J7xF3ziO063Y0X7kp0BJU9mR6kugxtp7c7IPWGqFNREd1vyx0B((0gpH6kmOPgRPqziHRprMEcdfAyEqdmA9Oo6W(717rnPB0bzFzpHbJeJVNeY(3QmVkOmk5gl5HlA5eMLxkZ9OuNF6Ttkhdekr8W07IQlIC)dOFhaQzpILY8)voyQT(CtXSb4kPyArC2NrDLYmC3yR5LPvOjElDeA6IXMCKPjpf34NSQtSuMN7WwUGALa78ZcAPvOPUSqucZUlLzK6XwNJPooRzToBZ(ZViSPIm30ZWInTGS61sWMMR5MsDz2eUxyNytFISyTwTXTVq)ytZlttbodqyFMBWshFMI6jCL1v6SMDF2MNh7awfJzn7RXQUYz)LYCOG2y73)zTPco05yBgouRw4rOP2TPvEKx3M8()EX2K334eTSoqyASuMNC5264p(ASUGX8OVVnw75)gweGao3em2kTtUgTj8pQtBK7rVuB6Jd)RTWhVJtGH)jpMTX(el12yFCwBYWJVvlS2D6e2B8cNUng(rEi7ln1zzsl(mIa88QS3XhAtKt(IM0Bg4yhZmL9HpNpq3pK7h2xyt2M1SiwxBN1SEc7k0NWI4ETNiHbSM31JLT0X9zNG2VHjO9BcAh0sx47AtPFHjSj82g9TEIupxATNvxzFllD9DkCt7AfqFV3FNT1J9TfBUvGoo8BBRJd)ZT0rpobzAqzlDC1yR797zP13zfqR3XSTU9TOgND5Wf(b)blxGWagapWISPwEGdABX5DUtBI)bUyB7yFNFLnl2FWsSmPVkYJ7)CT6NUCqDCGB0M64abSmVBVOn9QoH(oOpB9DWh0Mog8B923HnoF)xJnoFV3JnR2C(o2CsT)USjF)OATXh7)QSP((r3TfFGfJliK7XYylMUwVDREVrxg7Dd2MNXUqBs2EVcBlMV)TAHNNDXBkCvW(Hx86S13x8RyJIV01BzEdub4I8TUiBCZF6kTj1pxT2i3tvLnn4Zyr1ZTp0N2B9PSn299M2M0dh1ImSRkbn4l97TzONMIzjVV15zBsEVgSm2DvuDVtXar)MFwlx4twoUS8PTrHbJyte376SX5p5jyHBOrYU9VHToE3vAJTFqfBt6DxKLjT4IB8orSap92hpDXZZBJOKTAJOp7ywfzKIK716E3kak(m3Snk(t5SrXxjplJn88IOIBfoqpwv7LxaHPhqw3F2MvCG7v72b7B)205hCL2yO99i223FW1AJhFW7YYE17e9nn8UTnP37lN9y5EyC77(T6LD14W338Sp831YuF9tq8Rp3e0(ow(43(VfA8trdJWKH4FHjGi3zX9uCvad(MNNng8xyfoZ2XooQFBD8LUjlDCxvat1l(0w9CGd)xCs2NhILHRwfex6voxB(tELBX2I1RFp2i3Rh12Q8B8e2mpE9dA1ZbYDVOQnY9I304f5(Lp9JSw4vle05GZYB)lBZs8GQ2eUF4JBJhV9ASnj7nKLjzqEjjbEz(4HeUXLivIXtiKeXvXNxg(IerrqLjOcKGLkFWw96P5n26y4Tvvtp1t2KuXH1VbwtZF04z5XygT6riu0U5JXmaVX9ZA)Xf6rqoDh8Jp4i2OK4OzrhL6Xs8IfFJwaCSEO5jhSlx07h6ylb1U)C7KdFMVrtmDiJBJU0NgmnD(p9ZvWALUJNp9lyKv1UFZlvuRcYrIg345oLBEz2QhlrsvFr8JpFsCzCtxF11ckL03dX9JSTIqJrJftCWmnRXbogoiVC6Bz3b7O7ejufhKE)uTbThki0xR)aGa53ZkZFixUJbILqrrRNeV1305)MRv6BNto5005)lpWlxxzx7Mt)IXOuiZdGGldl7TwTyolgncd6mG5xLo8BU(aoZeL)XlK(ttN)dVl8NBl9lYC)Ogx9Dmk(OoODzHWrP3LHRNtmTME0UtKuravbgp6DOTx7qqRRJVBb0cIJkrPxVo7bPpeJ04dX6BpxO7RUwgMH4dHp5l05VBTEyD7PwWspHv)qFh6mjvsMhEfnhhFSVq7POurwudTat2rwvmygQ5eeNmfWYbQKYWSdejjEd)wNxXcwK5pPyyxKZ8lThNf6QE9NgH4tqqf1nbweO5l(eayfIxUpwsnKZ06tmPwWhGp9fjQSIQ)KXf)))'
      else -- Healer
        profileString =
          '!CELL:272:ALL!T31c8Tr5rEVrXNFrVKyhtCEaztacXkXjXMyhWqGkzjh7eBlJSscLhN3vsR8QezPT7UYjo8OfdyEuAONBQlLRThXW1R9ok9IjL2uAAaxEvkq)WqbrB5amuO8OV8r71Jc0BMVDxPv7ANitEqbI)f7i9TFFZmFZ38nZ)z2xmx38L7siUGmFSNwocFybFjv5KMTy0WcbsKiMAujLMJ3qIUdYRYns3cXt2EcLOQrteFi1esDgmHQAIU7tvMpUsSOQIsZIp2247vzJsH5vfCLuMxruAMQ6eYyOx4qU9fiGVwBXBJbK9ieHpzmv5a(Ah)oZcLMdYC3XIUJDWlh2pF0WTYhNVlbzoPzz(iTZlR2l3OrK57wOD5OjKJQ2B9oD3kF04CohOdPeQXI2LOQOZro)KrdTvwxkkrvufdglrOTkewuA2jveAiMqYMe4JPkQjXYG0AL7CJjeNpyS0QdUXcLubM1be2UAszbLIhnCufjHy(f(0jfuu7xwR7HfLdlemzKikflRgTBHejvlFeO7sjIRieOxjHA4JfBCTHgdhG7EBvGByvGQ(KqTKYok116Da)4IucPKfKxjUvHr5g7WWDflX207Lt)kIrJlSL17GPDhRAfR2bdtz4hQn)HdjYlZhcMvECxxqzHEIQimICnRPMQKfIjWRiinZy89cYLRKQj6yBrvdj6S)rKHPCNqJHtKqwAbOYrqUEwuru9QQQMAzVSlJ98tYhMTjp(LWvaP5A0h6cstM6GBLeXs4g1NbrQwtTKLs)q1RISu)8OEsQISgSPXogyWPgtOl5ejJhUAyKz1WQxvg2II2QxLPH2p50bvp1QIujz1KLb)wf87kGFxj8B1WV1qw9OHIbMfnWROgnExkF)PLF9o9JA4QdQYdBju1(wnGDExDftan9RFySLQa9Dev)(PlCx9LxVtsDK14KCMKZQEs9KZ(QV8X12deGsfG2NCFWQm1KGS2GHs0D3jItwl5CTpq)HIXROeSJMC1QR2ganpPDgS7v6gup(fuskllecx2jRDOGr7YJUb24AwAUJXhARXaJ85viB)dbQaH4kr7rqzjK1wCqnJ2I7tjEujjbvLtKzjY8WcVCY4CUdLiSW2N()uvvXACy2q8XzdkWgbv3S8QSIQQsk1VYv2fSnpzWvaZJvkepSGCCHTMyLnaQIvQkliSYUb9PG8kxHbDkgOjmtyx8kbgXI9ZJ7l60no6PFjx0QUK1gpAmw)cXsWhEJnV0kxmRAcwyJIGkRQyufdjQyKsHG9GHtST4SkQ9gdfoz2OHseFL0n1SrJhoAiEykPWU0fVjV(d0CdUAzXlNDXn0IVg2WIRS4g82slD2GpFT4X3MBRZoc8PAXl7AnomLbOhqwW6Nnz8OQSbtcU3IZgncROeRKGCiH4QSNl7sJNS7GOP3QQQADI2OlpE703gd0ztED1sGM6SDV(BWBBbaQdtokL5dhMvjjUEsfzfCw2HkVAsf2MdHnAi8Slnimlf4JVCqlOYd6MeXJ1RoF6yJT2QV26S5g81whD6TnxUBXRhGjr4JPiuSHUg2zdB8vfy3w0WQIS8WcOOa6lKQW0memXpnXXGR6mYV3gc4QT1TXwC5VZg2yhG36oBUnpGcnGp)ASpl2UrGTXHTtXbNXkSrKbg4Hk8klI1dF3G7B2wfaddttU2GUhGVRQQEfRInwuWXGSXKSTMBydbCTUjC(jl0DIEeyr3iW8unPeByn(OXuvrbw9WnSjIq)k6FWyL0YKmaykeO52HjBR(2K3o97QzpD2H3aBS9o94nGRMBj75yWeGBfz0OeMNckk1NLrcQLrnPH1HolC7ZVhV(7SJMVq0uRAT1itdtNOHapLGY5sLxoBxlNn4Yz5V8LZA3mtNAn4RfF(bYDPRA5SA)R6lNszfXeBtt3a7yyHnkaPXLe6(HMAUHw8IBhAZvR4)dwMgwvn5BZDUo)(GjE7Ed0jS5ayc2lt2VOHvlrdIEDr3sMwiJNiEvAwQ6KBJD4TZwA2nUvObFT2QHsuAMqaP4DbB07sztrf2g4p808Jlwkr0DUdE4caHkLRNtSyY0ehoSaVQOFbPeYQoflFy0hxaiI2wfKVqXrJjerTk1evjJw2UkEq3TMqDZCl2LBUAAFZnYT4oANRg3j6GBXE6a)qR4F2m(NnW5hCNUvL1lkgeaWi2PyXqGz(W96kE42tgl26fPrH7uBfYjz1ZOyPs1IjieUd0RVY6G4VBXF7r3UqS13(0x1koRAZ83ZOghLH)Fn1oR8hHgKqhzWGKkejZRCY8xC3cbPhqXz)Kf50VesNDaX6zObV1hlzHUr7jzApBoCHNEldevXDYOXuBoo3a4HAanAOdliQAO9HWvX0kZrFBvO3TbwwkJ1EITb2anhpssfiSbYosN7y9maSISyfHJWx4N(3rcYrcrpkjm(vKyseHbAooyj1d4sbcfbGkecJUS0bGSf3bHLP1mSgMo)nVUMcq2cdZ4Bnoy)PPU8boW4gnKOqOT2CeVBhIqPWnQSGuSEBq3HoN0mJaHpm(kDa6GJshvR4bGvfiGdylHr0inwS0mt7fRDeFJW2wIFLqaSG8LXDcUIfdG5LqtmBKItuhbA9b1K29wYSlFy(ecOvnIcqNUYA4Iu6NSQ(D3naO8v6trIpe0Jp1cYZTs0Di40Zm71OTlyb5ngULwPDbzyjjz3Xlzui8yqav26a0kskIJGOwK6qR7md1n)216NYSgqg2e5dDbuVBWF7gcIBA86x2dabyDE9hKpEiXeYKs6tYqYjL4zPNZIhsb2t4Ux)WO5ggG(cbM4Xd3xpcaAtqfmGeUW3biQm9HiW6qiweXHPYrJGjKG8nWjQ9ZqzcBERN8DtQGJSW(cIMzvfn(qu01Ti0Jqmh(P(OComfKsN0VupyOivwpcGhXycTzs)6SgaopJ7ijIRU(rWG(S6W8xOmKFbOQfeDJ(LgahelIKMCnxyqmIPx)disbK7MxMCZmmJMw6WU2hoiS7JJRVuTBBuNKIdGBz3mgVZ5q6rQHGoo(g05d5Zt25AjFX1t218jFjrYGdRh4vJX1tsYiVfiQy0i9sULHuOhdp0yitCdwFAGofdsN0kdk7RXgBP528UEh4gOQplT)6W)6AYxhbS0yFE82a2xpwB3vdn4T9aq70gQXH()52Jxx26Rh)n32gAUT1P3x8VRPwho83O3MxxBGda9Xk3Uxien0T0TuJRg3GfInaoPOEz56hDiHkNbhwljiJvcYab1C(bRaXYd0jAlj4rdcqi6MxTrzTMQUoYn5CenifzSji7rAwcrIGqv7rOt9LdTS3G9)DlP2Rp5gbpTI6uPMgbQqUlTH6gINimqyHyr7okyNwkl57kcBNJkelSsDA9d8ts2d57r((LUSHrk4kiSDiOXrbpB6hTk6AE5UBdOihzN5F3gt4DMFggs7c5E4idoKMZsdLWwiFhWrwbKBrBVeT59eulOm57YjhHUps5vc20gr7wo5n7YV)M95FjKRIJCLCYT7QfxWYrDAFL0hNBCpnNSEKyUGT7VzVDeG29(4iFs9pmmybeOPn0g6i1GuaLrmQC10w7naH38gGZVh)BSzpMPTV22qMV63VV1TrVCrsVclnlJLyraBTi4MvHClqYUAlSPBBi10FCEoPrZQfsSKXXaPr94OhJTuP3gHbdOwnGcBaMZjV0BIOhyNLt2HZkReI(XnmAbObhuwKSZsidoa6blnbkbiqjWQ3T0h6weBDy8d6zAV(GGHNAYOsNrZXbfFe(qcxSRWH9fx5I9gRNn28f3qczHlUvHWr5VyJKZV4a8X36ku7IxQ2PWG0sTKoSAMcdZt7DGJHQC2HZfUqtAQwa8fyCyZtuh3bQPIrpcEGrO7pmk2cLcM2HQ1CAkqnolQfKcHOhbpGu5yQcEP1FOTeQzOfOQ3HZfTOmcK0m9JiEyBaJjBqu3ybya6o2AHLGXOqIOhxBz8Nqxg7pdjkLISMM8YsLGiMaM3mwbW2MX0Ae7LgfkXpFmjrEQ7R1au7uoLmZVSOMgyRmu7nZdjNwRMih5vstQt6K6jnPg1vxGdBaGkeNzRuImgoPq7QH4Xd5gpazNZW6IKX441MifrTgxaOI7tByqePD6a1cfLzF1ygdIIJVsYTmSwFPFLqYNSZcgmTxNsi3efUg4QPdQdnwKMxZojfvaPOIykbKWb080bTlvgUy2b4T2heux3bOyqTm5kkdrRKmO723C9DGI8nJwfxwEZGClJt9zTzqm040q60flYKFadNKqWqrLHW20v1mZNHDLWlRoCiuFLgBe5MaVLmKXl)PrmK3Zeb7Dem0INKYuKiI4gFKKx7Oue6iuDeY(OuKzXJ2nTxCKVOZBGSR5aHL7dGmqrpMVd0VSERKTK)cYJ6Ngmr8QJ)J1aNOcmP9Rb587q(B5xc4sBwgGet3NAax25JtWD4CUvo5sp5TZiYK2jVJjrJ8UtQmvMhJYSKLqPzYT88qjQ00vIjDpsXWCutIordTKc7YytlDkzIObwzJWhlMzHPiCtaAiC3PXlTqYbIqojozprvWAfY53DmbHWC(BiPm(Tw57kAiiewIOk4Q41s(RKbX(ca2nXQIi3ISgkELrfbRaAfzXIFoAxY8HruRvjYhlcnBMoWs6aHTbDYC)ZKtseeRcWTmG0inhTAQMovayxHSAOKQIOsm31nY6fmZy3DroabKm3HPqI0QAGiQ03HtNZF(G7Pxb0g0Lkytgigb12KNp5T5OmLYX5BWXMoVF7Lt)Xbd08cZMZJq9UPZ(umLkcokW80njq4ExaW74g76dKqctZeLM1U2hm96IqkMYYxJ9aBMRP5lzWXdONLkRwExPd10sEfL2bQroSWeZXO6PjP1IOrGArdtayppwl5QP)HIuIoVgCmngbM8jXWJzC7d27JQXgJdDG6QrcYqa(JeNSEDLf3uANUYUO1ZeaJGLQg)ewyvHWoYeAy0wJQOaEGyDBOQsBCns3Ahs7iOrifTX8N)1n7d2UQGH4vGSNG8WbdhkGyajtOTYjRNrNZfKhgSiDQhvd08modQm7NwTmWUSpEWrhAk7gxb9JFt5hu4I)nHxvHx1lv4(RRWN4SpL9wyHdDBV85u4VprHpbVM5YcZ2aL(1BoTzYOnGjxXU0w53scTGqVlmvFxyllm3gwfR9H7EXeH4gcCQb5B2cKkvjWkzjh8jCkMLvFHpYRv4(3EHNx3K3b((Pbg2lX68SgQUJoptXSuysMIPYumotXCQOQkh2GLw(Jgxx(tcYFsyJmi)PyQcy6kka3ypcn8uJ6iOj3lh5(0X6sgjdkwYpMJC)CKhWkezYdA05hIJ8WCKFch5rmnQFQPp)OW6RXPc6bLkxb0DUKLXYq1n49XLc90fr6TaYLwGFAs8fpg2hmXzJdEnftUAsjJJOZAhCajGOJr8Rxl56qB0RpFqRDnxYyaSbFzse35qGlQO7asaMpgy8lO(0dJNnenSzH15ykMZGJC9mJqprkghAu63WQNgsuiSiYBueaULIPwrQxd9UI7x)YNFnXLcD3uk1Bb9zu6xrG60rwbSwxlhvwbIOlRsZhGQUseA8eE6tUrJ6aGobCGzk9fOlV)ZoHD4M8cq(YA(T(kOFlWr6)c5Rks(AojFD65F6BK2pI5uVj)RAjC7gXcaJz3KHej32GKB3sAQK)nRn8nS2W)ULuNjFtR94BzjHzY)rMuJj)NM(8DyDKFBtjhtUtd)BAzdt(Vi7PrYW1zkNvYEHKuj3T50yPjGI5Us2N9Swj)Gjlxvmr0dzIQKFyw5Ns2pqJFeKsk5aVsMTgP3q9O22hzEl29MdBIm23LbMi5Xa2(4KFwwjjsiMsoK8ezNsizunFZN2PrdW8K0KsgK8uzL3h5NtE61tEgskYZs(f65rn)5NbAp5xMD2tKFf55qGlZzoMwU(VZo)iYZtEbZzaz0TxmDq3BCAiRFjTuCw0ImrQxoReAi)ARjDyQRVA2zRq(ntEckKxl7j9RRLlYCMJPU8gzNbc5nTN6b53cT)7M8Cmi)(StTG8hi)rrY4zN6a5)j78giVf5pXr(ZK)xl5fq(lWX()mLeqfIzbp9VMJqWiVhYV)MbC9um5rbynPXU0qiBHz5kEVumtlBS4PyC8(JDI5g7MEwOStXKpfB9bHBLx(DBcUffXDkM)b43cGFle(Ti43I1XxNcGxzg9tkMtifZNifZ)ykMzKg4CfPboJH9NPiGKEkPXMLfWXuWQA7eNqqXu4OMbepNjgq88TYOzRbdoft5Mq)MI5eXOAvvvUb4nfZCYgJBkMkqCTPyMBUdMnfZ8YcaBkM5dOwtXSaq)HlhNSj4QPywi2b2umlYec1uml2YcZPK7Gr1rx9oCzbklfZPtlpXeagBz5amZjAv(MnP8xUfSL6yZoCHsMIzLuJ6dkeYzKTSndRggR6GGBK85Ubo9FiB)vi9c(g3HZdC(Klf(WLvc5Yfr0ffv0Pwg5ZmlYNTEYvs6JCvaqOIixbmptXCMK(beBmKBaK7AEqDutuKyRU4um1jMbPfNo8jdmtPyQ(OBW1umRbutNjiyNRbCUumN3bhixkMZ6PtXuVOz4KGpNZg675yb5iq)1kshez19t1DfaFlqzxfYaq1b6lqfbkqtATsqTzj76uobwuTHSMQ6mViCJ36jDiXksHSmzyfTDkAMJw)1Xj6Nw8OJdu8ihqXVUoqXCmNRhDQKT1rCGICgGAMyKIRwhP4tkAGFI7ihqroBafzSItK7OdorUdnorU)EdNi3KHtK7yjorUpGXjYnfWjAMD5FOzNTsZoHafrqH2qksdIQduSVG6xBR2k0QoEXk4oQGx0bAg92CuWCgQRCIbteoXc(OjoXYMs4ezsdtCcQzxovoCTZZPsgSG64Tykrdl4YEeZinbeFzd28rEnkOOJMbsSJsdq0yGoJcyl7QWLbeffyeNvGrgvZZalfItknWie5fsRSaEHJDIkH28YucnRx7Y9BN7ipmyVEL80i(5qHJI1XZo3PDuN76y505(Hrj6OyUaWxt8vgJbSlYTAa56BZLBOUUJJIOUSIO7iaKlOje1vUc5cGxzGQ6yET5(j0nltzixehwqDDOHCPDvACqGCrZifaBLPiDhAixMVkgMsqUgZ4srWaYL5R(GdbKlZxAbt9sZPD9cS88YG5IweYPoMRDwaa7khXCnEraSRdNAZnE5AWUSGlzsdPCybeddBnbGGomz2KceddRpbq8oSz3exWonUL9zdhrlPvNTjVoCuTYKInBcWAH02e8PCgZLgKiYCPsAft8jSodwlAVNcNSAaZvwP8GqVagPJ5Y(jJgrtLdGUOKyUIuSGhjWCDYuCxFGvBo9tiC2v5cKXC408EWQ)2bV6Eh21MBcp9UGnzoz3n5vMdvtzWEzVYAacMkePq30HSH4zo8RSwUfAeRxL(f7SrrdVbrtLmSFUSQwifOh96SEblMkNxbJggnpZSxPto7ZCQ17jU(NkO4Sx9oDyIwldPgmrDOFt0mGwztZZH(frPgR7Pr9qPZGdyAr6OSsFcrURxftQvaQlOLuuFEPxurCr6WdDl9SppbiCNtwiCtX464qC)4he3dzvfPUiFsUPee333vvKc0P8Jrvvu8Orvf)ihcxTcGqb1K3XaeUuqrASZXrFeUM4w(0uZowGWLc)89v5er0Tik3djcxZWvNAaDPchLpakxDeU1w7Xr4E60KOFFE2NNF2lYZ)VNo7ZV)X4cF)m6FYXSzUKI2a6DmR0EMa)CqU67oo4Np(c(rCQc(54x7DhV(EhdRVxUXoXd)67L91EhI(5qF2ttX0WFxxGVC(IV7GuGp7Nu1pEc)50oTJxGVp8uGplxvGzxGpXSlWhwTmeh0xTSBFUzvHV2ZV6AoRvuBhKLEe8UGGlNWHD8lTTJC3dehnVDIocEPTnfVhioQEPTzhh2hMQc1hq3de5WnUlTmsho1HAQCxctlI0HxDOMISl)dN6qPFxhFkNsUDPTL73dezDZdRDrTPHMAQH)cXEzc82KFJbBCpqqbs9(9eTwGMwPuXjTkuF88EGOYk)WimSj8o34idmmZNPS03de6ixUQSVtisEhicNSVvikjhUvimUi7OLPs)C1z5wH4Ozm2JD3keo)Wub94oEb9(aVGEPTNTF1TMlzSyANYh9oBMFeai5hqf0lhaBvH4rQc6DKKz5qb9Yf2XDe5c2lBGK5wb9a3fhK65vHnGKGqFyxpVt6O6fSxbwRN3XpDMFy(c2BcpjSh5RNNgAgtLZtdnt67i2COEEh5cnobiCpOxWEg1Z7oMK65TB9hq64JRh6dn3EMwDLgKP0UykvgnGpty3Vwd0hH(AncgTfuxPYo0ASMsdQ3yXz6jCya5vHqdostlOhfP1GEpOJM89YMHbJeJVNeY(3MmVkO)l)6k)(lBjeMLubZEuQZp9XmLJbcLiEy6Jt15rUNb0F4)0ShXky(BvcCz9GRVnahjftlItFz1vbZiDJTwqMwHM4T0rOPlcBYrMM8m7gdSStScMN6ASCa1QaX5xe0sRqtDzHON6kGH)mpILosygScMrRhBTitdFAtBD2KPNDEytLzUPNIfBAwz1RfGnvI5MsTfBt5N7lIn9jYsGB12C456hBAgzA6PkRNWvvxftB69zJIp6(TkWtB6xHvDLZ(RG5bdAtaFVN22K9bplBC4bB1I0an1UT5)d8Q2MzV7fzBM9ANOfnoHPXky(zlXwhF43ZMC8qxH1vlMN9RzzceW5MGowLnY9qnABY)WoTXHh(sSPpEKFRfM(wobb(N(O2g7JVqBJ9XyTjWp22SiAZEzra(Uk7Rd33Mil6cpOp(UXoMHy9HV1nqxiK7bSITjFtBAeRRptBApUDLYJBrKVDNWE3N70TPqFG7ZUixNfM(zorcdS3BxpA2JM7kNK2VMjP9RhAhKIl4TTP0VGe2KcBJ(ZFIupxATNvxzFdlD9TkDt7APqFVR)GT57E3QLHtj6iVPTooYV0sh94eMtdjBPJRgBD3FxlT(wlfA92MU1TVL140ReoW98NS6CSsqg2)1ztg2FaBclyL9dNNn93p8a2SaERB3MEA)xKTT2V1VXMP99SalYXlJtM9D2wA9QlBtVStqShYNnXEO71Myd(TEZBZMaTVRWMaT79yZIpVVLnNu7RlBI9pUwBYX(UmBALF8DAXh4SXfeYESUBMUwF1wA9Pqxg7Ed24Z4xGTz2U3UT1O37ZBrMN(S3u4va7hE(pRT((8FfBu8fUkl8nWYbxKVXfAtA(lxQTz9ZuRnY9eRWMg8PSO652l6Z4n(K2g7EFDBm9rIAzoSRQan4l8hTfTonfZA((gNRnM8onyzS7QS6ERzde9RFLwoWPwjUSSoBY0p7eSXND)PSXNHImrrYU1VMnYDNvzJC3RInYDNLzHCZE2nE7iWNN0Q1KNLd6IN6gSr0FoNnI(sfmr6XNL32yjBZ2yF6XTQUqPHCxwAn8mIOIBf2Fpwv7vwmHPhyUUVSnR4a3R2Td27(SzwDGvAtm37dyBF)bwRnj)EVdl7vVD0n5idAJP31lM9y5UFC77(S6LD14W37mSp832cRVQjj(11ojT)5wYe3(VhA8tsdJWKH430KqKBF29qdf9I2Jr)cxVfb8Qxb0XX8FO74SXo(6NRTo(RScqAxlhKPN)jTgWAfq4Mx6ST5p5LUrBlwV6ESXKxnQTv5x7XTzE8QhWQNduMFEvBK75To5cGD8xnx7toILo(YLc6CWz5TEZ2SepGQTj3p6XSjJ3An2yYUdzHjdXljjWlZhpKW1TaPYnEFGKiUk(u(0xKikcQmbvGeSu5d2QxpnVXwhhFCUA6DCYMKMDy9NR108hnEaCoUrREecfTB(ymdWB8KT2FCHEeKt3b)4BqInkjoww0rPESq2yjgPL5hR6BbYb7Yf9XKo2sqThB3o5W3eC0Kth24XRl9D)stN3t(mfVwPB7zt)bMbIKeF4oJVRoeRNM8zM)mEIKQ(I4hF8N6Y4rX(QRf0jPFcJ7hLAfHgJglM4qzAwtaCmsqE50p7Ud2r3jsOkkRQ98VxQSwfKJenUXB1k38YSvtKDmg(ogODzHWrPpFFRNtm9CzC6BmImV9b2cwcFTclTggQSVgqZaY4Q0bOZnw3jsQiGYLXl)gAVRnZtxACn1XaXsOOOPdinwFtN3RVwPVzE5LxtN3VE)VyDl(ZS50FOpyczQFp0CO)005D)7c)5lL(dddCDD8DlGwnCuQNEn6mhI(AkkTgpFqCwDTmmdZhcFTxOt9Vq9WA1tmRfEcR(((w05Uu5zEZv0CC812cTNIsLzrP0cWSdTIzOmuZjOGZuBoh4u0KWsFW7Qjudt)S(RTdkrZ8NumSZZzHv0JZsDvV(7vq81fOI6Matc08fFXaSuXpTpwYPsonRVFKAbFD90xKOYkQ(tgx8))'
      end
    elseif MUI:GetProfileResolution() == 'FULL_HD' then
      if layout == 'DPS/Tank' then
        profileString =
          '!CELL:272:ALL!T3xd8Tr11E6jkEJJtBtI)GKqsWdbijwjoo2K4um1qLSKTvITLRSscFeQNrsJ8OezPPZm2HqH(E1azPS99E7pV8YVx7J2smu22nSSBmjSnLMhTUT0cfOxmPHHsPumuOuOF5nV32xF9J9CU3zKgnJTJD(OFr8VifP7CVNVUN75()CUJK4URLR2RugjvX0NunPycPW9RlOuHCQesrZMnTEkfTqzAoBFXe1fgTpPm93vwTu6PYMzy9Sk9elRUE2(guxvmJw6u6Yklwm9Ef3N22vsiQl5RFvrn5XLYiglDoQjOSeK4(tN6wUfr1eretLOdXmI9kPkOSy7xPlrv99jmwsvX(K6snvw1u67RrV(7qmvgbVd1Tsw90P6vwx27OFO(tfFp8(00sPPlhlD247rkHSsf9Rj1CAP(BtsmTUmtIuLvwKtUlOSiDtzZs3UHH9hoA0WD0EWwIQgqkPy)P1vJgUl89CvnE8(1aToQ0nR3VQKwPQIXXbPDXElzPd4TmFn2LNnUHn5HBK4YI41Kud4VbLfLwCFz7x3x)6z7EVP0Jl7D)JQcSVhOXezZQQCjb6Q7AJkMzpnYJIvDBSM63m)TER8T0F608TfiIcApuU489IAGS1d)AztN1pQEXqcx)MjlN(I62iz5revHPbYkhhMh1tl1RA2(ZKOoOhf0WM2OYYluk20gTXG9tUy1emRbzfKvtUe4bp84sHhRcECzWJlNS6yQsdKstAu163s91OkLwsutAS4PH5OMf10tLPxTV0CkUrVraTrQUy6IG)No7D1dov92BAj0pRXrWwQrtovs9ir0uKsN(oUTg9s8swNxY6j10izdKAVJBBcMdxukvaAFjdMiLg6VLGuxS4z7RVSzi1rQ39aJepTOMwSUBZxh(6Ci0xH2zWjuRpWWgrsRFvvj6mlPUHJLQ3asX6pzsTsNib9f(tlgFpPbpUglHF)L8QF0sE1BvzrWmEMELsNTxTDKsAVGmSwLYykOuIUrvqR10z37UJ0vQBwk9w7AUBCdx1MZ)8vwVNYX)V(nV4IhLQXrK(i9lPPFav2AOeYQ6P6tc8yQCuWZtbC6KIcwPv1NumA)18U)r6f4qyfQhP3ikiJULT6XdNhoUCe3pAA9NkE2mQ0HfkrjRP9HsP5V)uP1dLryi8sndEtQ0rgd1xAFibw6Ck3ZG7rAF7nRAcTX7k7ELu5dLjz)Aa)2pXNxI)BzRCE8yNBKMjbibl5J8ZjTiqALEvsB4BrIPqcnuOmq8NbGLNGThwYiLieWEtvy3(JjjQVLryliJeQ12Is6KJBI9Kj7EZWmPHZKgItexwk(EcLm4ndtjAcJPkPKEFndRRta9dwINuvsY6T0bebx0RL00)hMUJcww1gfKlLmh5rsamvoIKswvDVYvocAaIcRL3JK6nipwAPK61ONTgvm(JVspG)oYQVtHv5ZVq9DTZwewv3DjuV)SDlSQaDJVOd8PDIpTnHiGV1E02QSCmi0PCpYLcZJIj2NVmj6cwJTv5r0HOk9eRFiSAgVKvVWshultkffjDTlIB1QIqWd1(Zi4pE2es38C)W1udV1L5JlMHpMeFsCDmVOoVSUUIwJ1wBVqy5(JTbyPqTszsiPMrApzRTzWUvRoysQTpyjPKATBWIoLc0ewmWVQAbgXJ9lG)BCnwxDn30nUXBQPmPsZhb8YftS9qRT6vXRNLh8gL051LtPzjrLIukUPfNxtFFPrHtLhDTQLgKMpvMePIlcQKg)Ax1ocgjAOM91(Qwp)QAU9WnVTvvDPnhS927P5WHBpq4D2zpDh96BpiFtwxMYaChlEy9aF)zsPZZSB8PsYlRWRiPgxkJo)1WV2m93xmyULFJ1uNjrBXxGG9eE7r7PTG(ApAB90vWinhSZOa1bLJszXej416hdjqfznul7wxuVFnE09mVWZV2yGwkjMz9GvqxeSnzb)lt(0927OJWD2tOMd3z39eStF(BpyaGjjftRjvQLTwtcITdU)87nvcDzErycuwc9TOgm2Un24htCS4QjJIeS5O(6S1T3UVi90827gwR0tOodag0OHJWyFbSD7aBZarKZaBUQXNufyqaQWRDP8be7d2oMVdiOLDLRtO7rf7TM62Wg5tNc2zr1sj7muZBlQVwNu9tvQVSdiXJ7db6PE)k8jy8HXuDzjEZDF5ZMK(wCBhRzshkzuWviAOUaLTJW7iypr8fkqpDhm627QNabJ6lu7fQJXGquGgaoLGEkPP1ybojOvgTKwEhMSWF4ibcgPNUdDdORwDS5iBdZKOXXGJ8R9JQUE(ExpFS1ZlEBRN3TBMj1AoC7HJaK7JUX1ZZ(xD3gLYAYz3lZ2aRy4HfkaPXPe66H2c1C7bXLdD6Rd8)bptlVQ2cVZEAnsyqX7ky0EGfhatWEzZ)fDSApvme9dUZMTjYmzZudZt1KCBV7G90Ei)4sHMd3rhwgXHH96LYOLAajTvtQR0ymhry)Vu4Mg52)R0HGqwqCfyiy3i9wQYIY5S2fIfqAVRoIwCX0sfRIkSV0Pb0zzzX3BHcVZe3vJ1dGS(oTpVHfHiiWsImXLURvOuPvxZMrV7u3IuyyxyjDUyAaStDXyDemqOT3XeIaytB7BSdLksaTGVMUrwqZnqNWQ1asXt1NyAUHeZa)p2sKmsdiPMRdrWiPBxrE8cOJwJncBLIBlIO828wHn6MNASE9LwrwK2smaXIu6eEfG(4HIeCegcaZ9tB7AF(xO0MuU)xm3l4gwb3gLEDVJqFDpu)lkqYTK)PHsc7rW6Mm9A1N)jWkbcpJ3rq9qtQLuGHE48nZejpJgtu1NLohR7(YcBePQZaZQuEhsQjtLXksNFrv(6i7XZqPZQPX4mP3gB7A)PnP8fkQOIA7A)Xh)vByv)n7m3lMGk4rLH9dKHq)A7UrWa1i1oSfoM(awoayWgnX9imiio2O83Aj0)A7A)g3d(3)yUxmMmerKI4h9b8mUm4ydExGFg1ZrqoN9E8(Yco)OEBbHH2(MhbATvWBd9JeOAuUzT3)W0n8ZzBlg6(M2mh3iIXX9qmNAOignNAG5XNBXv9E20x7ls5PsLO84lMww1yHYaSMngzLYDyqAhy7P3OmCEQ5fumSl1rFYdAUYl2taB9fozee0jRry4BAZQSun02VYkWL)yiPjlJI9xpe05KJGznyT6yqnfX4ak6RFEwV66MNsLAGrZNQkYfazUUpnAoyJGXTSg4O0StSE3y03HBOaOYsipcK7gmoQd3GOTbInKEqfZf9LgdwNlNvLu54iJWzxtomeDTa2qX(1GN9EN3u9zuI)OK7vG8Pbj0CBtzY)88i3h5GKMKjpGa5(jvsgUuYNVyYdcdy48GmUVl5rjnjqAEWyim3AsLzyAULTdRws7jsCMp4)1gb3fLYhqc21iTuN2co5LKHZFsW3zRJIWI4nZlCLQqgZPtLrs2pg5EiCi8yUHKHVHyiMIGrgsMMckSyI8iCCJLtIWUoioiS7dHlb3jcaW7WMqxGDHXj0TS5jWWMTcPOP0jDlg5hKQiK)hKd1e5H3k5)1si)VLjhEeZvTmU3ymgMzo)iEvYrhwJEv8IJJ0Zpe)ML2N8q47P4FfIrTdAhqnClT0EOodcoFGiu3vXE2tKwBlC3rD0y9(AzBoAAqFn3CWUIgmanjN6Q3J5)5pqqFbC23arc152c1zRM9LPZE8ePLGHATty5R5yv7kiGOb6wUwgmqWMrH0jf3p6kGMNdpcl7FRjesMyS9XHjI0fb2e2mdE1yawliMylQSMQRbYd5Du2wEwl5H8wEgLflLmjMw4as9yonXkBbK6rFk67lSkU6s2Kk13cqfY3Lnu)WgVsKNtEOesPt1xkypZY4ndnR1aRFWwlKNH88Ktu26gjFiaRRcrnmVAnKdvmDIVs)Dcev4rTuyO5CmKEDYliqo8WS80SmcDs(oqouZJCu2cmAZptmg6fYZjaBaKgeoT3iwBBhDFfu3PVircfoYQvdajl3k0IFaR52eu7Yx7(GzKgi)qbYRiedbqGxe7JGQjagHyDfjuWUJUAStVQqKiHBD7bfgb8dI2226eZNB1SHJCbb2djrfmQq9D2vZcrcez7HcysEyW(bS0Bl)BjBYKOjZnFRSyRj8CrCjhvzrMtZ5ABOCGc9mSEUwVyV0SWPBQ7zaRLy5wwHOlO(qG5ld3hOOClPOx4qvcXBQQQdadBe0FGHIwvGCOfqo8qraSx5iqLabQeMlp6GQqZ0wFqVlF5i3gbBXSYsBng4pQ3FkLRmugy(iPyCPD5lrIWz02vW0dS9q7Q5SQs7QdylqXDzvmQDHLUzd69kQS5zXGy7sqhw9ZIHfORUXXyZs1oKmlwqa7kQN7fTuPPxbVWO0vlw1uKQ52wVYAohfOUQZVDKcXPxbVaG1bYWITztNz1ZtlWu)GEV0lnVaPSOiy618nJfhWIO(XY4r(ogCCvcZbJttaN2b284tsPX(ZtJYOzKqt6BTkWwRqUc5DdGvrJZAe7fJcliIO1MXBzla1w5kZRGfqngWW8u7DkcjhRvBKZGRyB0kV2nMVEHa4aYEy7N9uDbEwdlIxYpEbYHwimULSeBttwJtKPjLth1kaJ8GSHbBuDipWGQE(5xznU1GOjavn5OJW6l9TKdnpYpV4dKlk0cipeTYrqONUPb4qKKKH)7jLpps5ZNBbGeoelYh0EmwYUZxPCCATByROW5WSQjNNOvtoS)U2zJDJI8JG(f3ArlKC0jOXW2jigmonSjD3xhscr0KfvKIfpLkSxoQpvNxFgXx2G8OJpaYbTxzLmFJb3IQK8qqeuUtcDEuCRXaMzaiJRYXr7Zl5fMSY3ngn)glW1cKh27DZ2CEqiXgAXRk2dgB2SvsNfVIIOXQb)IGMzrXBvMknqrJWQ4f4SUYIxaejBXw5ALRt1dXTlMCFJrlgfwvk6U9pO3Lvnk(gCl70k0gCxSnj1GB5tPmwEaRmclqiHvs0LtRViuellxAJ56JbxvGis2PLyjCUvSUiltNg)64ZjIA53QdC3gvmDA7YZ8nLNQQ6rZHLQku(wg5(m44jhwnannxBuz(KJQYY9vlFYiy5xhRxvXeic3AKftNKw80UX6DbBv)sjntxongSI6uIegljUqeayMucHin3Vk(Uoe7nvCy3YSP0axN)n6KxvZJU8FzYklHvb4CzDdltu1J3VoZB2CrC5EM)m2QPAwp7rOy)yLGrg1qwZO5XGZRmysGa0EVSl7nOtBv5bxhcSmgloqXGWbnxVStE221(ZUn6FE4G2xEH8EuAmqtbWA58JGXsPjveiVimHviHOzvWsNJYtD19e5MYKm42uX5IzAvKDYdd8Cz21FYHNiQzx4n7Jv4Y2lI6lmMzPjyxvMQQyeJ8XFQcJkKpvmk(QQOaVhNrByrr)4UN53DawpmMv2)Sl9snuVcKCHQ5P(idVtryh5cnR6JDwsKJswcEOhsjSbMDSosPPbrO49Bz3Y5yoAFSlXUc1dMciz5l)UQyAwHTm5yXf109VVv1Ne65qteaG7eFpcQMja6DffH7NKlPL6aQUM1qf4i0krcEOdIfFbxj4hN4at3cyUdl3Hli1n4rY5gmwZyc18RTdXDNLUte0xmqYYHfSOkmIowYD)7dZtsyyioxxsQTdzAb7VINS4xUKv9tsSXsU9xRKJ3qjp3vFzhPKsg((F9pqj)ISL8CINg12GRZgl5PERso(nxY12hO5qdbb)4wCQT1ZqMHARbxB0fJHm42kDL5mzvwovmvgMksEmyk7XaxDubn4AhyAhZZGlambmoSFC48zk7DyyjEQBbs4umnKHM15D(eSSFHCEJG1LuRumzxAMVtGaR6ccqiHOzHSePjfJPdBMl8O0TkBXeDp5hiqEztS3KFKnu1JlqEnbYRBITM8JfiVHv3EtbYprG8wcKFQT()2tcI8rWmlvyS6UfW)KLL93hKv)Bq(0ROObrrTBP0jHC3xrrJtvKUO1RP)(YSGH7t8MzVuBXddjab(Ni(z5XqiGW8pntyn5HqSYHXOqnsEfYRs(HOnncK4l5XEN33Pkh18rPIr3mpzoYNNdSdpPezL73G76Occ8(J8(YIcHb3natU34In46HZG7MGj1pSfzPvuOrsLNyz7QcdUDjqTRFEOxxp0RDE3OQH)r(IwvyaJw4bteJwnbY)tS0b0WfRKgUGmclM3rWYbaR0FuYXKj)F8s(sECMx)Yz9)ltvko1DdPJMk5(GHCCY)Im5REaYxZrMVKrD2Wt6SHVHJuYjFtN94jCKio5BLpLBY322R)6oh5JlKpAf5PSIdYY1M80KNPfYZ2GTmIjeiDyYy2tsMMElp283ZDoXKtojzcNln3dv8PjnyIrbz)sErGgFFiHxYl9g5DXZTK4h7ALGLZnUY5nPld(jt9kbBROYd6K8oaB)zKFrbzAs(52s2K8llmftYVIfiNUrKGf66dt()waCFYPi)RBL8Vr()r(1K)DYeYuGn2i6VjF2ypes0)dYVvG2hBtx)UcZ3I87j)HjjJkdUISH4RjG3gCZHL0u1vVFBDZtb5izWnxhjYCzxwEEBW9FQWCGm4M30K3Jbxj2KboQmmFwAovwP9UvAHz3ya7h7kVgdU3dEL3lK)cKfZKLcJb37RWuxm4wOb3IH1(lA(fKDIbxzfMBIbx5gCvaH4R0G7ICK)Hb3sWoSuwQgyshNCA3XYcUmBFJziipdUvqTuRmxgegCxcfnEtYMGXNr8eXcoJz5L6mLadUvD(MNxwbG9n4UCke)MeOgD7i8FjaEIxygzDWJ1dpQbESb4rTWJQHikaTUIcqwzWTAdU1yWTwgQkmdbByZrYAWTrzku5zNixNnu7iBUsegn1c4aYn4xwndM9Mk2Y04eFvHWTRYjV2mfIoWKgSH22GBliV28MDcNMsF3iOn4UQcandK79JWKn4AuEgdv2G7QlaESb3haWeBWHw0RfuXRrEh2wa)brCWgC(8ypwHFhZpnpBW7YGAHttfG4ZGRvy0RBDtgsptWSv5ycTQcbZAWTn3iynb4b0QZZFOvn4cFwIs1GRRPhAQb3oo)UfPbx35b2AWfTudUTlJiBrSxpGG1X7ycK1G7d5fG6jt(Noj5tzoiC0a(UpRqUrXW)(5KjFg0982BI8FNIpa69xGEKryNGbzs98hzez173zxXoW6AHNUKtba4etaWby27pNnXgbDope3ivlraN3evkzapTaCcymLryOwapFS2x8DSmg41OLF7wkpDozgIHp30Ymhj)p29CsUmnOtoOWrbcBPC7Kb0h(dqcVYtds4QyiYCHeMcdgWd7(eUO93ejCeA1USWb)4cZmOWF9ZJqHFYP8iOoJXbdnHqHNP4GToriWqDgGd(lzId(8PdLlCW)CpoGcF6XbFfxXPbhmwQBebmGhE1m8WNECWlzjNH4Gn3k1oky7hDWPhfS9Jg4mcfCEDphgy7L6FwIbEklJ)KJbErZhXbFgGbwOqmW2l5(mbBicl6mfbmBZnaufcfEwGhDwXtNqGPidz8CvZgEkplHapf88YP80vHUrSTUa8YSpiGxaq8GXmVr5NgCZtkAyeZs9YNPOHraOmeXtEbOlanSTYhpZyfdmSjpAWefCn14QOYa82zcmyQDUXzxbJNouWxdfj8zlk4YNLOG5YbcEsasoZoqb2PiRzhfSfwYoFk7OFbySfca(PElgi5QwGYYSFhlv4N(aB1S7jBAMvYoAHar4uSsdARMD5rQC6Qz3YN(A2Xqg8G5M0NSc3r(kxOKDV7RKDuOkYZWs2XUrigipBphavr2nuLp5CCHvr(8jwf5zcwf5luVU)APEDYND1RtMwc3h12oOtnUJza8fiCZFcQxNNPSEDt1XJVKzs964mrQCfxX7UQx30x6RwPEmuUD(P0xNP1tmm9moMM6jEAoC8ZQ6j(NZ1Rt2w96kM8zLTvNmZ6WrRx3DEtZ061PSulmJo)eXsRJhtk)ct7Dj(KxhV8sKz9ePLG72BYcikRqE5XHYQKNDCO4PfBVsEv(6R8RujJmh59L9mPsENrNgV7k5bwGMW5RPSsEN9NP9uvjVLva0ydoHlugVZDLX77p7kJ3zK305IY4zEC2tipLvXJD)qBdJ8PVmE2VrIp7po7R4k(l6JZ(pwLYtEQlL354B)0zuP8oNZZzqP8ohF)S6aDmJHZ3QoEvx9uCdRoLhCndi8mQaEmenBuMbt(8tb8k28oifHUIWKDvaVcov7)2sVlfU1oDNQTJc5Dvx1FDviVZIJZU2A)te8ZZbhNDvvDE84SjWgfN13SE5k83K8jX7cf(7DZf(J9PaBwu4VLTSZJNrP1Mxv(xnNs5FHu5pwT7oRb3mRQchR2DN1GBMT88Yp7a3um7o1RWploNpVt9yytM5yBYb0W(h0MzqL)OvWBAVv9wPlqn2XdrnpimSTm5FWxEx7DQ3KdpybtZ85F(aTblx5ucTzHoK9foRVt92zUpVf2oW0dE9fuOkaCs5Z)1xKRdnTCAXQWZkLEOPwNx6KvRV8LHdlFK9A9DEV0JMftCME78nPfDSWsvADtcc9gY63XaWIbk7SyGc5i)mTeJNDvsJHVJvoTz0jnFHQPDURAANbUZtFP0MoaNNP3uCYiwYzt10UWjn)xoLs7C(Dl25Q7ko5)c4UIBQkLwHN085KsPHOlppDZWXaLpPFySDxknUZOdC2rP0QU63DvkTZYtA(Sf62zZjn)Nm8W5pdZjdKi9mgTazz7tI8zkiXz8UQ2Vh)MQJRL9XSOaeWwFaIlF(Nyr5GdtpU2d2u(Bnr6Xm32uDRjE7ZUBnrHj9wt8CYhN4luHYluHYZrvOKERjojvO8EpxE8RxOcLx4Et8pV)Se)hVku(Nn3BIlF28zj(DBvO80Jy886hl3ZgeJMFh(8xR3BInjxWNB1C3NBMyrVxH)4CVjA(Jfb(DJe9le4bMtdLPs)Q7TSE5klgeREDMn0qz9s)MeM246BOSy2AS(YuHj0AY3tyOqd1cnWX6rd0HTbZEuFUg9qE(czySKPfhiRAK9QkQdtXnCxv(nkF1eUvVuUdR1qe63PxEgkE2mjOFN3EXKxyiZVeMcfqEPC)HQHLx7gY1CpWvm4slp311Ws5gTpS15LVvOjrhDeA6gXM8KVPav0YLVHlAPCVWt54c61aIZ3pMJwHM61brjChyPCJ1i268T1X5mNwDX9x8IXMk3EtNGhBAXf0RvGnTa7nzSBxk3l)FdB69wGO1HlP9L3p20cZ3u01bk7jUthD8eLpqIAAyPZzUd6Ipp9XDQgZzUFmN2kV7FPCprmxI9V)KUmbpXv5IdprhoKrOPUCzv(MVPl993DJU0336ICmpq4AzPCF3v7QJFRpMZjmUV9V3LO9IFghkquV7agBnUjxlUu(VTxxK7BFtUShp1pZHCCkVGa)DEAxJ9zRY1yFgEx6WZSxhI2d4fwB8YRXLa)n)AUNAAWbtRyDjbzEJU74xBheF3W0(lhd2X8SCq8Ndgm8d5fG1fU0T5mhIZ525mNN1Tb9zDOU)nxeHd8MVNNUqTt4JpfTFNtr7FcODWkDD)gxg9RlRlL31O)7UiAKlw7f0v(32rxpvz74Ewl03h5x6A(4i7XvyfOJJ(oU64OVKJogWlOtdR6OJBcB9Gh1rRNATqR3)CDU8T8wMB1WfES)vhxGWboaFLl2Lz5R84UMCo1d4s9p(n6Af7P(jU8yFSv4GPVokJh7QDgNUAWCC87YL544rDW37O8D86EH(oCyx9D4VQlBme36DUFxs(X(yUK8dEyxETf9fDfK6y96s)(6B2LCCSB1L57R)WoIbwboHqoSJXwbDU(oCg9gdzCWT5IptCDU0SdEZUMm)9)DoK55wXosSby9WR836QVVYNYff)r3Ud(gD9qiY3(gCjn)6pQlT(f2SlY9CBWLf8eom9chbJP92FqxJ9i)uxm9Ps5qhUNAal4p6x5YrphflqFF7RXft(Tn7yS3t5nCQkaI(z)4oUWLxnoTC9UOWWjDPIhSvxs(3994qAO7KDFFgxD8HRXLy)v1CX0hUChmTIkA5bqSap)Dmz2Ixu0frj71frp5eovzKIKhX5A31du8e3Tlk(9eCrXxBEogBIfMuhxkC8bCA2RUuc3aGUEScDReGWRU9doYXCzZF8ADjqh5B6AD)J3Klz8R(qowR(aySPrpGlM(iVAHJv4BGlFpMZOSBch(rwO7H)BCW6BFk2)6)8u0()Lvp5T)lGg)G0Tr4Yt8)HPGipqfduXgab8NEnUeWFGt4m3b2XXJ4QJ)OpHJoEpRhy1R88oJCGd)hSm38H4y46Ba2x61UAxXtETpPRjR38WUi3BMY1S8B9SUCpEZh3zKdu6EfDxK7v(et2o3V6Ao9wHxVmWMdblVV)jxEIpUUlL7F5zCjJ3x9UyYbJ7GjJK)lvCRFAKgJ9TbT5VRF7Nw8NRSuY1uj5ARxmDAiD(iAYPYiT7TY(bgAt0Fi9WF9AkM(tdN5VUr3sz(O)w(4ds7SYvu0cin7hVkwok8hAsn9DiPI)I8r)ATFTYFKW8K14(3IW2XF9Mgmzkvn9i9Nr()p'
      else -- Healer
        profileString =
          '!CELL:272:ALL!T33c8Tr1vENjk(looDBE4yYB8qsJtSsCCSj2P4wdvYs2wj2wELLt4ry9msAKhLilnDMXoeE0DxdKpk72D3FEzZ2(1slXe6xB6JnyCPlusP1fOafOxCzthylfWKcLc0hzzF1VD7(Do37msJMXoXop6di(xKI0DU3ZR75EU)pN7ijUBBLQ9kLrsvm9XvtkMqkC)6cklrovcPOzZMwpLIwOmnLTVyI6cJ1NuM(7mRwk9uzZmSEwLEILvxpBFdQRkMrlDkDzLfjMEFI7xRBLeI6s(6xvutEcPmIXsNJAcklfjU)0PU(RxunreXujAxmJyVsQcklY(v6uuvF)cJNuvSpPovtLvnL((BWR)2ftLrW7qDPKvpDQEL1L9o2FC)PIVxEFAAP00LJLoB89kLqwzj9Rj1uAP(BvsmTUmtIuLvwOtUlOSqDtzZs3U6H9hoA0WT3wWMJQgqkPy)P1vJgUt89CLpr8(1aToQ01P3VQKwjQIXXbPTcVfVSb8UyFn0PNTS5T6HBK4YI41Kud4VELfMwC)z7x3x)6z7AFP0Jl79aJPcSVhOXezZQQSkuqLuBGhfQA2sv1wh)nEJ8n3F608TgiIcAnuwUvFOgNwT1b)AztN1pQBXqQwBDKvsFrnBHSYiIQWCaz1tatI6PL6vnB)zsud0JcAyRBjp5rryRBXg5pazfQjygcYQivqUy4bp84sGhRbESw4XhGurmvPbsPjnMATBR2QuLsljQjnE80W0ttIA6PY0R2)4SlQbVravrQMy6IGRNo7D1c(t92BAj0fRHrWwQstovs9ir0uKsN(wUPg8s8s2OxYMiv1azZKQVLB6KmFTOuQa0(Ihmrkn0vlbPMyXZ2xFzZqQHuR7bgjEArnTyD1QV291XqOBcTZG)NwFGDnIKw)QQs0jvsndhlvVbKI1FYKALCYe0x4pTy89MgC2AOy(du8RCdf)k3OYcHj7m9kLoBVA7mL0(azydklMPGsj6cvbTwsNDF7jsNPUoP0BVZ5SLnFz1L)5lTwpLI)FT1TOIgJQXrK(O9lPPFqv2YNeYQ6P6tcCwkBmWPtb83KIcwP10NumA)18EGr6f4qyfQZO3ikiJU(T7XdNhoUCe3pAA9NkE2mQ0HfkrXRVTHsP5V)uP1dLryi8snb(sQ0rgd1xAFibw2Sl1ZG7vA)7lRAcTj6m7(Ku5dLjz)Aa)oaXNxI)RF7CE8yNBKMibibl(J(ZjnlqAHEvsR4BrIPqcnuOmqONbGvMGThwTiLieWEtvyp(JjjQVTryRfJeQLwJs6GJ7K7nt29LHzsdNjneIiUSu89gkzWRdMs0egxvsj9(BcwsNa6hS6oPQKK1BPdicUExlPP3pmDhfSSQniixcz2YJKayQCejLSQ6ELlBe0aefwgVxj1RwE80sj1RspBvQyOhFLCq)TNvFxcRXNFHA7CxnlSMU6uOw)z7synb6cFr74t7cFAhcraFR9QTDz5yqut5EKlbMhftSFFzs0jSgB7YJOdbu6jw)qe1mEjvSGsgultkffjDTlIRcvriUHA)ze8hpBcPRBo)jvvfV1L5JlMHpMeFsCvmVOoVSUUIwdvxDVqe5(JTzyPq1szsiPMrAVzRUjWUvToysQUpyjPKA1B2IoLa0ewmWVMQbgXJ9lG)Rz9wxD9x71SLRTXmPsZhb8Yft0DOnu5A41ZYdEJs686YP0SKOsqkf30IZRPV)0OWPYJUwvtJpZNktIuXfbvsJFdRzNbJenut(ABnBIFnn1w4M2XAQSKMc2wB90u4WTfi8U6ONUIEvTfKVrRltzaUzfpSEGV)mP05z2n(uj5Lv4vKuJlLrN)Y53qM(7lggrBlvvJjrB2xGG9eU7O90AqFTfT1E6myKMc2ruG6GYrPSyIe8A9JHeOISgQLDPlQ3Vgp6EMx453qmqlLeZSjWkOlc2MSG)LjF6Q72BpCh9eQPWD0vpb7WN)2cgayssX0AsLyzR1KGa7G7p)(sLqxMxeMaLLqFlQbJTrJn(XehlUAYOibBkQVoAP728fPNM6UlyTspH6iayqJgocJ9fW2Ub2MbIiNb2xvJpPkWGauHx7s4di2hStmF7qql7kxhq3Jk2Bv1S5TWNofSVIQLs2rOM2ruFTmP6NQuFzhqIh3fc0t9(v4tW4dJP6Ys8MB8YNnj9T42owZKouYOGRq0qDckB7H3zWEI4luGE6ky0U7SNabJ6luBfQJXGquGgaoLGEkPP1qbojOvgTKwEhMSWF4ibcgPNUcD1ORwnS5iBdZKOXXGJ8B4gu3eFVBIp2M4fVPnX72nZKAnfUTWraYDdBzt8S)vZnrPSMC29XSnWkgEyHcqACkHUEO1qn1wqC5qh(Ah)FWZ0YRQ1W7QNwIegu8odgThyXbWeSx28FrhR2sfd3mh3zZ2ezMSzQI5PAsUU7kypTfYpUuOPWT3ULrCyyVEPmAPgqsRcsnLeJ5ic7)Lc30i3(FLmeeYcIRadb7gP3suwyoN1orSas7RIiAXbqffPIkSV0PbGzzzX3BMISZeYvd1c4R(ETn3HfHiiWsImXLUTvPuMvxZMrVRuxVuyyxyjDUyAaItDXyThmqOUB)KIaotB7BStLLKaAbFnDJSGMBGEsRwdifpvFIP5gsmd8)ylrYinGKAUoebJK2TI8efqhTgAa2kf3web4v32Hn6MRASE9LwrwK2smaXIu6eEfG(4HccCegcaZ9tB9k(b)WsAu5UF(CVGByfCBu619oc919q9VOyi3w(NgkjShbRBY0RvB(NaRei8mEhb1dnPMtbg6HZ3mtK8mwmrvFw6CSU6llSrKQodhRsPTlPMmvgRiD(fv5RHSxpdLoRMgJZKEBO1R4N1OYxywZAwTEf)KJ9k1VM)0DL7fNKk4rLH9dKHq)A7PbWa1a1oSnoM(awoayWwmX9imiio2O83DP0)A9kEK7a)7Vl3lgxgIisb7J(aEMqgCSbVlWpJ65iiNZEprFzbNFuVTGWqBVUrGwBb82q)ibQgLBw7domDd)C22IGUV1644grmoUhI5udfXO5udmp(SlQ833w)2FrkpvkdLhFX0YQglugG1SXiRuQddsBaBp9gLHZtnVGIHDPg6tEqZvEX(KWwFHtgbbDYAeg(wRtLLLH2biR8a1cbwo(iyEbwRagutrmoGu(QMR1RUY5QuMgyy8PQIucqFR7tJMI1iySjRbogn9dR3no9D4MgaYReYJaPMbJJ6uniQ)W6)0dQyUWUKyWAz5SQKYMazeodAYHHO(7ydf5xdE27TET1Mrj(9t(0cKpfiHMBnkt()mxYNJCxKgLj3TazyszKdvc5WfrUhyadNhiXDDX3pPrbstdgdHYwvQmdttDSnyfrAprIZ8Z(BAaCjukDajyNH0sDylaKxsgo)jb)JTpgc9H3mTVvRcjeNovgjz)y05HWHWJP(ro0vhdXnemYqY0mmHfmKr44gpNeHDDqCqy3hcxMTlCtEVdBcpb2PfN02wDNedn2cKeMsh0TrK)8ufH8fjhPrYxz7KV6sj)dYKJoI5ktg3BigdxmNFetkz0H1OxfV4ei98dXOzj2jpe(EkgxHyu7G2bvd3CZTfQJGGdgic1CzSN9ePLwd3vuhnwRVM3HJMg0xtnfSZObdqtKPMA9y(F(de0xaN9nqKqDSJqD0IzFz6ShprAoyOw6awIAow1odcOwGULRLbdeSjuiDsXdGUcO55OJWsU3AcHKjgBVAyIi9SaBcBMbVAmapfe3Rzvwt1up5l5Dm22AwlRHCtEkLfjLmjM63as9yonXQkbKErFk67pSkMqSSjvQTzGkKNHnu)WMRseI8qjKsNQVuW(IlM3m8Rw9S(bBFqEkY4KFWI34i5xMBDviYG5vRICKIOt8L5VdGOc3VLcdnNJH0RtoUa5OdZYfZYi0b5jH8KMlzu2cmAZpvmgcfcracYNgeoTxlwRDJUVcQ7YxKiHchPc1aqcXTaT4hWtUdb1o91MpygPEYlkq(XcXqqc4fX(iOAcsriwNrcfSROvGD6LfIejClDhuyeWpiAR7OdmNTkydh5ccEhsukyuHA7OZMeIeis3HcysEyW(b8Y7i)BjB1KOjZnFRSiRj8CrvjJQSqZP5CTnuoGFEgwpxRRWlntB6g3EgWAjwULviccQpey(YW9HNvULu0lCKYG4nLx(bHHnc6pWqkRkqoY8jhDOia(QCeOmGaLbZLJoOk0mT17X7kxjYTrWwmlC02Jb(J69Ns5sdLbMpskgxA3(sKiCgTDhm9aDhA3nLvvA3TdBZjUBRAnT7OIz27M17vuPUzWGyv1HoSANbdlqNDHJXMLQniHvmPF7kQNpdAPstVcEHXORwSkzivZTTEL1CokqDvNxBifItVcEbapdKffBZMoYQNNwGP(E8EjxsEbszHrWuO5BclaGfr9JvPJ8KgCZQmyoycAs20oWMhFcknoqEASyAwh0e72GcS9jKpqE3ayv0eSgXEXOW8JiATH722gqTvV68kybuJb(lp1ERzHKJ1QnYzWnhB0kV2nUVEHa4a6Dy7N9wzbEwdlIxYpEbYrwamULUuBttwJtKPjLsh1QaJ8GSHbBuDepWGQCE5xznH1GOj5ujz0ry9L(wYrMl5Tl6G5IcnFYxIwDii0tx0aCiArYH(RiLoxsPZJB(GeoelYh0EmwcTZtPuCATlyROW5WLQjNNOvsoQ)o3vdDHI8iOFXnoRfqg9K0yy7cedgNg2KU7VDjHiAYIksXINsf2lh1NkZRpJ4lBqE0Xha5G2RSsMVXGBbLr(sqeuUJdDEmCRXaMO8LXv54O95LC8jReDJtZHXcaTa5R492zBopiK8cTavf5bJnB2kPJIw1SOXQb)IGMzkXBvkknqrJWQQf4SUQIMpejBrw5tLRt1cXTlI85gNwWjSYt0D7VhVlVsu8n4w2PvOn4wUnj1GBftPmwAaRS(kqiHvs0LtBAwOiU4CPgMRpgCxmiIKDzjwcNBfRlYY0PXVr(CIOw(T6a3TXetN2U8mpt5P8YV)CyPkhLVLt(CgCLtoQAaAQS2OY8iJQYYVvlFchyjwhVxvXeic3QKftNKwG0UWAAbBv)cjntjongSI6uIegl7TqeayMucHin1Vk(U2f7nvCy3YSP0axN)n6K3fpx6Y)LjRSuwvEZLznSmrvpE)6mVzZfXL6zEtBRMQznRhHI9JvMfzudznJMhdUkLbtceG27Ax7RrN2Uyp46qGLXyXbkceoO5AKDYZwVI3(MO)5HdAFLfY7XOXanfaRLZJGXsPjveiViCsRqcrZQGLhhLNAQ5XYnLjzWDPfLlMPvH0jFfGNl3U(to6jJA2fEZ(yfUSTzr9fg3S8dSRktvvmIr(4pLJrfYNUffFv5uG3tWOnSOOFC3Z87oaRhg3kdF2LEH6RvbsUq18qDKH3PiSZCHMv9XoQiYOKLIhSHucBGzhV9uAAqekE)w2TCoMJ1h7sSRq9GPasw5kVTLCkwHTm5yXf109V)10Ne65qteaG7eFVcQMja6DvZc3pjxsl1auD9RNkWrOvBe8qhelWcUsWpoXbMU5ZChwPdxqQBWi5CdgVjmPz(n0U4EYs3jc6lgizfWcwufgrhlRU)9J5jjmmeNRtj12GmTG9xXdo8blEn)0eBP4B(vl(y1x8Z(Hw7Ofx8W39j(Wf)lYw8ZkEAuBdU2BO4N8nk(yxxXxrFGMdnea8Jd6uBRLHmd1wdUwOlgB1GleDL50zvwovmvgMksEqyk7bbxDubn42bW02MRbxtWeWeW(XHZNPS3HHL4PUEiHtX0qgAwhN5JXY(fY5ncw7rTsWKDPz(EseyvNqacjenlKLinPymDyZCHhJUvzZMO7j)ZcKFKj2BYlzdv9RiqMqG8QMyRjNqG8tS62RjqEDbYpvG8g26)pBsqKpcMzPcJv3Ua(NSSS)(GS6FnYNAvZAquu7skDsi39vnRjOksN0AY0FFzM)W9jEDSxQTOHHeGa)te)S84ieqy(NMjSM8qiw5WyuOgi)yYltEr0M(hdj(sEW369)oLIA(yuXOlMNmh5WCGD4jKuwbGCTAePS55KA)Cmn42fveHEo67plkEgCxfmTF1lYG7pHZGB3W091AXqATgAGu2ZT8DVedURrGAXpm0RRe61oVDuPX)iFbRApGXr8GPOrRZa5lJfvGgiz10ajK7Lfn8(WcfaXa(AK)rzY97L8194mJ)vY6)dqvxo19ajQMk5(HH8qKJjtE4ds(woYjM8TD2WJ7SHVJJK1jpIZE8OosrN8y5tgN8DT96XCoYVPq(4yKNWkcjllCY3J8untE66TLRm57djktEw7Pptt8LhB(5CNTm5FAsYroxcWhPOttcYKFyb5ftmaA88qQWKx41Y78NBXYjCTgXYThxt9A0fiV(uVgX2AT8WrjVjW23I8ZlihuYBBlnuYVOWKpj)swiE6wucw4Upk5KfKia5FH8oBN8Vs(3i)7K)dYVsMc5Xgr)pZNN2xgj6VM8)tG2hBtx)xfMjg5)M8BMKCTi)p2Gc2iWAdG)0SPQSY8ztzWn7csEYa0YcZWzTRnpRn4kQWKJm4(FDksiYaOyEzGJkdfZY)PSYS3T5vyApgCL4oHhdC3BdU3hKydKEZKLBJb3FuH50yW9(n4wiS0FbZRG0wm4wuHjTyWTydUsHy)quJYCKyIb3fHDyPSCqWSro(PCRmlC0SnuMMO)m4wj1sTQCPwyWTAkm9gLnrPpT4jcsCAZsEN5kyWDjNV55AkiladU1sX(3Oa1OBh6)la4wQeMr8cp2i8ytWJQGhBgESbiGcqRpqbqUm4wNbxfgCRNb3ctDWgODKSgCvltXqpZe5TydopYMAr81ulGdS4GFzLm83xArwMgNaVkehE5o51wPy3bMuNny4gC1J8QU6CIZMsF3qRn4(GfGMgi32q8ZgCxM80gdTbxdfGB2G7dbGLn4(WaNUCqfBuEN2waFfiazdUpIh7Xk85y(X)mbimddgonvauqdUMHrVXnozqanr5wUJj0YleLRb32DdT1e5hqR2p)bJ1GRJZs4RgCHp1ywn46(87oKgCrYJ41GRRsm4IkJqErOx3TG15(yIW1GRtVagqzYF)XjFsZbHJga(DNc5gfdy8NvM8zq3ZBUrYNNcpa69)x6zjHDcgKj1ZFwsKkoGZUIDG11cp2jNcaWjMaGdWS3FwBInI5CUiSrQwI4n3nvkz4oTWBcqmLruOw4oFW2w0TSCgQ2OLEZwkpDozAcUp30Y0hI)jCpNKlfe6KdkCuCWwk3ozzaa)baHx9PbiC5mazUactrbdWHDF0x0(BceocTmywWG)MctpKWJDEej8JpLNn1zmmyOjej80fgS1rfbgQZayWFDtyWNpDOCbd(T94aj8Phg86w3PbgmwdCeamahUcgC4tpm4LU0ZmyWM7KAheS9Ju40dc2(rgCgbcoVQNdcS9JaygcbEklV)KdbEbZdHbFgabwOqiW2lf)0bAiIk6mfamBVnatfIeEgahDgXtNiGPadz88sMj8uEgIaEk45AP80vbWrOTUW7YSpiExap8GXmV)4pfWMNuWWiKLAKptbdJ4pzaIN8ctxayyBLvE6XkgwytEuNji4QQYvXMb0TthuWu78LnZkK8PceCJuGWNTGGlDgccMlhg4jbh507GgyNUSMDqWwqjB)jTd(fqXwi(3N8nyyKbK2RZEH5EIgNE1LJwhqe0eRYG2kmxE8iNUcZTYtDH5y7))5Zn3ozvNJ8nUqD5EVxD5OasKNM1LJDFqmqE2EoaqISlaj)LZ2fIe5ZNisKNoisKVqr5E3sr5Kp7kkNmToT3VT9jNA0ftdqkq0MFhuuoptzr5MQdhFPtNIYXzIhzDR79wfL7uxFRMPEmuUD(P(wNPfnSd6bzCkkA4P5OXpRkA4VpxuozBfLRiYDkBRyyMfBJwuUB9ANUfLtzzf8rETGpsQFEZBvCBfRBYUhXN8I1LxImlAiToB3CJw4qzvRlpmuw56Sddfpry7LRRStS6hQmgzg99N9mPCDNrNfV7Y1bwGgX5RPSCDN9NB9uvUULxaYydoHluRUZD1Q75Nz1Q7mYB6CrT6mpY6FL8uwQo2DdTniYN(A1z)2i(S(iRx36(d6JS(3w1RtEQRx354790Pv96oNZZPr96ohFZS6aCmJHZZQyDvw5uC3QoLhondh80QkDmanvlZqjF(PkDfzE7JIixruYUQsxbNC9Fwj3Mc3govNCTJQ1Dzx27UQw3zXrwxD1)oc955GJSU8YppEK1kxC(7(Vj7BsLdC2F36LROGtYhsVluuW3lxuq2hqSzqrbx(Yp)DkLw7Sv27AoNY)aPQGS66DwJ8zgvHowD9oRr(mt55Ap7q(ue7w1RWpLoNpVv9yaxM(aFYHcX(hbNPrvbPv37uEV6TAxiESdwIAEqmA1p5FKyEp7TQ3KJDy(NI5ZF)b3dwkZPe3ZcCi7lygFR6TZCFsmSDwQh6QkOiwa2KsN3jwORZtTuAHSWJrLEEQwhL6KvhW8LOdlTK96aEEVSKMfAC6E)8nPfKSWYyADxcERxRYkle3OJV(7CqlSgIYoRHOqoopDRm5zxb4yi)yvHBAD(0xOiCN7kc3zGN(PUcCNkOONP3WCYikZzsr4UW5t)hmvG7C(Ds25Q7yo5)a4oMBQQaxHNp95KkWH4oppDJYXGRpPFaUDxboUZOJP2rf4QSY3BvbUZYZN(Sfu3zZ5t)7mKY5p5Zjd(i9KjTGFz7tV8zk8XP9MQ2VXaNQd5L9jWOaSXwFOJlDEp3cZbuMEiVhQrYQl42w8MNz32Ict6TT45KppXxOcLxOcLNJQqj92wCsQq5N5C4zZEHkuEH7BXF)(dt8V9Qq5V3CFlUYzYhM43RvHYtpUWZRFUCpBWfA(T7Z7wVVfBuUGp4Q5Uh4mrC(Pf(TZ9TO5pve43As0VoGhy21Vyv6xCVlUxUfhdIv71SH6xCV0VhHPnUX6xCmBnw7IvHj0nLVNWqHgGxPYX6r90HvLzpQnxJEiJxidJLmT4azvJSpvrDykUUBRShP0kiCvSmU7vR(i0VTV8mu8Szsq)2WDfKJpK5xptHciVmU)NkHLx7bYOCVWvm4slpNnw)Y4gRpS15MVvOjrhDeA6AWM8KVPalP5pWMVOLX9dFshxqVkqCEHyoAfAQxheLWDWLXnEdyRZZwhN9SBXf3F(vGnvQ9MEoESPfvqVwf208T3KXECPCV4Fl20FubIw7UK2x8aytliFtr3iOSp3T6OJpxPdKOQ6x2SNZGU4ZtDmNQXSNZhZPTY7bwg3JfZLy)BoUltWJDzU4WJ1UdzeAQtxwLh91DPV)3xJl99nUihZdeUMxg33VcxD87(XCoHX94)gxI2ZFNouGOE3jm2QCtUMDP8pUxxK7XVwx2JN8TDihVJxqG)EpLRX(mL7ASpnVlD4P3Ndr7WEH1gV46DjWp6329ut9oy6s2ysqM3I7o(T3jX3vFk)DJb7yEwoi(Jbdg(HCCyDHlDB2ZM4CUD2Z(zCBqFghQ7F6fr4aV574Pku7e(ZNI2V1PO9po0oyLUYFTlJ(vM1LY7A0FIlIg5I1EbDL)nD013zX78o2a0377x6A(y096kSc0XXElxDCS)zhDmGxqNgw1rh3k26H(AoA9D2a06DphNlFlT55ujCHVX)QJlq4ahGhAfUmlp0d7AY5DoSl1)yxJRvSVZp1Lh73yvoy6jqz8b(qoJtxjyoo2T5YCCSOo47Tu6opHxOVdh2vFh(B5YgdXTER72LK)aFmxs(HUxxETZ6l6ki1d0Rl977uNl54bUrxMVVZx1rmWLGtiK71XyxcDU(wCg9gdzCOD4IpN8kDPzh66Cnz(B(eoK55SKDMyZW6Hx6pZvFFPpLlk(Y3Sd(gDtqiY38QDjn)h3GlT(hwNlY9SB2Lf85Cy6fgfJP9MFexJD0FMlM(KPCOd3rvGf8L)vUC0ZrXc0338YDXK)RMCm27O06FNLae9Z(N74cFGkXPLRYffgoPlv8qT4sY)(VphsdDNS76oD1XVAvUe7VLMlM(vl1btxYsA(WiwGFWTmz2INx0frj7Zfrp(jDQYifj3NZ1UBcO4ZD7UO4)KGlk(QZ1XytSGK64sHJnGtZELLq4ga01hOq3kbi8QB)GrFax28hUAxc0OpQR19pCJUKXV1x2XA1dJXMg7GUy699kfowHhbx((aoJYUvC4JUa3d)x7G138uS)1)7PO9)IkM82)fqJFe62iC5j(F9uqKdVKbwYMbb8ND5UeWFKt4m3c2XjI4QJV8h3rhVJnbS6L(boJCGd)hTC38H4y46Bg2x6v)qUIN8Q)LUMSE971f5E9uUMLFJNXL7XR)WoJCGs3lP7ICV0hFY25(vw)P3kCIfd2Ciy5D9jD5j(W6UuUV5t7sgVRADXKdf3btgj)x34w)Wino77jAZFv)oaT4p1wc5YlJCf1kMonKoFen5uzK2Z2z)8cTv6pJE4VDnfr)HHZ832ORFX(O)s(4ds7SSvnR5tAYpEvSCu4VWKA67usf)94J(fE)gK)OH5jR39VeHTH)2nnyYuQA6r6pJ8)))'
      end
    end


  local profileName = 'MerfinUI (' .. addonTable.ScreenHeight .. ') v' .. addonTable.Version

  MUI:ApplyCellColorTheme('DARK')
  Cell.ImportProfile(profileString, profileName)

  if E.Mists then
    LoadCellDebuffs()
    LoadCellIndicators()
  elseif E.Wrath then
    -- Layout Auto Switch
    CellCharacterDB = CellCharacterDB or {}
    CellCharacterDB['layoutAutoSwitch'] = {
      [1] = {
        ['battleground40'] = GetLayoutName(layout, 'Raid40'),
        ['party'] = GetLayoutName(layout, layout == 'Healer' and 'Raid10-25' or 'Party'),
        ['solo'] = 'hide',
        ['battleground15'] = GetLayoutName(layout, 'Raid10-25'),
        ['raid25'] = GetLayoutName(layout, 'Raid10-25'),
        ['arena'] = GetLayoutName(layout, 'Party'),
        ['raid10'] = GetLayoutName(layout, 'Raid10-25'),
        ['raid_outdoor'] = GetLayoutName(layout, 'Raid40'),
      },
      [2] = {
        ['battleground40'] = GetLayoutName(layout, 'Raid40'),
        ['party'] = GetLayoutName(layout, layout == 'Healer' and 'Raid10-25' or 'Party'),
        ['solo'] = 'hide',
        ['battleground15'] = GetLayoutName(layout, 'Raid10-25'),
        ['raid25'] = GetLayoutName(layout, 'Raid10-25'),
        ['arena'] = GetLayoutName(layout, 'Party'),
        ['raid10'] = GetLayoutName(layout, 'Raid10-25'),
        ['raid_outdoor'] = GetLayoutName(layout, 'Raid40'),
      },
    }
    -- trackByName for Class (Major)
    local layouts = {
      GetLayoutName('DPS/Tank', 'Raid40'),
      GetLayoutName('DPS/Tank', 'Party'),
      GetLayoutName('DPS/Tank', 'Raid10-25'),
      GetLayoutName('Healer', 'Party'),
      GetLayoutName('Healer', 'Raid40'),
      GetLayoutName('Healer', 'Raid10-25'),
    }
    for _, layoutz in ipairs(layouts) do
      if CellDB.layouts[layoutz] then
        local layoutOpt = CellDB.layouts[layoutz]
        for _, options in ipairs(layoutOpt.indicators) do
          if options.name == 'Class (Major)' then
            options.trackByName = true
          end
        end
      end
    end
  elseif E.TBC or E.Classic then
    -- Layout Auto Switch
    CellCharacterDB = CellCharacterDB or {}
    CellCharacterDB['layoutAutoSwitch'] = {
      [1] = {
        ['raid_instance'] = GetLayoutName(layout, 'Raid10-25'),
        ['party'] = GetLayoutName(layout, layout == 'Healer' and 'Raid10-25' or 'Party'),
        ['solo'] = 'hide',
        ['arena'] = GetLayoutName(layout, 'Party'),
        ['raid_outdoor'] = GetLayoutName(layout, 'Raid40'),
        ['battleground'] = GetLayoutName(layout, 'Raid40'),
      },
      [2] = {
        ['raid_instance'] = GetLayoutName(layout, 'Raid10-25'),
        ['party'] = GetLayoutName(layout, layout == 'Healer' and 'Raid10-25' or 'Party'),
        ['solo'] = 'hide',
        ['arena'] = GetLayoutName(layout, 'Party'),
        ['raid_outdoor'] = GetLayoutName(layout, 'Raid40'),
        ['battleground'] = GetLayoutName(layout, 'Raid40'),
      },
    }
    -- trackByName for Class (Major)
    local layouts = {
      GetLayoutName('DPS/Tank', 'Raid40'),
      GetLayoutName('DPS/Tank', 'Party'),
      GetLayoutName('DPS/Tank', 'Raid10-25'),
      GetLayoutName('Healer', 'Party'),
      GetLayoutName('Healer', 'Raid40'),
      GetLayoutName('Healer', 'Raid10-25'),
    }
    for _, layoutz in ipairs(layouts) do
      if CellDB.layouts[layoutz] then
        local layoutOpt = CellDB.layouts[layoutz]
        for _, options in ipairs(layoutOpt.indicators) do
          if options.name == 'Class (Major)' then
            options.trackByName = true
          end
        end
      end
    end
  elseif E.Retail then
    -- nothing
  end
end

function MUI:ImportRaidFrames(frames, layout)
  if frames == 'Cell' then
    DisableAddOn('Clique')
    ImportCell(layout)
    ElvUiFramesVisibility(false)
    E:UpdateUnitFrames()
    addonTable:PluginInstallStepComplete('Cell')
  elseif frames == 'ElvUI' then
    DisableAddOn('Cell')
    EnableAddOn('Clique')
    ElvUiFramesVisibility(true)
    E:UpdateUnitFrames()
    addonTable:PluginInstallStepComplete('ElvUI')
  end
end
