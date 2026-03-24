local addonName, addonTable = ...
local stformat = string.format
local E, L, V, P, G = unpack(ElvUI) 
local PluginInstaller = E:GetModule('PluginInstaller')
local ACD = E.Libs.AceConfigDialog
local individualUnits = { 'player', 'pet', 'pettarget', 'target', 'targettarget', 'targettargettarget', 'focus', 'focustarget' }

E.Options.name = stformat('%s + %s', E.Options.name, addonTable.Name)

function MUI:Config()
    ACH = E.Libs.ACH
    
    -- Основная группа
    MUI.Options = {
        type = "group",
        name = addonTable.Name,
        childGroups = "tab",
        order = 50, -- Чтобы было после Enhanced
        args = {}
    }
    
    -- Вкладка Profile Settings
    MUI.Options.args.profiles = {
        order = 1,
        type = "group",
        name = L['Profile Settings'],
        childGroups = "tab",
        args = {
            header = {
                order = 1,
                type = "header",
                name = L["Profile Settings"]
            },
			install = {
                order = 2,
                type = "group",
                name = L["Re-Run the installation process"],
                guiInline = true,
                args = {
                    apply = {
                        order = 1,
                        type = "execute",
                        name = L['UI Install'],
                        func = function() PluginInstaller:Queue(MUI.InstallerData) end
                    }
                }
            },
            media = {
                order = 3,
                type = "group",
                name = L["Media Settings"],
                guiInline = true,
                get = function(info) return E.private.MUI.general.profileSettings.media[info[#info]] end,
                set = function(info, value) 
                    E.private.MUI.general.profileSettings.media[info[#info]] = value 
                end,
                args = {
                    resolution = {
                        order = 1,
                        type = "select",
                        name = L['Display resolution'],
                        values = MUI.resolutions
                    },
					font = {
						order = 2,
						type = "select",
						dialogControl = "LSM30_Font",  -- Changed from "dialog" to "dialogControl"
						name = L['Default Font'],
						desc = L['Font that core of the UI will use.'],
						get = function(info) return E.private.MUI.general.profileSettings.media.font end,
						set = function(info, value) 
							E.private.MUI.general.profileSettings.media.font = value 
						end,
						values = AceGUIWidgetLSMlists.font
					},
					texture = {
						order = 3,
						type = "select",
						dialogControl = "LSM30_Statusbar",  -- Changed from "dialog" to "dialogControl"
						name = L['Default Texture'],
						desc = L['Texture that core of the UI will use.'],
						get = function(info) return E.private.MUI.general.profileSettings.media.texture end,
						set = function(info, value) 
							E.private.MUI.general.profileSettings.media.texture = value 
						end,
						values = AceGUIWidgetLSMlists.statusbar
					}
                }
            },
            accountSettings = {
                order = 4,
                type = "group",
                name = L['Account Settings'],
                guiInline = true,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["The World of Warcraft game client stores all its configurations in console variables (CVars). These variables control various aspects of the game, including graphics, sound, and the user interface."]
                    },
                    spacer1 = {
                        order = 2,
                        type = "description",
                        name = " "
                    },
                    apply = {
                        order = 3,
                        type = "execute",
                        name = L['Load CVars'],
                        func = function() MUI:Set_CVars() end
                    }
                }
            },
            chatSettings = {
                order = 5,
                type = "group",
                name = L['Chat Settings'],
                guiInline = true,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["This will set up the chat windows to look like this:\n\nGNL - Clog - LT - /W - LFG."]
                    },
                    spacer1 = {
                        order = 2,
                        type = "description",
                        name = " "
                    },
                    apply = {
                        order = 3,
                        type = "execute",
                        name = L['Setup Chat'],
                        func = function() MUI:SetupChat() end
                    }
                }
            },
            elvuiProfiles = {
                order = 6,
                type = "group",
                name = L['Profiles (ElvUI)'],
                guiInline = true,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["Сlick a button below to apply the layout of your choosing depending on your role: DPS, Tank or Healer. You can set different profiles to each of your spec in Profile Tab of ElvUI."]
                    },
                    spacer1 = {
                        order = 2,
                        type = "description",
                        name = " "
                    },
                    dpsTank = {
                        order = 3,
                        type = "execute",
                        name = 'DPS/Tank',
                        func = function() MUI:ImportElvUI('DPS/Tank') end
                    },
                    healerH = {
                        order = 4,
                        type = "execute",
                        name = 'Healer-H',
                        func = function() MUI:ImportElvUI('Healer-H') end
                    },
                    healerV = {
                        order = 5,
                        type = "execute",
                        name = 'Healer-V',
                        func = function() MUI:ImportElvUI('Healer-V') end
                    }
                }
            },
            details = {
                order = 7,
                type = "group",
                name = L['Damage Meter (Details)'],
                guiInline = true,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["Click on the button to adjust settings."]
                    },
                    spacer1 = {
                        order = 2,
                        type = "description",
                        name = " "
                    },
                    detailsButton = {
                        order = 3,
                        type = "execute",
                        name = L['Details'],
                        func = function() MUI:ImportDetails('DARK') end
                    }
                }
            },
            colorTheme = {
                order = 8,
                type = "group",
                name = L['Color Theme'],
                guiInline = true,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["Click on the button below to set color theme of ElvUI unit frames.\n- Normal Theme would enable class colorized frames;\n- Dark Theme would darken them and put Unit Names texts class colorized"]
                    },
                    spacer1 = {
                        order = 2,
                        type = "description",
                        name = " "
                    },
                    normalTheme = {
                        order = 3,
                        type = "execute",
                        name = L['Normal Theme'],
                        func = function() MUI:ChangeTheme('Normal') end
                    },
                    darkTheme = {
                        order = 4,
                        type = "execute",
                        name = L['Dark Theme'],
                        func = function() MUI:ChangeTheme('Dark') end
                    }
                }
            },
            actionBars = {
                order = 9,
                type = "group",
                name = L['Action Bars Visibility'],
                guiInline = true,
                get = function(info) return E.private.MUI.general.profileSettings.actionbars[info[#info]] end,
                set = function(info, value) 
                    E.private.MUI.general.profileSettings.actionbars[info[#info]] = value
                    MUI:ActionBarsSettings() 
                end,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["Click on the button to set action bars visibility."]
                    },
                    spacer1 = {
                        order = 2,
                        type = "description",
                        name = " "
                    },
                    showAlways = {
                        order = 3,
                        type = "execute",
                        name = L['Show Always'],
                        func = function() MUI:ActionBarsVisibility(true) end
                    },
                    showMouseover = {
                        order = 4,
                        type = "execute",
                        name = L['Show Mouseover'],
                        func = function() MUI:ActionBarsVisibility(false) end
                    },
                    showGrid = {
                        order = 5,
                        type = "toggle",
                        name = L["Show Grid"],
                        desc = L["Show Empty cells"]
                    }
                }
            },
            bossMods = {
                order = 10,
                type = "group",
                name = L["Deadly Boss Mods"],
                guiInline = true,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["Click on the button to adjust settings."]
                    },
                    spacer1 = {
                        order = 2,
                        type = "description",
                        name = " "
                    },
                    dbmDpsTank = {
                        order = 3,
                        type = "execute",
                        name = 'DBM DPS/Tank',
                        func = function() MUI:ImportDBM("DPS/Tank") end
                    },
                    dbmHealer = {
                        order = 4,
                        type = "execute",
                        name = 'DBM Healer',
                        func = function() MUI:ImportDBM("Healer") end
                    }
                }
            },
            combatText = {
                order = 11,
                type = "group",
                name = L['Combat Text'],
                guiInline = true,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["Click on the button to adjust settings. If you wish to see standart Blizzard Combat Text, you can skip this step and disable xCT+ addon."]
                    },
                    spacer1 = {
                        order = 2,
                        type = "description",
                        name = " "
                    },
                    blizzard = {
                        order = 3,
                        type = "execute",
                        name = 'Blizzard',
                        func = function() MUI:Import_xCT("Blizzard") end
                    },
                    xctDps = {
                        order = 4,
                        type = "execute",
                        name = 'xCT DPS/Tank',
                        func = function() MUI:Import_xCT("DPS/Tank") end
                    },
                    xctHealer = {
                        order = 5,
                        type = "execute",
                        name = 'xCT Healer',
                        func = function() MUI:Import_xCT("Healer") end
                    }
                }
            }
        }
    }
    
    -- Вкладка Miscellaneous
    MUI.Options.args.miscellaneous = {
        order = 2,
        type = "group",
        name = L["Miscellaneous"],
        args = {
            header = {
                order = 1,
                type = "header",
                name = L["Miscellaneous"]
            },
            automatation = {
                order = 2,
                type = "group",
                name = L["Automatation"],
                guiInline = true,
                get = function(info) return E.private.MUI.automatation[info[#info]] end,
                set = function(info, value) 
                    E.private.MUI.automatation[info[#info]] = value
                    E:StaticPopup_Show('MUI_RELOAD')
                end,
                args = {
                    deleteFill = {
                        order = 1,
                        type = "toggle",
                        name = L["Fill Delete"],
                        desc = L["Automatically fill out the confirmation text to delete items."]
                    }
                }
            },
            unitframes = {
                order = 3,
                type = "group",
                name = L["Unit Frames"],
                guiInline = true,
                get = function(info) return E.private.MUI.unitframes[info[#info]] end,
                set = function(info, value) 
                    E.private.MUI.unitframes[info[#info]] = value
                    MUI:SetTransparency() 
                end,
                args = {
                    transparentHealth = {
                        order = 1,
                        type = "toggle",
                        name = L["Transparent Unit Health"],
                        desc = L["Make Unit Health texture transparent"]
                    }
                }
            }
        }
    }
    
    -- Вкладка Links
    MUI.Options.args.links = {
        order = 3,
        type = "group",
        name = L["Links"],
        args = {
            header = {
                order = 1,
                type = "header",
                name = L["Links"]
            },
            discord = {
                order = 2,
                type = "input",
                name = 'Discord Там я выкладываю описание все что переделываю и добавляю:',
                width = "full",
                get = function() return 'https://discord.gg/addony-dlia-sirus-su-914079030125420565' end
            },
            twitch = {
                order = 3,
                type = "input",
                name = 'Github Тут лежат последние обновления:',
                width = "full",
                get = function() return 'https://github.com/liwalsh/MerfinUI-for-Sirus' end
            }
        }
    }
    
    -- Вкладка Credits
    MUI.Options.args.credits = {
        order = 4,
        type = "group",
        name = L["Credits"],
        args = {
            description = {
                order = 1,
                type = "description",
                name = "Я бы хотел выделить следующих людей, которые так или иначе помогли мне в разработке/переделки сие чуда.\n\nfxpw - Своим сообществом в Discord\nYorogumo - пожертвовал 25к голды\nSEGAZBS - Пожертвовал 25к голды\nEmurst - Пожертвовал 15к голды"
            }
        }
    }

    E.Options.args.MUI = MUI.Options
end