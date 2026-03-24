local E, L, V, P, G = unpack(ElvUI)
local addonName, addonTable = ...

MUI.resolutions = {
  FULL_HD = 'Full HD (1920-1080px)',
  QUAD_HD = 'Quad HD (2560-1440px)',
}

G.MUI = {
	install_version = nil,
}

V.MUI = {
    general = {
        profileSettings = {
			install = {
			},
            media = {
				resolution = addonTable.Resolution,
				font = addonTable.Font,
				texture = addonTable.Texture,
			},
            actionbars = {
                showGrid = false,
                showMouseover = true,
            },
            blacklist = {
                movers = false,
                actionBars = false,
            },
        },
        layout = {
            dark = {
                color = { r = 0.1803921568627451, g = 0.1607843137254902, b = 0.1607843137254902, a = 1 },
                backdrop = { r = 0.5490196078431373, g = 0.4549019607843137, b = 0.4549019607843137, a = 1 },
                dead = { r = 1, g = 0.25098039215686, b = 0.25098039215686, a = 1 },
            }
        },
    },
    automatation = {
        deleteFill = true,
    },
	unitframes = {
		transparentHealth = false,
	},
}
G.MUI = {
}
