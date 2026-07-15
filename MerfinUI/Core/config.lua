local addonName, addonTable = ...
local stformat = string.format
local E, L, V, P, G = unpack(ElvUI) 
local PluginInstaller = E:GetModule('PluginInstaller')
local ACD = E.Libs.AceConfigDialog
local individualUnits = { 'player', 'pet', 'pettarget', 'target', 'targettarget', 'targettargettarget', 'focus', 'focustarget' }

E.Options.name = stformat('%s + %s v%s', E.Options.name, addonTable.Name, addonTable.Version)

function MUI:Config()
    ACH = E.Libs.ACH

    MUI.Options = {
        type = "group",
        name = addonTable.Name,
        childGroups = "tab",
        order = 50,
        args = {}
    }

    MUI.Options.args.installation = {
        order = 1,
        type = "group",
        name = L["Installation"],
        args = {
            header = {
                order = 1,
                type = "header",
                name = L["Installation"]
            },
            install = {
                order = 2,
                type = "group",
                name = L["Re-Run the installation process"],
                guiInline = true,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["Installation Desc"]
                    },
                    spacer1 = {
                        order = 2,
                        type = "description",
                        name = " "
                    },
                    apply = {
                        order = 3,
                        type = "execute",
                        name = L['UI Install'],
                        desc = L['UI Install Desc'],
                        func = function() PluginInstaller:Queue(MUI.InstallerData) end
                    }
                }
            },

            links = {
                order = 3,
                type = "group",
                name = L["Links"],
                guiInline = true,
                args = {
                    discord = {
                        order = 1,
                        type = "input",
                        name = L['Discord Link Name'],
                        width = "full",
                        get = function() return 'https://discord.gg/addony-dlia-sirus-su-914079030125420565' end
                    },
                    twitch = {
                        order = 2,
                        type = "input",
                        name = L['GitHub Link Name'],
                        width = "full",
                        get = function() return 'https://github.com/liwalsh/MerfinUI-for-Sirus' end
                    }
                }
            }
        }
    }

    MUI.Options.args.profiles = {
        order = 2,
        type = "group",
        name = L['Profile Settings'],
        childGroups = "tab",
        args = {
            header = {
                order = 1,
                type = "header",
                name = L["Profile Settings"]
            },

            media = {
                order = 2,
                type = "group",
                name = L["Media Settings"],
                guiInline = true,
                get = function(info) return E.private.MUI.general.profileSettings.media[info[#info]] end,
                set = function(info, value)
                    E.private.MUI.general.profileSettings.media[info[#info]] = value
                end,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["Media Settings Desc"]
                    },
                    resolution = {
                        order = 2,
                        type = "select",
                        name = L["Display resolution"],
                        values = MUI.resolutions
                    },
                    font = {
                        order = 3,
                        type = "select",
                        dialogControl = "LSM30_Font",
                        name = L['Default Font'],
                        desc = L['Font that core of the UI will use.'],
                        get = function(info) return E.private.MUI.general.profileSettings.media.font end,
                        set = function(info, value)
                            E.private.MUI.general.profileSettings.media.font = value
                        end,
                        values = AceGUIWidgetLSMlists.font
                    },
                    texture = {
                        order = 4,
                        type = "select",
                        dialogControl = "LSM30_Statusbar",
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
                order = 3,
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
                order = 4,
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

            automatation = {
                order = 5,
                type = "group",
                name = L["Automatation"],
                guiInline = true,
                get = function(info) return E.private.MUI.automatation[info[#info]] end,
                set = function(info, value)
                    E.private.MUI.automatation[info[#info]] = value
                    E:StaticPopup_Show('MUI_RELOAD')
                end,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["Automatation Desc"]
                    },
                    deleteFill = {
                        order = 2,
                        type = "toggle",
                        name = L["Fill Delete"],
                        desc = L["Automatically fill out the confirmation text to delete items."]
                    }
                }
            },

            unitframes = {
                order = 6,
                type = "group",
                name = L["Unit Frames"],
                guiInline = true,
                get = function(info) return E.private.MUI.unitframes[info[#info]] end,
                set = function(info, value)
                    E.private.MUI.unitframes[info[#info]] = value
                    MUI:SetTransparency()
                end,
                args = {
                    desc = {
                        order = 1,
                        type = "description",
                        name = L["Unit Frames Desc"]
                    },
                    transparentHealth = {
                        order = 2,
                        type = "toggle",
                        name = L["Transparent Unit Health"],
                        desc = L["Make Unit Health texture transparent"]
                    }
                }
            },

            actionBars = {
                order = 7,
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
                        name = L["Action Bars Desc"]
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
                        desc = L['Show Always Desc'],
                        func = function() MUI:ActionBarsVisibility(true) end
                    },
                    showMouseover = {
                        order = 4,
                        type = "execute",
                        name = L['Show Mouseover'],
                        desc = L['Show Mouseover Desc'],
                        func = function() MUI:ActionBarsVisibility(false) end
                    },
                    showGrid = {
                        order = 5,
                        type = "toggle",
                        name = L["Show Grid"],
                        desc = L["Show Empty cells"]
                    }
                }
            }
        }
    }

    MUI.Options.args.addonProfiles = {
        order = 3,
        type = "group",
        name = L["Addon Profiles"],
        childGroups = "tab",
        args = {
            header = {
                order = 1,
                type = "header",
                name = L["Addon Profiles"]
            },

            elvuiProfiles = {
                order = 2,
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
                        desc = L['ElvUI DPS/Tank Desc'],
                        func = function() MUI:ImportElvUI('DPS/Tank') end
                    },
                    healerH = {
                        order = 4,
                        type = "execute",
                        name = 'Healer-H',
                        desc = L['ElvUI Healer-H Desc'],
                        func = function() MUI:ImportElvUI('Healer-H') end
                    },
                    healerV = {
                        order = 5,
                        type = "execute",
                        name = 'Healer-V',
                        desc = L['ElvUI Healer-V Desc'],
                        func = function() MUI:ImportElvUI('Healer-V') end
                    }
                }
            },

            bossMods = {
                order = 3,
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
                        desc = L['DBM DPS/Tank Desc'],
                        func = function() MUI:ImportDBM("DPS/Tank") end,
                        disabled = function() return not IsAddOnLoaded('DBM-Core') end
                    },
                    dbmHealer = {
                        order = 4,
                        type = "execute",
                        name = 'DBM Healer',
                        desc = L['DBM Healer Desc'],
                        func = function() MUI:ImportDBM("Healer") end,
                        disabled = function() return not IsAddOnLoaded('DBM-Core') end
                    }
                }
            },

            details = {
                order = 4,
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
                        desc = L['Details Desc'],
                        func = function() MUI:ImportDetails('DARK') end,
                        disabled = function() return not IsAddOnLoaded('Details') end
                    }
                }
            },

            combatText = {
                order = 5,
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
                        desc = L['xCT Blizzard Desc'],
                        func = function() MUI:Import_xCT("Blizzard") end
                    },
                    xctDps = {
                        order = 4,
                        type = "execute",
                        name = 'xCT DPS',
                        desc = L['xCT DPS Desc'],
                        func = function() MUI:Import_xCT("DPS") end,
                        disabled = function() return not IsAddOnLoaded('xCT+') end
                    },
                    xctTank = {
                        order = 5,
                        type = "execute",
                        name = 'xCT Tank',
                        desc = L['xCT Tank Desc'],
                        func = function() MUI:Import_xCT("Tank") end,
                        disabled = function() return not IsAddOnLoaded('xCT+') end
                    },
                    xctHealer = {
                        order = 6,
                        type = "execute",
                        name = 'xCT Healer',
                        desc = L['xCT Healer Desc'],
                        func = function() MUI:Import_xCT("Healer") end,
                        disabled = function() return not IsAddOnLoaded('xCT+') end
                    }
                }
            },

            colorTheme = {
                order = 6,
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
                        desc = L['Normal Theme Desc'],
                        func = function() MUI:ChangeTheme('Normal') end
                    },
                    darkTheme = {
                        order = 4,
                        type = "execute",
                        name = L['Dark Theme'],
                        desc = L['Dark Theme Desc'],
                        func = function() MUI:ChangeTheme('Dark') end
                    }
                }
            }
        }
    }

    MUI.Options.args.credits = {
        order = 4,
        type = "group",
        name = L["Credits"],
        args = {
            header = {
                order = 1,
                type = "header",
                name = L["Credits"]
            },
            description = {
                order = 2,
                type = "description",
                name = L["Credits Desc"]
            }
        }
    }

    E.Options.args.MUI = MUI.Options
end