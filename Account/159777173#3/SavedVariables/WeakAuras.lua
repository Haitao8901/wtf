
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["displays"] = {
		["增益提示 奥格瑞玛 耐力 opt"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["message_type"] = "SAY",
					["message"] = "已获得增益效果【耐力】",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\kaching.ogg",
					["do_message"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["useRem"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["auraspellids"] = {
							"313749", -- [1]
						},
						["rem"] = "3590",
						["spellIds"] = {
						},
						["unit"] = "player",
						["remOperator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 8,
			["subRegions"] = {
			},
			["load"] = {
				["use_never"] = false,
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = true,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["fixedWidth"] = 200,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "增益提示 奥格瑞玛 耐力 opt",
			["justify"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["uid"] = "2rDNCPWJEq5",
			["selfPoint"] = "BOTTOM",
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["背景 剩余时间"] = {
			["xOffset"] = 16,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -12,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"毒药|r\",\n        \"龙息|r\",\n        \"回血|r\",\n        \"减伤|r\",\n        \"理智|r\",\n    }\n    aura_env.color=\"紫\"\nelse\n    aura_env.kind={\n        \"|cff6A84BCPoison|r\",\n        \"|cffFF7373Breath Fire|r\",\n        \"|cffFFAA6CHealing|r\",\n        \"|cff6CFFFDDefensive|r\",\n        \"|cffF0FF00Sanity|r\",\n    }\n    aura_env.color=\"Purple\"\nend\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\")\n\nb:SetScript(\"OnClick\", function()\n        \n        WeakAuras.ScanEvents(\"OrgColor\",5)\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["unit"] = "player",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 8,
			["subRegions"] = {
			},
			["height"] = 40,
			["load"] = {
				["ingroup"] = {
				},
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["zoneId"] = "1470, 1469",
				["use_size"] = true,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["parent"] = "8.3 大幻象监控 布局美化",
			["color"] = {
				0, -- [1]
				0.58823529411765, -- [2]
				1, -- [3]
				0.76866233348846, -- [4]
			},
			["conditions"] = {
			},
			["uid"] = "xKj6zxGqvqc",
			["semver"] = "1.0.7",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "背景 剩余时间",
			["width"] = 75,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["stickyDuration"] = false,
			["url"] = "https://wago.io/JxMRlFNNX/8",
		},
		["New 34"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 4.0001220703125,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_custom"] = false,
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"腐化之眼", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"315161", -- [1]
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = true,
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 21,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 50,
			["load"] = {
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 33",
			["alpha"] = 1,
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 34",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 50,
			["config"] = {
			},
			["uid"] = "hi)W7H5BH1G",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "starShakeDecay",
					["easeStrength"] = 3,
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["preset"] = "pulse",
					["easeStrength"] = 3,
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["zoom"] = 0,
			["icon"] = true,
		},
		["New 3"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["auraspellids"] = {
							"193359", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
			},
			["height"] = 55,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 10",
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 3",
			["width"] = 55,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "qUhq16Xplqt",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["New 33"] = {
			["grow"] = "DOWN",
			["controlledChildren"] = {
				"New 32", -- [1]
				"New 34", -- [2]
				"New 35", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 245.000732421875,
			["preferToUpdate"] = false,
			["yOffset"] = 341.0001831054688,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["names"] = {
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["easeStrength"] = 3,
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["animate"] = false,
			["internalVersion"] = 29,
			["scale"] = 1,
			["useLimit"] = false,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["limit"] = 5,
			["rotation"] = 0,
			["anchorPoint"] = "CENTER",
			["constantFactor"] = "RADIUS",
			["authorOptions"] = {
			},
			["borderOffset"] = 4,
			["arcLength"] = 360,
			["tocversion"] = 80300,
			["id"] = "New 33",
			["borderInset"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["gridWidth"] = 5,
			["config"] = {
			},
			["uid"] = "AWSL5E)0yjP",
			["selfPoint"] = "TOP",
			["conditions"] = {
			},
			["sort"] = "none",
			["rowSpace"] = 1,
		},
		["Horrific Visions - Crystal Zone 2"] = {
			["xOffset"] = 80,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 40,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["custom_type"] = "event",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["names"] = {
						},
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVCrystal HVCrystal2 CRYSTAL_FOUND",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
						["check"] = "event",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CRYSTAL_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    \n    if event == \"HVCrystal2\" and message == 2 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVCrystal\" and message == 2 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 2 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone2\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Spirits\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Mage\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone2\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Spirits\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Dwarven\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal\", 2)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 2)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal2\", 2)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["stickyDuration"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["auto"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 2",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 70,
			["frameStrata"] = 1,
			["uid"] = "8SpSb3lp()g",
			["inverse"] = false,
			["url"] = "https://wago.io/VisionCounter/19",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
		},
		["药水计时 回血 opt"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = 88,
			["preferToUpdate"] = false,
			["yOffset"] = -71,
			["anchorPoint"] = "CENTER",
			["sparkHidden"] = "NEVER",
			["cooldownSwipe"] = true,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["unit"] = "player",
						["auraspellids"] = {
							"315845", -- [1]
						},
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["event"] = "Range Check",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["custom_type"] = "stateupdate",
						["useExactSpellId"] = true,
						["names"] = {
						},
						["use_unit"] = true,
						["spellName"] = 0,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "8.3 大幻象监控 布局美化",
			["barColor"] = {
				1, -- [1]
				0.090196078431373, -- [2]
				0.10980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["icon"] = true,
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
				{
					["glowFrequency"] = 0.5,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 25,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["value"] = "10",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "回血药水还有10秒，即将被【减速】",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["value"] = "30",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
				},
				["use_never"] = false,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				0.49803921568627, -- [2]
				0.78039215686275, -- [3]
				0.76866233348846, -- [4]
			},
			["uid"] = "jRzKzpf7zFc",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51866272091866, -- [4]
			},
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["icon_side"] = "LEFT",
			["zoom"] = 0,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["spark"] = false,
			["tocversion"] = 80300,
			["id"] = "药水计时 回血 opt",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["alpha"] = 1,
			["width"] = 75,
			["semver"] = "1.0.7",
			["config"] = {
			},
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["version"] = 8,
			["url"] = "https://wago.io/JxMRlFNNX/8",
		},
		["春哥提醒 opt"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.14117647058824, -- [2]
				0.14509803921569, -- [3]
				0, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["actions"] = {
				["start"] = {
					["glow_action"] = "hide",
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
					["do_sound"] = true,
					["do_glow"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
					["do_custom"] = false,
					["glow_frame"] = "WeakAuras:春哥提醒",
				},
				["finish"] = {
					["message"] = "我已经是个死人了。",
					["do_message"] = true,
					["message_type"] = "SAY",
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"304816", -- [1]
							"317865", -- [2]
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 8,
			["subRegions"] = {
			},
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["ingroup"] = {
				},
				["use_never"] = false,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 200,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["duration_type"] = "seconds",
					["scaley"] = 1,
					["easeStrength"] = 3,
					["rotate"] = 0,
					["duration"] = "0.5",
					["colorA"] = 1,
				},
				["main"] = {
					["colorR"] = 1,
					["duration_type"] = "seconds",
					["colorA"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local bounceDistance = math.sin(progress * math.pi)\n      return startX + (bounceDistance * deltaX), startY + (bounceDistance * deltaY)\n    end\n  ",
					["preset"] = "alphaPulse",
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorB"] = 1,
					["translateType"] = "bounce",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["scaley"] = 1,
					["scalex"] = 1,
				},
				["finish"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "custom",
					["easeType"] = "none",
					["preset"] = "fade",
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["duration_type"] = "seconds",
					["scaley"] = 1,
					["easeStrength"] = 3,
					["rotate"] = 0,
					["duration"] = "0.5",
					["colorA"] = 1,
				},
			},
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["fixedWidth"] = 200,
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "春哥提醒 opt",
			["semver"] = "1.0.7",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["uid"] = "V)wDFwddrYd",
			["automaticWidth"] = "Auto",
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
		},
		["背景 龙息药水"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = 16,
			["preferToUpdate"] = false,
			["yOffset"] = -71,
			["anchorPoint"] = "CENTER",
			["id"] = "背景 龙息药水",
			["cooldownSwipe"] = true,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["matchesShowOn"] = "showOnMissing",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["useExactSpellId"] = true,
						["spellName"] = 0,
						["showClones"] = false,
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["custom_type"] = "stateupdate",
						["event"] = "Conditions",
						["buffShowOn"] = "showOnActive",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["names"] = {
						},
						["duration"] = "1",
						["auraspellids"] = {
							"315817", -- [1]
						},
						["unit"] = "player",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["parent"] = "8.3 大幻象监控 布局美化",
			["barColor"] = {
				1, -- [1]
				0.090196078431373, -- [2]
				0.10980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["cooldownEdge"] = false,
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "龙息药水",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
			},
			["height"] = 25,
			["conditions"] = {
			},
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
				},
				["zoneId"] = "1470, 1469",
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["authorOptions"] = {
			},
			["color"] = {
				1, -- [1]
				0.32156862745098, -- [2]
				0.11372549019608, -- [3]
				0.78255224227905, -- [4]
			},
			["uid"] = "OaSvWteyxeM",
			["config"] = {
			},
			["icon"] = true,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 2,
			["icon_side"] = "LEFT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["spark"] = false,
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["sparkHidden"] = "NEVER",
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["width"] = 75,
			["semver"] = "1.0.7",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkOffsetY"] = 0,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51866272091866, -- [4]
			},
			["selfPoint"] = "CENTER",
		},
		["词缀提示 三区 灌铅脚步 opt"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -37.58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["auraspellids"] = {
							"306583", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 40,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 91,
			["load"] = {
				["use_never"] = false,
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = true,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["regionType"] = "icon",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["icon"] = true,
			["xOffset"] = 171,
			["parent"] = "8.3 大幻象监控 布局美化",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "词缀提示 三区 灌铅脚步 opt",
			["config"] = {
			},
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 91,
			["uid"] = "OZJSzOmbyF8",
			["inverse"] = false,
			["auto"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["value"] = "10",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
						{
						}, -- [2]
					},
				}, -- [1]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
		},
		["Horrific Visions - Chest Zone 2"] = {
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 40,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/19",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone2\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"精神谷\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"矮人区\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone2\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"精神谷\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"矮人区\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVChest\", 2)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 2)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVChest2\", 2)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["custom_type"] = "event",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["names"] = {
						},
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unit"] = "player",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVChest HVChest2 LOOT_OPENED",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
						["check"] = "event",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"HVChest\" and message == 2 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest2\" and message == 2 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"LOOT_OPENED\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count=aura_env.count + 1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 2 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\n    \nend\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["icon"] = true,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 2",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 70,
			["frameStrata"] = 1,
			["uid"] = "qClTapAg03I",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["stickyDuration"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["药水提示 蓝 opt"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["unit"] = "player",
						["use_unit"] = true,
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(_,id)\n    if id == 1 then\n        aura_env.text=aura_env.kind[3]\n    elseif id ==2 then\n        aura_env.text=aura_env.kind[4]\n    elseif id ==3 then\n        aura_env.text=aura_env.kind[5]\n    elseif id ==4 then\n        aura_env.text=aura_env.kind[1]\n    elseif id ==5 then\n        aura_env.text=aura_env.kind[2]\n    end\n    return true\nend",
						["events"] = "OrgColor",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%c2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.96862745098039, -- [2]
						0.9921568627451, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["ingroup"] = {
				},
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_never"] = false,
				["use_zonegroupId"] = false,
				["use_size"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["zoom"] = 0,
			["xOffset"] = 60.000244140625,
			["regionType"] = "icon",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["parent"] = "8.3 大幻象监控 布局美化",
			["desaturate"] = false,
			["conditions"] = {
			},
			["config"] = {
			},
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "药水提示 蓝 opt",
			["width"] = 45,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "Z2MM1I4xYLt",
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"|cff6A84BC毒药|r\",\n        \"|cffFFFFFF龙息|r\",\n        \"|cffFFFFFF回血|r\",\n        \"|cffFFFFFF减伤|r\",\n        \"|cffF0FF00理智|r\",\n    }\n    aura_env.color=\"蓝\"\nelse\n    aura_env.kind={\n        \"Poison|r\",\n        \"Breath Fire|r\",\n        \"Healing|r\",\n        \"Defensive|r\",\n        \"Sanity|r\",\n    }\n    aura_env.color=\"Blue\"\nend\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\")\n\nb:SetScript(\"OnClick\", function()\n        \n        WeakAuras.ScanEvents(\"OrgColor\",4)\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["color"] = {
				0, -- [1]
				0.30980392156863, -- [2]
				1, -- [3]
				0.77000001072884, -- [4]
			},
		},
		["Horrific Visions - Chest Text"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "宝箱",
			["yOffset"] = 104.99993896484,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["duration"] = "1",
						["use_unit"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 19,
			["subRegions"] = {
			},
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["regionType"] = "text",
			["semver"] = "1.0.18",
			["preferToUpdate"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["fixedWidth"] = 200,
			["justify"] = "LEFT",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Text",
			["xOffset"] = 1.0000610351563,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "YXSiqTYRak2",
			["selfPoint"] = "BOTTOM",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["url"] = "https://wago.io/VisionCounter/19",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["New 13"] = {
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["auraspellids"] = {
							"193357", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 55,
			["load"] = {
				["use_spec"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 10",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 13",
			["width"] = 55,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "hCXrHBt9ojL",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
		},
		["背景 回血药水"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = 88,
			["preferToUpdate"] = false,
			["yOffset"] = -71,
			["anchorPoint"] = "CENTER",
			["id"] = "背景 回血药水",
			["cooldownSwipe"] = true,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["use_absorbMode"] = true,
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["duration"] = "1",
						["type"] = "aura2",
						["use_unit"] = true,
						["auraspellids"] = {
							"315845", -- [1]
						},
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Range Check",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["custom_type"] = "stateupdate",
						["unevent"] = "auto",
						["matchesShowOn"] = "showOnMissing",
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["parent"] = "8.3 大幻象监控 布局美化",
			["barColor"] = {
				1, -- [1]
				0.090196078431373, -- [2]
				0.10980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["color"] = {
				1, -- [1]
				0.49411764705882, -- [2]
				0.75686274509804, -- [3]
				0.76866233348846, -- [4]
			},
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "回血药水",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
			},
			["height"] = 25,
			["conditions"] = {
			},
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
				},
				["zoneId"] = "1470, 1469",
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["authorOptions"] = {
			},
			["version"] = 8,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "LUZAwhrGk8I",
			["cooldownTextDisabled"] = false,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 2,
			["icon_side"] = "LEFT",
			["zoom"] = 0,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["spark"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = false,
			["tocversion"] = 80300,
			["sparkHidden"] = "NEVER",
			["semver"] = "1.0.7",
			["alpha"] = 1,
			["width"] = 75,
			["icon"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51866272091866, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["selfPoint"] = "CENTER",
		},
		["药水提示 黑 opt"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["names"] = {
						},
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["duration"] = "1",
						["events"] = "OpenShowCardGM",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(_,id)\n    if id == 1 then\n        aura_env.text=aura_env.kind[1]\n    elseif id ==2 then\n        aura_env.text=aura_env.kind[2]\n    elseif id ==3 then\n        aura_env.text=aura_env.kind[3]\n    elseif id ==4 then\n        aura_env.text=aura_env.kind[4]\n    elseif id ==5 then\n        aura_env.text=aura_env.kind[5]\n    end\n    return true\nend",
						["events"] = "OrgColor",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%c2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["ingroup"] = {
				},
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_never"] = false,
				["use_zonegroupId"] = false,
				["use_size"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["color"] = {
				0.52941176470588, -- [1]
				0.52941176470588, -- [2]
				0.52941176470588, -- [3]
				0.80000001192093, -- [4]
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["parent"] = "8.3 大幻象监控 布局美化",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"|cff6A84BC毒药|r\",\n        \"|cffFFFFFF龙息|r\",\n        \"|cffFFFFFF回血|r\",\n        \"|cffFFFFFF减伤|r\",\n        \"|cffF0FF00理智|r\",\n    }\n    aura_env.color=\"黑\"\nelse\n    aura_env.kind={\n        \"Poison|r\",\n        \"Breath Fire|r\",\n        \"Healing|r\",\n        \"Defensive|r\",\n        \"Sanity|r\",\n    }\n    aura_env.color=\"Black\"\nend\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\")\n\nb:SetScript(\"OnClick\", function()\n        \n        WeakAuras.ScanEvents(\"OrgColor\",1)\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["conditions"] = {
			},
			["uid"] = "mprdC)hOr2j",
			["semver"] = "1.0.7",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "药水提示 黑 opt",
			["width"] = 45,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = -70,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["url"] = "https://wago.io/JxMRlFNNX/8",
		},
		["Horrific Visions - Crystal Zone 3"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/19",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone3\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Wisdom\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Trade\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone3\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Wisdom\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"OldTown\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal\", 3)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 3)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal2\", 3)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["custom_type"] = "event",
						["names"] = {
						},
						["duration"] = "1",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["unevent"] = "auto",
						["events"] = "OpenShowCardGM",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVCrystal HVCrystal2 CRYSTAL_FOUND",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
						["check"] = "event",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CRYSTAL_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    \n    if event == \"HVCrystal2\" and message == 3 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVCrystal\" and message == 3 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 3 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\nend",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["icon"] = true,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["uid"] = "A8uqpwl1hVj",
			["auto"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 3",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 70,
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 80,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["selfPoint"] = "CENTER",
			["cooldownEdge"] = false,
		},
		["药水提示 紫 opt"] = {
			["xOffset"] = 103,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["duration"] = "1",
						["events"] = "OpenShowCardGM",
						["names"] = {
						},
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(_,id)\n     if id == 1 then\n        aura_env.text=aura_env.kind[2]\n    elseif id ==2 then\n        aura_env.text=aura_env.kind[3]\n    elseif id ==3 then\n        aura_env.text=aura_env.kind[4]\n    elseif id ==4 then\n       aura_env.text=aura_env.kind[5]\n    elseif id ==5 then\n        aura_env.text=aura_env.kind[1]\n    end\n    return true\nend",
						["events"] = "OrgColor",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%c2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						0.98823529411765, -- [1]
						0.99607843137255, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["zoneId"] = "1470, 1469",
				["ingroup"] = {
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["zoom"] = 0,
			["color"] = {
				0.58823529411765, -- [1]
				0, -- [2]
				1, -- [3]
				0.76866233348846, -- [4]
			},
			["regionType"] = "icon",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["parent"] = "8.3 大幻象监控 布局美化",
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["uid"] = "SPjaB)R5l4G",
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "药水提示 紫 opt",
			["width"] = 45,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"|cff6A84BC毒药|r\",\n        \"|cffFFFFFF龙息|r\",\n        \"|cffFFFFFF回血|r\",\n        \"|cffFFFFFF减伤|r\",\n        \"|cffF0FF00理智|r\",\n    }\n    aura_env.color=\"紫\"\nelse\n    aura_env.kind={\n        \"Poison|r\",\n        \"Breath Fire|r\",\n        \"Healing|r\",\n        \"Defensive|r\",\n        \"Sanity|r\",\n    }\n    aura_env.color=\"Purple\"\nend\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\")\n\nb:SetScript(\"OnClick\", function()\n        \n        WeakAuras.ScanEvents(\"OrgColor\",5)\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["增益提示 暴风城 全能 opt"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["message_type"] = "SAY",
					["message"] = "已获得增益效果【全能】",
					["do_message"] = true,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\kaching.ogg",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["rem"] = "3590",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"314203", -- [1]
						},
						["remOperator"] = ">=",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 8,
			["subRegions"] = {
			},
			["load"] = {
				["use_zoneId"] = true,
				["use_size"] = true,
				["use_never"] = false,
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneId"] = "1470, 1469",
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["conditions"] = {
			},
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "增益提示 暴风城 全能 opt",
			["justify"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["uid"] = "VcYlNw6gcBd",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["wordWrap"] = "WordWrap",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["当前理智 opt"] = {
			["outline"] = "None",
			["color"] = {
				1, -- [1]
				1, -- [2]
				0.98823529411765, -- [3]
				0, -- [4]
			},
			["displayText"] = "%p",
			["yOffset"] = -14,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["sound"] = "Interface\\AddOns\\ElvUI\\Media\\Sounds\\AwwCrap.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["names"] = {
						},
						["power"] = "5000",
						["power_operator"] = "<=",
						["use_power"] = true,
						["event"] = "Alternate Power",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["font"] = "伤害数字",
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
			},
			["height"] = 64,
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["encounterid"] = "2298",
				["use_encounterid"] = false,
				["difficulty"] = {
				},
				["use_zone"] = false,
				["ingroup"] = {
				},
				["zoneId"] = "1470, 1469",
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = true,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 20,
			["alpha"] = 1,
			["width"] = 64,
			["automaticWidth"] = "Auto",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["conditions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["uid"] = "0B93ni6g8C8",
			["wordWrap"] = "WordWrap",
			["authorOptions"] = {
			},
			["auto"] = false,
			["zoom"] = 0,
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "当前理智 opt",
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.7",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = -56,
			["fixedWidth"] = 200,
			["icon"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "bounce",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["词缀提示 二区 恐虫症 opt"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -37.58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"311390", -- [1]
						},
						["names"] = {
						},
						["useExactSpellId"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 40,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["type"] = "subglow",
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 91,
			["load"] = {
				["use_never"] = false,
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = true,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["regionType"] = "icon",
			["xOffset"] = 171,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["zoom"] = 0,
			["parent"] = "8.3 大幻象监控 布局美化",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "词缀提示 二区 恐虫症 opt",
			["uid"] = "PGAaMVxfQVs",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 91,
			["config"] = {
			},
			["inverse"] = false,
			["auto"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["value"] = "3",
						["variable"] = "stacks",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
			},
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["selfPoint"] = "CENTER",
		},
		["增益提示 奥格瑞玛 暴击 opt"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["message"] = "已获得增益效果【暴击】",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\kaching.ogg",
					["do_message"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["useExactSpellId"] = true,
						["rem"] = "3590",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"313961", -- [1]
						},
						["remOperator"] = ">=",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 8,
			["subRegions"] = {
			},
			["load"] = {
				["use_zoneId"] = true,
				["use_size"] = true,
				["use_never"] = false,
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneId"] = "1470, 1469",
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["semver"] = "1.0.7",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["fixedWidth"] = 200,
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "增益提示 奥格瑞玛 暴击 opt",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["uid"] = "BcEy6hj81zL",
			["selfPoint"] = "BOTTOM",
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["词缀提示 一区 失调减速 opt"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -37.58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"306431", -- [1]
						},
						["names"] = {
						},
						["useExactSpellId"] = true,
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "减速",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 30,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["type"] = "subglow",
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 91,
			["load"] = {
				["use_zoneId"] = true,
				["use_size"] = true,
				["use_never"] = false,
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneId"] = "1470, 1469",
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["xOffset"] = 171,
			["parent"] = "8.3 大幻象监控 布局美化",
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "词缀提示 一区 失调减速 opt",
			["uid"] = "6VAc6YGI4lz",
			["alpha"] = 1,
			["width"] = 91,
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["zoom"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["selfPoint"] = "CENTER",
		},
		["New 9"] = {
			["xOffset"] = -373.0000610351563,
			["preferToUpdate"] = false,
			["yOffset"] = -45.4998779296875,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["useName"] = true,
						["auranames"] = {
							"龙族强化", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 60,
			["load"] = {
				["use_spec"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 9",
			["width"] = 60,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "gw()kQBV5LF",
			["inverse"] = false,
			["config"] = {
			},
			["conditions"] = {
			},
			["alpha"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Horrific Visions - Crystal Zone 4"] = {
			["xOffset"] = 80,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -40,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/19",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone4\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Drag\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Dwarven\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
					["do_message"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone4\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Drag\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Trade\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal\", 4)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 4)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal2\", 4)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Conditions",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVCrystal HVCrystal2 CRYSTAL_FOUND",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
						["check"] = "event",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CRYSTAL_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    \n    if event == \"HVCrystal2\" and message == 4 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVCrystal\" and message == 4 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 4 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\nend",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["desaturate"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 4",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 70,
			["frameStrata"] = 1,
			["uid"] = "4Em499oQXXa",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
		},
		["背景 额外损失"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -12,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Conditions",
						["use_unit"] = true,
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 8,
			["subRegions"] = {
			},
			["height"] = 40,
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["zoneId"] = "1470, 1469",
				["ingroup"] = {
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["zoom"] = 0,
			["color"] = {
				0.52941176470588, -- [1]
				0.49019607843137, -- [2]
				0.89803921568627, -- [3]
				0.7547742575407, -- [4]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"毒药|r\",\n        \"龙息|r\",\n        \"回血|r\",\n        \"减伤|r\",\n        \"理智|r\",\n    }\n    aura_env.color=\"紫\"\nelse\n    aura_env.kind={\n        \"|cff6A84BCPoison|r\",\n        \"|cffFF7373Breath Fire|r\",\n        \"|cffFFAA6CHealing|r\",\n        \"|cff6CFFFDDefensive|r\",\n        \"|cffF0FF00Sanity|r\",\n    }\n    aura_env.color=\"Purple\"\nend\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\")\n\nb:SetScript(\"OnClick\", function()\n        \n        WeakAuras.ScanEvents(\"OrgColor\",5)\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = false,
				},
			},
			["parent"] = "8.3 大幻象监控 布局美化",
			["stickyDuration"] = false,
			["conditions"] = {
			},
			["uid"] = "yi38RE4CUoG",
			["semver"] = "1.0.7",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "背景 额外损失",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 2,
			["width"] = 75,
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["xOffset"] = 88,
		},
		["Zone Handler"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "\n",
			["yOffset"] = 104.99993896484,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.curmad = 0\naura_env.curzone = 0\naura_env.curemote = 0\naura_env.lastzone = 0\n\n\naura_env.madness = {\n    [\"316707\"] = 1, -- Starting Zone Promised Power\n    [\"311344\"] = 1, -- Starting Zone Bloodthirsty\n    [\"306413\"] = 1, -- Starting Zone Desynchronized \n    [\"已经进入腐化区域\"] = 2, -- Entering T2\n    [\"306241\"] = 2, -- T2 Scorched Feet\n    [\"306954\"] = 2, -- T2 Dark Delusions\n    [\"311389\"] = 2, -- T2 Entomophobia\n    [\"已经进入失落区域\"] = 3, -- Entering T3\n    [\"306531\"] = 3, -- T3 Haunting Shadows\n    [\"306579\"] = 3, -- T3 Leaden Foot\n    [\"316557\"] = 3, -- T3 Split Personality\n    [\"幻象探索结束\"] = 4,\n}\n\n\naura_env.emotes = {\n    \n    [\"我们需要帮助\"] = 2, -- Spirits\n    [\"我差点就死了\"] = 2,\n    [\"我们自由了\"] = 2,\n    [\"你们有别的选择\"] = 2, --Dwarven\n    [\"把炸药安装在这附近\"] = 2, \n    [\"全放好了\"] = 2, \n    [\"杜隆坦的假儿子\"] = 3, -- Wisdom Voicelines\n    [\"不砸了\"] = 3,\n    [\"虚空在呼唤你\"] = 3,\n    [\"瓦莉拉逃跑了是什么意思\"] = 3, -- Old Town\n    [\"肖尔的副官有军情七处\"] = 3,\n    [\"你躲不掉的\"] = 3,\n    [\"没人能逃出恩佐斯的掌心\"] = 3,\n    [\"干掉那个兽人\"] = 4, -- Garona Voicelines\n    [\"一切都在我掌控之中\"] = 4,\n    [\"快去暗巷区找幸存者\"] = 4,\n    [\"斯诺恩发疯了\"] = 4,\n    [\"去看看这里有没有人\"]= 4,\n    [\"这下糟了\"] = 4,\n    [\"背弃圣光\"] = 4, -- Trade District\n    [\"愚蠢的圣骑士\"] = 4,\n    [\"胆敢窃取属于我\"] = 4,\n    [\"感谢圣光\"] = 4,\n    [\"他们都疯了\"] = 4,\n    [\"你不过是恩佐斯无尽大军\"] = 5, -- Rexxar voicelines\n    [\"我会把你的血肉喂给\"] = 5,\n    [\"我的野兽会吞噬你\"] = 5,\n    [\"迎接虚空的新纪元\"] = 5, -- Mage Quarter\n    [\"虚空会吞噬这座城市\"] = 5,\n    [\"阻止我们\"] = 5,\n    [\"有客人来了\"] = 5,\n    \n}\n\naura_env.index = {\n    [1] = 1,\n    [2] = 2,\n    [3] = 3,\n    [4] = 2,\n    [5] = 3,\n    \n}\n\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["duration"] = "1",
						["event"] = "Chat Message",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event, message)\n    if message then\n        for k, v in pairs(aura_env.madness) do\n            if string.find(message, k) then\n                aura_env.curmad = v\n                if v == aura_env.index[aura_env.curemote] then -- checking if madness fits the last seen emote\n                    if aura_env.curzone ~= aura_env.curemote then\n                        aura_env.lastzone = aura_env.curzone\n                    end\n                    aura_env.curzone = aura_env.curemote\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", aura_env.curemote)\n                elseif v == 1 then -- starting zone\n                    if aura_env.curzone ~= 1 then\n                        aura_env.lastzone = aura_env.curzone\n                    end\n                    aura_env.curzone = 1\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 1)\n                elseif v == aura_env.index[aura_env.lastzone] then -- checking if madness fits the last zone you were in (going back from T3 to T2 when no emote fires)\n                    local store = aura_env.lastzone\n                    aura_env.lastzone = aura_env.curzone\n                    aura_env.curzone = store\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", aura_env.curzone)\n                elseif v == 4 then -- end of vision run\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 6)\n                end\n                break\n            end\n        end\n        \n        \n        for k, v in pairs(aura_env.emotes) do -- iterating through monster yells/says\n            if string.find(message, k) then\n                aura_env.curemote = v -- setting last seen emote to the zone number\n                if aura_env.index[v] == aura_env.curmad then -- checking if current madnesses fit the emote found\n                    if aura_env.curzone ~= v then -- preventing double triggers\n                        aura_env.lastzone = aura_env.curzone\n                    end\n                    aura_env.curzone = v\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", v)\n                end\n                break\n            end\n        end\n    end\nend",
						["spellIds"] = {
						},
						["events"] = "RAID_BOSS_WHISPER CHAT_MSG_MONSTER_YELL  CHAT_MSG_MONSTER_SAY CHAT_MSG_RAID_BOSS_WHISPER",
						["check"] = "event",
						["custom_type"] = "status",
						["unit"] = "player",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 19,
			["subRegions"] = {
			},
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["regionType"] = "text",
			["url"] = "https://wago.io/VisionCounter/19",
			["preferToUpdate"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["fixedWidth"] = 200,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Zone Handler",
			["justify"] = "LEFT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "81hXLijfGka",
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["conditions"] = {
			},
			["selfPoint"] = "BOTTOM",
			["xOffset"] = 83.000061035156,
		},
		["New 23"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 1776,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 1776,
						["names"] = {
						},
						["use_track"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "ok",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 50,
			["load"] = {
				["use_spec"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 21",
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 23",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 50,
			["config"] = {
			},
			["uid"] = "JpXUbM70rBR",
			["inverse"] = false,
			["frameStrata"] = 1,
			["conditions"] = {
			},
			["icon"] = true,
			["xOffset"] = 0,
		},
		["New 12"] = {
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["auraspellids"] = {
							"193356", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 55,
			["load"] = {
				["use_spec"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 10",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 12",
			["width"] = 55,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "IYHsp4XxqCa",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
		},
		["New 20"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["auraspellids"] = {
							"199600", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
			},
			["height"] = 55,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 10",
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 20",
			["width"] = 55,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "PdkygO8IBCV",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["额外损失 opt "] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    return  (aura_env.lostToHits or 0)\nend",
			["yOffset"] = -14,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["event"] = "Health",
						["unit"] = "player",
						["custom_hide"] = "timed",
						["spellIds"] = {
						},
						["custom"] = "function(event, ...)\n    if (event == \"UNIT_POWER_FREQUENT\") then\n        local unit, powerType = ...\n        if (unit == \"player\" and powerType == \"ALTERNATE\") then\n            local power = UnitPower(unit, 10, true)\n            if (aura_env.lastPower) then\n                local diff = aura_env.lastPower - power\n                if (diff <= 12 and diff ~= 0) then -- tick\n                    local rollingAverage = GetCacheAverage()\n                    if (math.abs(diff - rollingAverage) > 1) then\n                        ResetCache()\n                    end\n                    aura_env.tickCache[10 - aura_env.ticks % 10] = diff\n                    aura_env.ticks = aura_env.ticks + 1\n                    rollingAverage = GetCacheAverage()\n                    \n                    local drain = GetEffectiveDrain(rollingAverage)\n                    aura_env.remainingTime = SecondsToClock(power / drain)\n                elseif (diff > 12) then -- big hit\n                    aura_env.lastBigHit = diff\n                    aura_env.lostToHits = aura_env.lostToHits + diff\n                end\n            end\n            aura_env.lastPower = power\n        end\n    elseif (event == \"SCENARIO_UPDATE\") then\n        local scenario = select(1, ...)\n        if (not scenario) then\n            Reset()\n        end\n        \n    end\nend\n\n\n",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["events"] = "UNIT_POWER_FREQUENT, SCENARIO_UPDATE",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Alternate Power",
						["unit"] = "player",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["font"] = "bdFont",
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
			},
			["height"] = 64,
			["load"] = {
				["ingroup"] = {
				},
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["zoneId"] = "1470, 1469",
				["use_size"] = true,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 20,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 88,
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["conditions"] = {
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["uid"] = "IUPlrm51BBR",
			["automaticWidth"] = "Auto",
			["wordWrap"] = "WordWrap",
			["auto"] = true,
			["zoom"] = 0,
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "额外损失 opt ",
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["width"] = 64,
			["semver"] = "1.0.7",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["fixedWidth"] = 268,
			["selfPoint"] = "CENTER",
			["actions"] = {
				["start"] = {
					["custom"] = "Reset()\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "Reset()",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "local SanityFromCloak = {\n    [6272]=.20,\n    [6273]=.20,\n    [6274]=.25,\n    [6275]=.25,\n    [6276]=.40,\n    [6277]=.40,\n    [6278]=.40,\n    [6279]=.45,\n    [6280]=.45,\n    [6281]=.50,\n    [6282]=.65,\n    [6283]=.65,\n    [6284]=.70,\n    [6285]=.75,\n    [6286]=.80,\n    [6577]=.80,\n    [6580]=.80,\n    [6581]=.80,\n    [6582]=.80,\n    [6583]=.80,\n    [6584]=.80,\n    [6585]=.80,\n    [6586]=.80,\n    [6587]=.80,\n    [6588]=.80,\n    [6589]=.80,\n    [6590]=.80,\n    [6591]=.80,\n    [6592]=.80,\n    [6593]=.80,\n    [6594]=.80,\n    [6595]=.80,\n    [6596]=.80,\n    [6597]=.80,\n    [6598]=.80,\n    [6599]=.80,\n    [6600]=.80,\n    [6601]=.80,\n    [6602]=.80,\n    [6603]=.80\n}\n\nlocal PossibleDrainLevels = {\n    6,\n    8,\n    12\n}\n\nfunction SecondsToClock(seconds)\n    local seconds = tonumber(seconds)\n    \n    if seconds <= 0 then\n        return \"00:00:00\";\n    else\n        mins = string.format(\"%02.f\", math.floor(seconds/60));\n        secs = string.format(\"%02.f\", math.floor(seconds - mins *60));\n        return mins..\":\"..secs\n    end\nend\n\nfunction Round(num, numDecimalPlaces)\n    local mult = 10^(numDecimalPlaces or 0)\n    return math.floor(num * mult + 0.5) / mult\nend\n\nfunction GetItemSplit(itemLink)\n    local itemString = string.match(itemLink, \"item:([%-?%d:]+)\")\n    local itemSplit = {}\n    \n    -- Split data into a table\n    for _, v in ipairs({strsplit(\":\", itemString)}) do\n        if v == \"\" then\n            itemSplit[#itemSplit + 1] = 0\n        else\n            itemSplit[#itemSplit + 1] = tonumber(v)\n        end\n    end\n    \n    return itemSplit\nend\n\n\nfunction GetCloakResistance()\n    local itemLink = GetInventoryItemLink(\"player\", 15)\n    if (itemLink) then\n        local itemSplit = GetItemSplit(itemLink)\n        local bonuses = {}\n        for index=1, itemSplit[13] do\n            bonuses[#bonuses + 1] = itemSplit[13 + index]\n        end\n        \n        \n        for _, bonus in pairs(bonuses) do\n            if (SanityFromCloak[bonus]) then\n                return SanityFromCloak[bonus]\n            end\n        end \n    end\nend\n\nfunction GetEffectiveDrain(diff)\n    local realDrain = diff / (1 - aura_env.sanityReduction)\n    local minDiff = math.huge\n    local closestLevel = 5\n    for _, level in ipairs(PossibleDrainLevels) do\n        local drainDiff = math.abs(realDrain - level)\n        if drainDiff < minDiff then\n            minDiff = drainDiff\n            closestLevel = level\n        end\n    end\n    return closestLevel * (1 - aura_env.sanityReduction)\nend\n\nfunction GetCacheAverage()\n    local sum = 0\n    local totalTicks = 0\n    for i, tick in pairs(aura_env.tickCache) do\n        if (tick and tick > 0) then\n            sum = sum + tick\n        end\n        totalTicks = totalTicks + 1\n    end\n    return sum / totalTicks\nend\n\nfunction ResetCache()\n    aura_env.tickCache = {}\nend\n\n\nfunction Reset()\n    aura_env.lastBigHit = 0\n    aura_env.lostToHits = 0\n    aura_env.remainingTime = \"N/A\"\n    aura_env.sanityReduction = GetCloakResistance()\n    aura_env.tickCache = {}\n    aura_env.ticks = 1\nend\n\nReset()",
					["do_custom"] = true,
				},
			},
		},
		["New 32"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 8.395763397216797,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
							"壮美幻象", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"319695", -- [1]
						},
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
			},
			["height"] = 50,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 33",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "starShakeDecay",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "pulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 32",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 50,
			["config"] = {
			},
			["uid"] = "Q3proQPtzeK",
			["inverse"] = false,
			["frameStrata"] = 1,
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
		},
		["New 14"] = {
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["auraspellids"] = {
							"193358", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 55,
			["load"] = {
				["use_spec"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
						[2] = true,
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 10",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 14",
			["width"] = 55,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "uRKiYX6QlPU",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
		},
		["增益提示 奥格瑞玛 急速 opt"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["message"] = "已获得增益效果【急速】",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\kaching.ogg",
					["do_message"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["useExactSpellId"] = true,
						["rem"] = "3590",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"313670", -- [1]
						},
						["remOperator"] = ">=",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 8,
			["subRegions"] = {
			},
			["load"] = {
				["use_never"] = false,
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = true,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["fixedWidth"] = 200,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "增益提示 奥格瑞玛 急速 opt",
			["justify"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["uid"] = "N)9PMbxM0))",
			["selfPoint"] = "BOTTOM",
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Horrific Visions - Crystal Zone 5"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["use_unit"] = true,
						["unevent"] = "auto",
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVCrystal HVCrystal2 CRYSTAL_FOUND",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
						["check"] = "event",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CRYSTAL_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    \n    if event == \"HVCrystal2\" and message == 5 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVCrystal\" and message == 5 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 5 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\nend",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["xOffset"] = 80,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone5\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Honor\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"OldTown\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone5\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Honor\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Mage\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal\", 5)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 5)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal2\", 5)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["stickyDuration"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["uid"] = "SlEnrdSnDDd",
			["auto"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 5",
			["width"] = 70,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/VisionCounter/19",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["selfPoint"] = "CENTER",
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
		},
		["8.3 大幻象监控 布局美化"] = {
			["controlledChildren"] = {
				"词缀提示 一区 失调加速 opt", -- [1]
				"词缀提示 一区 失调减速 opt", -- [2]
				"词缀提示 二区 恐虫症 opt", -- [3]
				"词缀提示 三区 灌铅脚步 opt", -- [4]
				"增益提示 暴风城 伤害 opt", -- [5]
				"增益提示 暴风城 暴击 opt", -- [6]
				"增益提示 暴风城 急速 opt", -- [7]
				"增益提示 暴风城 全能 opt", -- [8]
				"增益提示 奥格瑞玛 耐力 opt", -- [9]
				"增益提示 奥格瑞玛 急速 opt", -- [10]
				"增益提示 奥格瑞玛 伤害 opt", -- [11]
				"增益提示 奥格瑞玛 暴击 opt", -- [12]
				"春哥提醒 opt", -- [13]
				"泰坦之赐 opt", -- [14]
				"当前理智 opt", -- [15]
				"剩余时间 opt", -- [16]
				"额外损失 opt ", -- [17]
				"药水提示 黑 opt", -- [18]
				"药水提示 绿 opt", -- [19]
				"药水提示 红 opt", -- [20]
				"药水提示 蓝 opt", -- [21]
				"药水提示 紫 opt", -- [22]
				"药水计时 减伤 opt", -- [23]
				"药水计时 龙息 opt", -- [24]
				"药水计时 回血 opt", -- [25]
				"背景 当前理智", -- [26]
				"背景 剩余时间", -- [27]
				"背景 额外损失", -- [28]
				"背景 减伤药水", -- [29]
				"背景 龙息药水", -- [30]
				"背景 回血药水", -- [31]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 874.6598933293267,
			["preferToUpdate"] = false,
			["groupIcon"] = "1357795",
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 29,
			["selfPoint"] = "BOTTOMLEFT",
			["version"] = 8,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 0.6500000000000001,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "8.3 大幻象监控 布局美化",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "puGnLuLqqZN",
			["yOffset"] = -189.630878155048,
			["borderInset"] = 1,
			["conditions"] = {
			},
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["New 19"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["auraspellids"] = {
							"199603", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
			},
			["height"] = 55,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 10",
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 19",
			["width"] = 55,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "Y522fn9bIK7",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["New 22"] = {
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unit"] = "player",
						["unevent"] = "auto",
						["use_unit"] = true,
						["names"] = {
						},
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 1766,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 1766,
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "ok",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
			},
			["height"] = 50,
			["load"] = {
				["use_spec"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 21",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 22",
			["width"] = 50,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "bCIw9Hzs5oh",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
		},
		["Automatic Chest/Crystal Counter - Horrific Visions"] = {
			["controlledChildren"] = {
				"Horrific Visions - Chest Text", -- [1]
				"Horrific Visions - Crystal Text", -- [2]
				"Crystal Handler", -- [3]
				"Zone Handler", -- [4]
				"Horrific Visions - Chest Zone 1", -- [5]
				"Horrific Visions - Chest Zone 2", -- [6]
				"Horrific Visions - Chest Zone 3", -- [7]
				"Horrific Visions - Chest Zone 4", -- [8]
				"Horrific Visions - Chest Zone 5", -- [9]
				"Horrific Visions - Crystal Zone 1", -- [10]
				"Horrific Visions - Crystal Zone 2", -- [11]
				"Horrific Visions - Crystal Zone 3", -- [12]
				"Horrific Visions - Crystal Zone 4", -- [13]
				"Horrific Visions - Crystal Zone 5", -- [14]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -474.327522277832,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/VisionCounter/19",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["unit"] = "player",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["internalVersion"] = 29,
			["selfPoint"] = "BOTTOMLEFT",
			["version"] = 19,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "group",
			["borderSize"] = 2,
			["borderOffset"] = 4,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 1,
			["config"] = {
			},
			["xOffset"] = 586.7779541015625,
			["conditions"] = {
			},
			["uid"] = "Zgkd9VzyjS)",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["药水提示 红 opt"] = {
			["xOffset"] = 17,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(_,id)\n    if id == 1 then\n       aura_env.text=aura_env.kind[4]\n    elseif id ==2 then\n        aura_env.text=aura_env.kind[5]\n    elseif id ==3 then\n          aura_env.text=aura_env.kind[1]\n    elseif id ==4 then\n       aura_env.text=aura_env.kind[2]\n    elseif id ==5 then\n       aura_env.text=aura_env.kind[3]\n    end\n    return true\nend",
						["events"] = "OrgColor",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%c2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						0.9921568627451, -- [1]
						0.97647058823529, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["ingroup"] = {
				},
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_never"] = false,
				["use_zonegroupId"] = false,
				["use_size"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["auto"] = false,
			["zoom"] = 0,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"|cff6A84BC毒药|r\",\n        \"|cffFFFFFF龙息|r\",\n        \"|cffFFFFFF回血|r\",\n        \"|cffFFFFFF减伤|r\",\n        \"|cffF0FF00理智|r\",\n    }\n    aura_env.color=\"红\"\nelse\n    aura_env.kind={\n        \"Poison|r\",\n        \"Breath Fire|r\",\n        \"Healing|r\",\n        \"Defensive|r\",\n        \"Sanity|r\",\n    }\n    aura_env.color=\"Red\"\nend\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\")\n\nb:SetScript(\"OnClick\", function()\n        \n        WeakAuras.ScanEvents(\"OrgColor\",3)\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["parent"] = "8.3 大幻象监控 布局美化",
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["uid"] = "wdI0uRMgRcY",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "药水提示 红 opt",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 45,
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["selfPoint"] = "CENTER",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.003921568627451, -- [3]
				0.82421831786633, -- [4]
			},
		},
		["Horrific Visions - Chest Zone 4"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -40,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/19",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["use_unit"] = true,
						["unevent"] = "auto",
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVChest HVChest2 LOOT_OPENED",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
						["check"] = "event",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"HVChest\" and message == 4 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest2\" and message == 4 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"LOOT_OPENED\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count=aura_env.count + 1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 4 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\n    \nend\n\n\n\n\n",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "默认",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "默认",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["auto"] = false,
			["cooldownEdge"] = false,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone4\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"暗巷区\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"贸易区\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone4\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"暗巷区\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"贸易区\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVChest\", 4)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 4)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVChest2\", 4)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 4",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 70,
			["frameStrata"] = 1,
			["uid"] = "QVDiqhhkLf1",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
		},
		["New 21"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"New 22", -- [1]
				"New 23", -- [2]
				"New 24", -- [3]
				"New 27", -- [4]
				"New 30", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 234.0003662109375,
			["preferToUpdate"] = false,
			["yOffset"] = 404.000244140625,
			["gridType"] = "RD",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 2,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["useLimit"] = false,
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["animate"] = false,
			["rotation"] = 0,
			["scale"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["internalVersion"] = 29,
			["authorOptions"] = {
			},
			["constantFactor"] = "RADIUS",
			["anchorPoint"] = "CENTER",
			["borderOffset"] = 4,
			["limit"] = 5,
			["tocversion"] = 80300,
			["id"] = "New 21",
			["uid"] = "9ua1L)YDV3b",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["borderInset"] = 1,
			["gridWidth"] = 5,
			["selfPoint"] = "LEFT",
			["conditions"] = {
			},
			["rowSpace"] = 1,
			["arcLength"] = 360,
		},
		["泰坦之赐 opt"] = {
			["color"] = {
				1, -- [1]
				0.97647058823529, -- [2]
				0.9843137254902, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    local str \n    if aura_env.expirationTime > GetTime() then\n        str = \"              泰坦之赐：  进行中\"\n    elseif aura_env.expirationTime + 60 > GetTime() then\n        str = \"              泰坦之赐：  冷却中\"\n    else\n        str = \"              泰坦之赐：  准备中\"\n    end\n    return str\nend\n\n\n",
			["yOffset"] = -37.581253051758,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.expirationTime = 0",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["matchesShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["event"] = "Combat Log",
						["duration"] = "1",
						["spellIds"] = {
						},
						["unevent"] = "timed",
						["events"] = "UNIT_AURA",
						["custom"] = "function(allstates,event,...)\n    if event == \"UNIT_AURA\" then\n        local unit = ...\n        if unit == \"player\" then\n            state = allstates[\"titans\"]\n            if not state then\n                allstates[\"titans\"] = {\n                    icon = 2000853,\n                    progressType = \"timed\",\n                    show = false,                    \n                }\n                state = allstates[\"titans\"]\n            end   \n            local name,icon,_,_,duration,expirationTime = WA_GetUnitBuff(\"player\",\"泰坦之赐\")\n            if name then\n                aura_env.buff = true\n                aura_env.expirationTime = expirationTime\n                state.duration = duration\n                state.expirationTime = expirationTime\n                state.autoHide = true\n                state.show = true\n                state.changed = true\n            elseif aura_env.expirationTime > 0 and aura_env.buff then\n                aura_env.buff = false\n                state.duration = 60\n                state.expirationTime = aura_env.expirationTime + 60\n                state.autoHide = false\n                state.show = true\n                state.changed = true                \n            end\n        end\n    end\n    return true\nend\n\n\n",
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["names"] = {
						},
						["auraspellids"] = {
							"313698", -- [1]
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auranames"] = {
						},
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"313698", -- [1]
						},
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "RIGHT",
			["desc"] = "擎天柱丨@丽丽（四川）黑我钥匙",
			["progressPrecision"] = 0,
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.90196078431373, -- [2]
						0.13333333333333, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_anchorYOffset"] = -10,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "OUTER_BOTTOM",
					["text_fontType"] = "OUTLINE",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_shadowYOffset"] = 0,
				}, -- [1]
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 40,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowScale"] = 1.5,
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [3]
			},
			["height"] = 91,
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["zoneId"] = "1470, 1469",
				["ingroup"] = {
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["uid"] = "VWxFVjyeG9p",
			["zoom"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["regionType"] = "icon",
			["parent"] = "8.3 大幻象监控 布局美化",
			["icon"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.3.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
			},
			["desaturate"] = false,
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["width"] = 91,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "泰坦之赐 opt",
			["frameStrata"] = 4,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.7",
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "2000853",
			["cooldown"] = false,
			["xOffset"] = -94.025733947754,
		},
		["Horrific Visions - Chest Zone 3"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/19",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["spellIds"] = {
						},
						["names"] = {
						},
						["use_unit"] = true,
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVChest HVChest2 LOOT_OPENED",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
						["check"] = "event",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"HVChest\" and message == 3 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest2\" and message == 3 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"LOOT_OPENED\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count=aura_env.count + 1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 3 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\n    \nend\n\n\n\n\n",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["auto"] = false,
			["cooldownEdge"] = false,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone3\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"智慧谷\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"旧城区\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone3\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"智慧谷\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"旧城区\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVChest\", 3)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 3)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVChest2\", 3)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 3",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 70,
			["frameStrata"] = 1,
			["uid"] = "5caV9Q3y6b1",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
		},
		["New 30"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["names"] = {
						},
						["use_unit"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 297108,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 297108,
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["use_absorbMode"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["remaining"] = "30",
						["spellName"] = 297108,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["remaining_operator"] = "<=",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 297108,
						["use_spellName"] = true,
						["unevent"] = "auto",
						["duration"] = "1",
						["use_remaining"] = true,
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "ok",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glow"] = true,
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.1490196078431373, -- [2]
						0.1843137254901961, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [3]
			},
			["height"] = 50,
			["load"] = {
				["use_spec"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 21",
			["xOffset"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 30",
			["width"] = 50,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "pdSUzQMe3j4",
			["inverse"] = false,
			["frameStrata"] = 1,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.1.text_visible",
						}, -- [2]
						{
							["property"] = "sub.3.text_visible",
						}, -- [3]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [4]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.1.text_visible",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [3]
					},
				}, -- [2]
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\BITE.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["do_custom"] = false,
				},
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["增益提示 暴风城 伤害 opt"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["message_type"] = "SAY",
					["message"] = "已获得增益效果【伤害】",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\kaching.ogg",
					["do_message"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["rem"] = "3590",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"314165", -- [1]
						},
						["remOperator"] = ">=",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 8,
			["subRegions"] = {
			},
			["load"] = {
				["use_never"] = false,
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = true,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["fixedWidth"] = 200,
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "增益提示 暴风城 伤害 opt",
			["semver"] = "1.0.7",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["uid"] = "JI6MmbeAa1M",
			["automaticWidth"] = "Auto",
			["conditions"] = {
			},
			["wordWrap"] = "WordWrap",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["New 27"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\aggro.ogg",
					["do_sound"] = false,
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 13750,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 13750,
						["use_unit"] = true,
						["use_track"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["remaining_operator"] = "<=",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["remaining"] = "30",
						["spellName"] = 13750,
						["use_remaining"] = true,
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["subeventPrefix"] = "SPELL",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 13750,
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["type"] = "status",
						["duration"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["use_track"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "ok",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.2117647058823529, -- [2]
						0.2470588235294118, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [3]
			},
			["height"] = 50,
			["load"] = {
				["use_spec"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 21",
			["xOffset"] = 0,
			["selfPoint"] = "CENTER",
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 27",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "72(8CT67PKS",
			["inverse"] = false,
			["width"] = 50,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
						{
							["value"] = true,
							["property"] = "sub.1.text_visible",
						}, -- [2]
						{
							["property"] = "sub.3.text_visible",
						}, -- [3]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\aggro.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [4]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
						{
							["property"] = "sub.1.text_visible",
						}, -- [2]
						{
							["value"] = true,
							["property"] = "sub.3.text_visible",
						}, -- [3]
					},
				}, -- [2]
			},
			["authorOptions"] = {
			},
			["icon"] = true,
		},
		["剩余时间 opt"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    return  (aura_env.remainingTime or 0) \nend",
			["yOffset"] = -14,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "Reset()\n\n",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "Reset()",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "local SanityFromCloak = {\n    [6272]=.20,\n    [6273]=.20,\n    [6274]=.25,\n    [6275]=.25,\n    [6276]=.40,\n    [6277]=.40,\n    [6278]=.40,\n    [6279]=.45,\n    [6280]=.45,\n    [6281]=.50,\n    [6282]=.65,\n    [6283]=.65,\n    [6284]=.70,\n    [6285]=.75,\n    [6286]=.80,\n    [6577]=.80,\n    [6580]=.80,\n    [6581]=.80,\n    [6582]=.80,\n    [6583]=.80,\n    [6584]=.80,\n    [6585]=.80,\n    [6586]=.80,\n    [6587]=.80,\n    [6588]=.80,\n    [6589]=.80,\n    [6590]=.80,\n    [6591]=.80,\n    [6592]=.80,\n    [6593]=.80,\n    [6594]=.80,\n    [6595]=.80,\n    [6596]=.80,\n    [6597]=.80,\n    [6598]=.80,\n    [6599]=.80,\n    [6600]=.80,\n    [6601]=.80,\n    [6602]=.80,\n    [6603]=.80\n}\n\nlocal PossibleDrainLevels = {\n    6,\n    8,\n    12\n}\n\nfunction SecondsToClock(seconds)\n    local seconds = tonumber(seconds)\n    \n    if seconds <= 0 then\n        return \"00:00:00\";\n    else\n        mins = string.format(\"%02.f\", math.floor(seconds/60));\n        secs = string.format(\"%02.f\", math.floor(seconds - mins *60));\n        return mins..\":\"..secs\n    end\nend\n\nfunction Round(num, numDecimalPlaces)\n    local mult = 10^(numDecimalPlaces or 0)\n    return math.floor(num * mult + 0.5) / mult\nend\n\nfunction GetItemSplit(itemLink)\n    local itemString = string.match(itemLink, \"item:([%-?%d:]+)\")\n    local itemSplit = {}\n    \n    -- Split data into a table\n    for _, v in ipairs({strsplit(\":\", itemString)}) do\n        if v == \"\" then\n            itemSplit[#itemSplit + 1] = 0\n        else\n            itemSplit[#itemSplit + 1] = tonumber(v)\n        end\n    end\n    \n    return itemSplit\nend\n\n\nfunction GetCloakResistance()\n    local itemLink = GetInventoryItemLink(\"player\", 15)\n    if (itemLink) then\n        local itemSplit = GetItemSplit(itemLink)\n        local bonuses = {}\n        for index=1, itemSplit[13] do\n            bonuses[#bonuses + 1] = itemSplit[13 + index]\n        end\n        \n        \n        for _, bonus in pairs(bonuses) do\n            if (SanityFromCloak[bonus]) then\n                return SanityFromCloak[bonus]\n            end\n        end \n    end\nend\n\nfunction GetEffectiveDrain(diff)\n    local realDrain = diff / (1 - aura_env.sanityReduction)\n    local minDiff = math.huge\n    local closestLevel = 5\n    for _, level in ipairs(PossibleDrainLevels) do\n        local drainDiff = math.abs(realDrain - level)\n        if drainDiff < minDiff then\n            minDiff = drainDiff\n            closestLevel = level\n        end\n    end\n    return closestLevel * (1 - aura_env.sanityReduction)\nend\n\nfunction GetCacheAverage()\n    local sum = 0\n    local totalTicks = 0\n    for i, tick in pairs(aura_env.tickCache) do\n        if (tick and tick > 0) then\n            sum = sum + tick\n        end\n        totalTicks = totalTicks + 1\n    end\n    return sum / totalTicks\nend\n\nfunction ResetCache()\n    aura_env.tickCache = {}\nend\n\n\nfunction Reset()\n    aura_env.lastBigHit = 0\n    aura_env.lostToHits = 0\n    aura_env.remainingTime = 0\n    aura_env.sanityReduction = GetCloakResistance()\n    aura_env.tickCache = {}\n    aura_env.ticks = 1\nend\n\nReset()",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["custom"] = "function(event, ...)\n    if (event == \"UNIT_POWER_FREQUENT\") then\n        local unit, powerType = ...\n        if (unit == \"player\" and powerType == \"ALTERNATE\") then\n            local power = UnitPower(unit, 10, true)\n            if (aura_env.lastPower) then\n                local diff = aura_env.lastPower - power\n                if (diff <= 12 and diff ~= 0) then -- tick\n                    local rollingAverage = GetCacheAverage()\n                    if (math.abs(diff - rollingAverage) > 1) then\n                        ResetCache()\n                    end\n                    aura_env.tickCache[10 - aura_env.ticks % 10] = diff\n                    aura_env.ticks = aura_env.ticks + 1\n                    rollingAverage = GetCacheAverage()\n                    \n                    local drain = GetEffectiveDrain(rollingAverage)\n                    aura_env.remainingTime = SecondsToClock(power / drain)\n                elseif (diff > 12) then -- big hit\n                    aura_env.lastBigHit = diff\n                    aura_env.lostToHits = aura_env.lostToHits + diff\n                end\n            end\n            aura_env.lastPower = power\n        end\n    elseif (event == \"SCENARIO_UPDATE\") then\n        local scenario = select(1, ...)\n        if (not scenario) then\n            Reset()\n        end\n        \n    end\nend\n\n\n",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["events"] = "UNIT_POWER_FREQUENT, SCENARIO_UPDATE",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_absorbMode"] = true,
						["event"] = "Alternate Power",
						["unit"] = "player",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)\n    return t[2]\nend",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["wordWrap"] = "WordWrap",
			["desaturate"] = false,
			["font"] = "bdFont",
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%c",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
			},
			["height"] = 64,
			["load"] = {
				["ingroup"] = {
				},
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["zoneId"] = "1470, 1469",
				["use_size"] = true,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 20,
			["alpha"] = 1,
			["width"] = 64,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["conditions"] = {
			},
			["regionType"] = "icon",
			["icon"] = true,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["config"] = {
			},
			["automaticWidth"] = "Auto",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["auto"] = true,
			["zoom"] = 0,
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "剩余时间 opt",
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.7",
			["uid"] = "ciA)2RdTcEo",
			["inverse"] = false,
			["xOffset"] = 17,
			["fixedWidth"] = 268,
			["selfPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["背景 减伤药水"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["cooldownTextDisabled"] = false,
			["yOffset"] = -71,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["matchesShowOn"] = "showOnMissing",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 0,
						["names"] = {
						},
						["type"] = "aura2",
						["use_absorbMode"] = true,
						["auraspellids"] = {
							"315849", -- [1]
						},
						["use_unit"] = true,
						["custom_type"] = "stateupdate",
						["event"] = "Range Check",
						["subeventSuffix"] = "_CAST_START",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["useExactSpellId"] = true,
						["duration"] = "1",
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["color"] = {
				1, -- [1]
				0.59607843137255, -- [2]
				0, -- [3]
				0.76866233348846, -- [4]
			},
			["parent"] = "8.3 大幻象监控 布局美化",
			["barColor"] = {
				1, -- [1]
				0.090196078431373, -- [2]
				0.10980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["conditions"] = {
			},
			["sparkOffsetY"] = 0,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "减伤药水",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 14,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
			},
			["height"] = 25,
			["selfPoint"] = "CENTER",
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
				},
				["use_never"] = false,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["internalVersion"] = 29,
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["version"] = 8,
			["anchorFrameType"] = "SCREEN",
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["frameStrata"] = 2,
			["uid"] = "7panqfgbvx7",
			["icon_side"] = "LEFT",
			["sparkHidden"] = "NEVER",
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["semver"] = "1.0.7",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 80300,
			["id"] = "背景 减伤药水",
			["zoom"] = 0,
			["alpha"] = 1,
			["width"] = 75,
			["icon"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["auto"] = false,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51866272091866, -- [4]
			},
			["xOffset"] = -56,
		},
		["Horrific Visions - Crystal Zone 1"] = {
			["xOffset"] = 80,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone1\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Strength\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Cathedral\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
					["do_message"] = false,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone1\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"Strength\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"Cathedral\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal\", 1)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 1)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVCrystal2\", 1)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Conditions",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVCrystal HVCrystal2 CRYSTAL_FOUND",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
						["check"] = "event",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"CRYSTAL_FOUND\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    \n    if event == \"HVCrystal2\" and message == 1 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVCrystal\" and message == 1 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 1 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\nend\n\n\n\n",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_encounterid"] = false,
				["use_zone"] = false,
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["icon"] = true,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 1",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 70,
			["frameStrata"] = 1,
			["uid"] = "Ac5gQCit4(g",
			["inverse"] = false,
			["url"] = "https://wago.io/VisionCounter/19",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["New 24"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["names"] = {
						},
						["use_unit"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 2094,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 2094,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["use_track"] = true,
						["use_genericShowOn"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "ok",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 20,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
			},
			["height"] = 50,
			["load"] = {
				["use_spec"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 21",
			["frameStrata"] = 1,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["cooldownTextDisabled"] = false,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 24",
			["width"] = 50,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "7q(khAfNU(6",
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Crystal Handler"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "\n",
			["yOffset"] = 104.99993896484,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.crystal = \"怪异水晶\"\naura_env.last = GetTime()",
					["do_custom"] = true,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["duration"] = "1",
						["event"] = "Chat Message",
						["unit"] = "player",
						["custom_type"] = "status",
						["spellIds"] = {
						},
						["custom"] = "function()\n    if GetTime() >= aura_env.last+5 then\n        if GameTooltip:NumLines() == 0 then\n            return false\n        end\n        if _G[\"GameTooltipTextLeft1\"]:GetText() == aura_env.crystal then\n            WeakAuras.ScanEvents(\"CRYSTAL_FOUND\")\n            aura_env.last = GetTime()\n        end\n    end\nend",
						["names"] = {
						},
						["check"] = "update",
						["unevent"] = "timed",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 19,
			["subRegions"] = {
			},
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["regionType"] = "text",
			["justify"] = "LEFT",
			["preferToUpdate"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["conditions"] = {
			},
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Crystal Handler",
			["url"] = "https://wago.io/VisionCounter/19",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "5MFgKRxV0aY",
			["config"] = {
			},
			["xOffset"] = 83.000061035156,
			["fixedWidth"] = 200,
			["wordWrap"] = "WordWrap",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["增益提示 奥格瑞玛 伤害 opt"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["message_type"] = "SAY",
					["message"] = "已获得增益效果【伤害】",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\kaching.ogg",
					["do_message"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"313770", -- [1]
						},
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["useExactSpellId"] = true,
						["rem"] = "3590",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["selfPoint"] = "BOTTOM",
			["font"] = "Friz Quadrata TT",
			["version"] = 8,
			["subRegions"] = {
			},
			["load"] = {
				["use_zoneId"] = true,
				["use_size"] = true,
				["use_never"] = false,
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneId"] = "1470, 1469",
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["conditions"] = {
			},
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "增益提示 奥格瑞玛 伤害 opt",
			["justify"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["uid"] = "cEfSBo2tdXp",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["fixedWidth"] = 200,
			["wordWrap"] = "WordWrap",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["药水提示 绿 opt"] = {
			["color"] = {
				0.023529411764706, -- [1]
				1, -- [2]
				0, -- [3]
				0.79644124209881, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["custom_type"] = "event",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Conditions",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["events"] = "OpenShowCardGM",
						["unit"] = "player",
						["use_unit"] = true,
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["custom_type"] = "event",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(_,id)\n    if id == 1 then\n        aura_env.text=aura_env.kind[5]\n    elseif id ==2 then\n        aura_env.text=aura_env.kind[1]\n    elseif id ==3 then\n        aura_env.text=aura_env.kind[2]\n    elseif id ==4 then\n        aura_env.text=aura_env.kind[3]\n    elseif id ==5 then\n        aura_env.text=aura_env.kind[4]\n    end\n    return true\nend",
						["events"] = "OrgColor",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%c2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.96862745098039, -- [2]
						0.9921568627451, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "INNER_LEFT",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
			},
			["height"] = 25,
			["load"] = {
				["ingroup"] = {
				},
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["use_never"] = false,
				["use_zonegroupId"] = false,
				["use_size"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["zoom"] = 0,
			["xOffset"] = -26,
			["regionType"] = "icon",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["parent"] = "8.3 大幻象监控 布局美化",
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["uid"] = "CDnDYr6Of16",
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "药水提示 绿 opt",
			["width"] = 45,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"|cff6A84BC毒药|r\",\n        \"|cffFFFFFF龙息|r\",\n        \"|cffFFFFFF回血|r\",\n        \"|cffFFFFFF减伤|r\",\n        \"|cffF0FF00理智|r\",\n    }\n    aura_env.color=\"绿\"\nelse\n    aura_env.kind={\n        \"Poison|r\",\n        \"Breath Fire|r\",\n        \"Healing|r\",\n        \"Defensive|r\",\n        \"Sanity|r\",\n    }\n    aura_env.color=\"Green\"\nend\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\")\n\nb:SetScript(\"OnClick\", function()\n        \n        WeakAuras.ScanEvents(\"OrgColor\",2)\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["New 35"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = 4.0001220703125,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"315176", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auranames"] = {
							"贪婪触须", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "starShakeDecay",
				},
				["main"] = {
					["type"] = "preset",
					["easeType"] = "none",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["preset"] = "pulse",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["desaturate"] = false,
			["subRegions"] = {
				{
					["glowFrequency"] = 0.25,
					["glow"] = true,
					["useGlowColor"] = false,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["type"] = "subglow",
					["glowXOffset"] = 0,
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 21,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [2]
			},
			["height"] = 50,
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["parent"] = "New 33",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextDisabled"] = false,
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "New 35",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 50,
			["config"] = {
			},
			["uid"] = "rRfM1q)O0hR",
			["inverse"] = false,
			["frameStrata"] = 1,
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["xOffset"] = 0,
		},
		["Horrific Visions - Crystal Text"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 83.000061035156,
			["displayText"] = "水晶",
			["yOffset"] = 104.99993896484,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["duration"] = "1",
						["use_unit"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 19,
			["subRegions"] = {
			},
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 18,
			["regionType"] = "text",
			["justify"] = "LEFT",
			["preferToUpdate"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["fixedWidth"] = 200,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Text",
			["url"] = "https://wago.io/VisionCounter/19",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "tCuBUWq6lEV",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["selfPoint"] = "BOTTOM",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
		},
		["New 10"] = {
			["grow"] = "RIGHT",
			["controlledChildren"] = {
				"New 3", -- [1]
				"New 20", -- [2]
				"New 19", -- [3]
				"New 14", -- [4]
				"New 13", -- [5]
				"New 12", -- [6]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -321.9993286132813,
			["preferToUpdate"] = false,
			["yOffset"] = -124.000244140625,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useAnchorPerUnit"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
			["radius"] = 200,
			["useLimit"] = false,
			["align"] = "CENTER",
			["stagger"] = 0,
			["subRegions"] = {
			},
			["load"] = {
				["use_class"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["space"] = 5,
			["animate"] = false,
			["limit"] = 5,
			["scale"] = 1,
			["internalVersion"] = 29,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["gridType"] = "RD",
			["rotation"] = 0,
			["constantFactor"] = "RADIUS",
			["arcLength"] = 360,
			["borderOffset"] = 4,
			["uid"] = "7l57NsDjBsr",
			["tocversion"] = 80300,
			["id"] = "New 10",
			["config"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["gridWidth"] = 5,
			["borderInset"] = 1,
			["selfPoint"] = "LEFT",
			["rowSpace"] = 1,
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["authorOptions"] = {
			},
		},
		["词缀提示 一区 失调加速 opt"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["yOffset"] = -37.58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["auraspellids"] = {
							"306427", -- [1]
						},
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "加速",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 30,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowType"] = "buttonOverlay",
					["glowLength"] = 10,
					["glow"] = false,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 91,
			["load"] = {
				["use_zoneId"] = true,
				["use_size"] = true,
				["use_never"] = false,
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneId"] = "1470, 1469",
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["xOffset"] = 171,
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "词缀提示 一区 失调加速 opt",
			["uid"] = "ISxcsYtHo(H",
			["alpha"] = 1,
			["width"] = 91,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["auto"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["value"] = 1,
						["variable"] = "show",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["cooldownEdge"] = false,
		},
		["药水计时 龙息 opt"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = 16,
			["preferToUpdate"] = false,
			["yOffset"] = -71,
			["anchorPoint"] = "CENTER",
			["sparkHidden"] = "NEVER",
			["cooldownSwipe"] = true,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["debuffType"] = "HELPFUL",
						["showClones"] = false,
						["type"] = "aura2",
						["unevent"] = "auto",
						["custom_type"] = "stateupdate",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"315817", -- [1]
						},
						["event"] = "Conditions",
						["spellName"] = 0,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["parent"] = "8.3 大幻象监控 布局美化",
			["barColor"] = {
				1, -- [1]
				0.090196078431373, -- [2]
				0.10980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["color"] = {
				1, -- [1]
				0.32156862745098, -- [2]
				0.11372549019608, -- [3]
				0.7547742575407, -- [4]
			},
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
				{
					["glowFrequency"] = 0.5,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowScale"] = 1,
					["glowThickness"] = 2,
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["glowType"] = "Pixel",
					["glowLength"] = 10,
					["glow"] = false,
					["glowLines"] = 10,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 25,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["value"] = "10",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "龙息药水还有10秒，即将被【移动】",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["variable"] = "expirationTime",
						["value"] = "30",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["load"] = {
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
				},
				["use_never"] = false,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["authorOptions"] = {
			},
			["icon"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "cdIhSJuhXLs",
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["icon_side"] = "LEFT",
			["cooldownTextDisabled"] = false,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["semver"] = "1.0.7",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["tocversion"] = 80300,
			["id"] = "药水计时 龙息 opt",
			["zoom"] = 0,
			["alpha"] = 1,
			["width"] = 75,
			["auto"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51866272091866, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["sparkOffsetY"] = 0,
			["url"] = "https://wago.io/JxMRlFNNX/8",
		},
		["Horrific Visions - Chest Zone 5"] = {
			["xOffset"] = 0,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/19",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["names"] = {
						},
						["unevent"] = "auto",
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unit"] = "player",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "HV_ZONECHANGED HVChest HVChest2 LOOT_OPENED",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
						["check"] = "event",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"HVChest\" and message == 5 and aura_env.count < 2 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest2\" and message == 5 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"LOOT_OPENED\" and states[\"\"].zone and aura_env.count < 2 then\n        aura_env.count=aura_env.count + 1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 5 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\n    \nend\n\n\n\n\n",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 2",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["zoom"] = 0,
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "2",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["semver"] = "1.0.18",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 5",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 70,
			["frameStrata"] = 1,
			["uid"] = "mjXDJ(7r87n",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone5\"\n\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"荣誉谷\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"法师区\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone5\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"荣誉谷\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"法师区\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVChest\", 5)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 5)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVChest2\", 5)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
				},
			},
		},
		["增益提示 暴风城 暴击 opt"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["message_type"] = "SAY",
					["message"] = "已获得增益效果【暴击】",
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\kaching.ogg",
					["do_message"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["rem"] = "3590",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"314087", -- [1]
						},
						["remOperator"] = ">=",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["font"] = "Friz Quadrata TT",
			["version"] = 8,
			["subRegions"] = {
			},
			["load"] = {
				["use_never"] = false,
				["use_size"] = true,
				["zoneId"] = "1470, 1469",
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = true,
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["conditions"] = {
			},
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "增益提示 暴风城 暴击 opt",
			["semver"] = "1.0.7",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["uid"] = "C4fVs8o4Bdy",
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 200,
			["selfPoint"] = "BOTTOM",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["Horrific Visions - Chest Zone 1"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/19",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["use_unit"] = true,
						["unevent"] = "auto",
						["custom_type"] = "event",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "0.1",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["events"] = "UNIT_SPELLCAST_SUCCEEDED HV_ZONECHANGED HVChest HVChest2 LOOT_OPENED",
						["customVariables"] = "{\n    count = \"number\",\n    zone = \"bool\"\n}\n\n\n",
						["check"] = "event",
						["custom"] = "function(states, event, message, ...)\n    if not states[\"\"] then\n        states[\"\"] = {\n        show = true}\n    end\n    if event == \"UNIT_SPELLCAST_SUCCEEDED\" and select(2, ...) == 34427 then\n        aura_env.time = GetTime()\n    end\n    if event == \"HVChest\" and message == 1 and aura_env.count < 4 then\n        aura_env.count = aura_env.count+1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HVChest2\" and message == 1 and aura_env.count > 0 then\n        aura_env.count = aura_env.count-1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"LOOT_OPENED\" and states[\"\"].zone and aura_env.count < 4 then\n        aura_env.count=aura_env.count + 1\n        states[\"\"].count = aura_env.count\n    end\n    if event == \"HV_ZONECHANGED\" then\n        if message == 1 then\n            states[\"\"].zone = true\n        else\n            states[\"\"].zone = false\n        end\n    end\n    \n    return true\n    \nend\n\n\n\n\n",
						["custom_type"] = "stateupdate",
						["custom_hide"] = "timed",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["version"] = 19,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c1",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.94117647058824, -- [2]
						0.92941176470588, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "OUTER_LEFT",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%c2 / 4",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "AUTO",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 22,
					["anchorXOffset"] = 0,
					["text_fontType"] = "OUTLINE",
				}, -- [2]
			},
			["height"] = 40,
			["load"] = {
				["use_zoneId"] = true,
				["zoneId"] = "1470, 1469",
				["use_zone"] = false,
				["use_zonegroupId"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["auto"] = false,
			["cooldownEdge"] = false,
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone1\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"力量谷\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"大教堂\"\nend",
					["do_custom"] = true,
				},
				["finish"] = {
					["custom"] = "aura_env.count = 0",
					["do_custom"] = true,
				},
				["init"] = {
					["custom"] = "aura_env.zoneID = C_Map.GetBestMapForUnit(\"player\")\naura_env.zoneName = \"Zone1\"\naura_env.count = 0\n--1469 == Orgrimmar\n--1470 == Stormwind\n\nif aura_env.zoneID == 1469 then\n    aura_env.zoneName = \"力量谷\"\nelseif aura_env.zoneID == 1470 then\n    aura_env.zoneName = \"大教堂\"\nend\n\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\", \"RightButtonDown\", \"MiddleButtonDown\")\n\nb:SetScript(\"OnClick\", function(self, arg1)\n        if arg1 == \"LeftButton\" then\n            WeakAuras.ScanEvents(\"HVChest\", 1)\n        elseif arg1 == \"MiddleButton\" then\n            WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 1)\n        elseif arg1 == \"RightButton\" then\n            WeakAuras.ScanEvents(\"HVChest2\", 1)\n        end\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n\n\n",
					["do_custom"] = true,
				},
			},
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["xOffset"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "zone",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.89803921568627, -- [1]
								0.88627450980392, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "sub.1.text_color",
						}, -- [1]
						{
							["value"] = {
								0.69803921568627, -- [1]
								0.71764705882353, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 2,
						["op"] = ">=",
						["value"] = "4",
						["variable"] = "count",
					},
					["changes"] = {
						{
							["value"] = {
								0.031372549019608, -- [1]
								0.51372549019608, -- [2]
								0, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
					},
				}, -- [2]
			},
			["config"] = {
			},
			["zoom"] = 0,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 1",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 70,
			["frameStrata"] = 1,
			["uid"] = "93Km4P4M1CS",
			["inverse"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
		},
		["药水计时 减伤 opt"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["xOffset"] = -56,
			["preferToUpdate"] = false,
			["zoom"] = 0,
			["yOffset"] = -71,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["sparkRotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51866272091866, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["auranames"] = {
						},
						["matchesShowOn"] = "showOnActive",
						["names"] = {
						},
						["duration"] = "1",
						["buffShowOn"] = "showOnActive",
						["use_unit"] = true,
						["type"] = "aura2",
						["custom_type"] = "stateupdate",
						["unevent"] = "auto",
						["auraspellids"] = {
							"315849", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["event"] = "Range Check",
						["useExactSpellId"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["spellName"] = 0,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				0.60392156862745, -- [2]
				0, -- [3]
				0.78255224227905, -- [4]
			},
			["parent"] = "8.3 大幻象监控 布局美化",
			["barColor"] = {
				1, -- [1]
				0.090196078431373, -- [2]
				0.10980392156863, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["value"] = "10",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = {
								["message"] = "减伤药水还有10秒,即将被【昏迷】",
								["message_type"] = "SAY",
							},
							["property"] = "chat",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "<=",
						["value"] = "30",
						["variable"] = "expirationTime",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
			},
			["version"] = 8,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 1,
					["text_text"] = "%p",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "CENTER",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_color"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = -1,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = true,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 16,
					["anchorXOffset"] = 0,
					["text_fontType"] = "None",
				}, -- [1]
				{
					["glowFrequency"] = 0.5,
					["type"] = "subglow",
					["useGlowColor"] = false,
					["glowType"] = "Pixel",
					["glowThickness"] = 2,
					["text_shadowColor"] = {
					},
					["glowYOffset"] = 0,
					["glowColor"] = {
						1, -- [1]
						1, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["glowXOffset"] = 0,
					["text_color"] = {
					},
					["glowScale"] = 1,
					["glow"] = false,
					["glowLength"] = 10,
					["glowLines"] = 10,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 25,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
				},
				["zoneId"] = "1470, 1469",
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["internalVersion"] = 29,
			["spark"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownEdge"] = false,
			["anchorFrameType"] = "SCREEN",
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["icon_side"] = "LEFT",
			["id"] = "药水计时 减伤 opt",
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["semver"] = "1.0.7",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = false,
			["tocversion"] = 80300,
			["sparkHidden"] = "NEVER",
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["width"] = 75,
			["sparkOffsetY"] = 0,
			["uid"] = "5m4tO8miaOk",
			["inverse"] = false,
			["config"] = {
			},
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["actions"] = {
				["start"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "\n\n",
					["do_custom"] = false,
				},
			},
			["icon"] = true,
		},
		["背景 当前理智"] = {
			["xOffset"] = -56,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -12,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Conditions",
						["names"] = {
						},
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unit"] = "player",
						["custom_hide"] = "custom",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)\n    return t[2] \nend",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 8,
			["subRegions"] = {
			},
			["height"] = 40,
			["load"] = {
				["use_size"] = true,
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["class"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["zoneId"] = "1470, 1469",
				["ingroup"] = {
				},
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["color"] = {
				0, -- [1]
				0.90588235294118, -- [2]
				1, -- [3]
				0.79644124209881, -- [4]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"毒药|r\",\n        \"龙息|r\",\n        \"回血|r\",\n        \"减伤|r\",\n        \"理智|r\",\n    }\n    aura_env.color=\"紫\"\nelse\n    aura_env.kind={\n        \"|cff6A84BCPoison|r\",\n        \"|cffFF7373Breath Fire|r\",\n        \"|cffFFAA6CHealing|r\",\n        \"|cff6CFFFDDefensive|r\",\n        \"|cffF0FF00Sanity|r\",\n    }\n    aura_env.color=\"Purple\"\nend\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\")\n\nb:SetScript(\"OnClick\", function()\n        \n        WeakAuras.ScanEvents(\"OrgColor\",5)\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = false,
				},
			},
			["parent"] = "8.3 大幻象监控 布局美化",
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["config"] = {
			},
			["semver"] = "1.0.7",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "背景 当前理智",
			["width"] = 75,
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["uid"] = "LodA0xexiRP",
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["authorOptions"] = {
			},
		},
		["增益提示 暴风城 急速 opt"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["actions"] = {
				["start"] = {
					["message"] = "已获得增益效果【急速】",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_glow"] = false,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\kaching.ogg",
					["do_message"] = true,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"312355", -- [1]
						},
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["useExactSpellId"] = true,
						["rem"] = "3590",
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["remOperator"] = ">=",
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["version"] = 8,
			["subRegions"] = {
			},
			["load"] = {
				["use_zoneId"] = true,
				["use_size"] = true,
				["use_never"] = false,
				["ingroup"] = {
				},
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["zoneId"] = "1470, 1469",
				["size"] = {
					["single"] = "scenario",
					["multi"] = {
						["scenario"] = true,
					},
				},
			},
			["fontSize"] = 12,
			["regionType"] = "text",
			["automaticWidth"] = "Auto",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["fixedWidth"] = 200,
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "增益提示 暴风城 急速 opt",
			["semver"] = "1.0.7",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["uid"] = "XBg8)NlFziF",
			["selfPoint"] = "BOTTOM",
			["conditions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
					["easeStrength"] = 3,
					["easeType"] = "none",
				},
			},
			["xOffset"] = 0,
		},
	},
	["lastArchiveClear"] = 1584680860,
	["minimap"] = {
		["hide"] = false,
	},
	["lastUpgrade"] = 1587214817,
	["dbVersion"] = 29,
	["login_squelch_time"] = 10,
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -637.164306640625,
		["width"] = 830.0001831054688,
		["height"] = 665.0001220703125,
		["yOffset"] = -222.9999389648438,
	},
	["editor_theme"] = "Monokai",
}
