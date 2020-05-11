
WeakAurasSaved = {
	["dynamicIconCache"] = {
	},
	["login_squelch_time"] = 10,
	["lastArchiveClear"] = 1584681657,
	["minimap"] = {
		["hide"] = false,
	},
	["lastUpgrade"] = 1587180103,
	["dbVersion"] = 29,
	["displays"] = {
		["增益提示 奥格瑞玛 耐力 opt"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 0,
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["actions"] = {
				["start"] = {
					["message"] = "已获得增益效果【耐力】",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_glow"] = false,
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
						["rem"] = "3590",
						["auraspellids"] = {
							"313749", -- [1]
						},
						["useRem"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["type"] = "aura2",
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
			["semver"] = "1.0.7",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["fixedWidth"] = 200,
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "增益提示 奥格瑞玛 耐力 opt",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "2rDNCPWJEq5",
			["selfPoint"] = "BOTTOM",
			["wordWrap"] = "WordWrap",
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["automaticWidth"] = "Auto",
		},
		["背景 剩余时间"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -12,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/JxMRlFNNX/8",
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
						["names"] = {
						},
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["events"] = "OpenShowCardGM",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
			["zoom"] = 0,
			["parent"] = "8.3 大幻象监控 布局美化",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["icon"] = true,
			["cooldownEdge"] = false,
			["conditions"] = {
			},
			["uid"] = "xKj6zxGqvqc",
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "背景 剩余时间",
			["width"] = 75,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 2,
			["config"] = {
			},
			["inverse"] = false,
			["desaturate"] = false,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["color"] = {
				0, -- [1]
				0.58823529411765, -- [2]
				1, -- [3]
				0.76866233348846, -- [4]
			},
			["xOffset"] = 16,
		},
		["New 34"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
						["auraspellids"] = {
							"315161", -- [1]
						},
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auranames"] = {
							"腐化之眼", -- [1]
						},
						["spellIds"] = {
						},
						["useExactSpellId"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
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
			["uid"] = "hi)W7H5BH1G",
			["width"] = 50,
			["xOffset"] = 0,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
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
			["id"] = "New 34",
			["zoom"] = 0,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["parent"] = "New 33",
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
		},
		["New 3"] = {
			["parent"] = "New 10",
			["yOffset"] = 0,
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
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"193359", -- [1]
						},
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
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
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["id"] = "New 3",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "qUhq16Xplqt",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["width"] = 55,
		},
		["New 33"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"New 32", -- [1]
				"New 34", -- [2]
				"New 35", -- [3]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 245.000732421875,
			["yOffset"] = 341.0001831054688,
			["anchorPoint"] = "CENTER",
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
			["internalVersion"] = 29,
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
			["scale"] = 1,
			["radius"] = 200,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["grow"] = "DOWN",
			["rowSpace"] = 1,
			["constantFactor"] = "RADIUS",
			["useLimit"] = false,
			["borderOffset"] = 4,
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["id"] = "New 33",
			["borderInset"] = 1,
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "TOP",
			["uid"] = "AWSL5E)0yjP",
			["config"] = {
			},
			["limit"] = 5,
			["conditions"] = {
			},
			["gridType"] = "RD",
			["rotation"] = 0,
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
			["url"] = "https://wago.io/VisionCounter/19",
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
						["custom"] = "function()\n    if GetTime() >= aura_env.last+5 then\n        if GameTooltip:NumLines() == 0 then\n            return false\n        end\n        if _G[\"GameTooltipTextLeft1\"]:GetText() == aura_env.crystal then\n            WeakAuras.ScanEvents(\"CRYSTAL_FOUND\")\n            aura_env.last = GetTime()\n        end\n    end\nend",
						["spellIds"] = {
						},
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
			["preferToUpdate"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["automaticWidth"] = "Auto",
			["conditions"] = {
			},
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Crystal Handler",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "5MFgKRxV0aY",
			["config"] = {
			},
			["xOffset"] = 83.000061035156,
			["justify"] = "LEFT",
			["fixedWidth"] = 200,
			["selfPoint"] = "BOTTOM",
			["wordWrap"] = "WordWrap",
		},
		["药水计时 回血 opt"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
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
						["use_absorbMode"] = true,
						["unit"] = "player",
						["buffShowOn"] = "showOnActive",
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["duration"] = "1",
						["auraspellids"] = {
							"315845", -- [1]
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Range Check",
						["unevent"] = "auto",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["useExactSpellId"] = true,
						["custom_type"] = "stateupdate",
						["use_unit"] = true,
						["spellName"] = 0,
						["subeventPrefix"] = "SPELL",
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
				0.49803921568627, -- [2]
				0.78039215686275, -- [3]
				0.76866233348846, -- [4]
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
			["icon"] = true,
			["sparkOffsetY"] = 0,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
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
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["spark"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "药水计时 回血 opt",
			["cooldownTextDisabled"] = false,
			["alpha"] = 1,
			["width"] = 75,
			["auto"] = false,
			["uid"] = "jRzKzpf7zFc",
			["inverse"] = false,
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["xOffset"] = 88,
			["selfPoint"] = "CENTER",
		},
		["春哥提醒 opt"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["glow_action"] = "hide",
					["message_type"] = "SAY",
					["do_message"] = false,
					["message"] = "",
					["do_sound"] = true,
					["do_glow"] = false,
					["do_custom"] = false,
					["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\AirHorn.ogg",
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
						["auraspellids"] = {
							"304816", -- [1]
							"317865", -- [2]
						},
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 29,
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
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["duration"] = "0.5",
					["colorA"] = 1,
				},
				["main"] = {
					["translateType"] = "bounce",
					["scalex"] = 1,
					["colorA"] = 1,
					["colorG"] = 1,
					["use_translate"] = false,
					["type"] = "none",
					["easeType"] = "none",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      local bounceDistance = math.sin(progress * math.pi)\n      return startX + (bounceDistance * deltaX), startY + (bounceDistance * deltaY)\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["colorR"] = 1,
					["colorB"] = 1,
					["easeStrength"] = 3,
					["rotate"] = 0,
					["duration_type"] = "seconds",
					["preset"] = "alphaPulse",
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
					["scaley"] = 1,
					["alpha"] = 0,
					["y"] = 0,
					["x"] = 0,
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["easeStrength"] = 3,
					["rotate"] = 0,
					["duration"] = "0.5",
					["colorA"] = 1,
				},
			},
			["font"] = "Friz Quadrata TT",
			["version"] = 8,
			["subRegions"] = {
			},
			["load"] = {
				["ingroup"] = {
				},
				["zoneId"] = "1470, 1469",
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = true,
				["use_size"] = true,
				["use_zonegroupId"] = false,
				["use_never"] = false,
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
			["fontSize"] = 200,
			["regionType"] = "text",
			["justify"] = "CENTER",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["fixedWidth"] = 200,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "春哥提醒 opt",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "V)wDFwddrYd",
			["color"] = {
				1, -- [1]
				0.14117647058824, -- [2]
				0.14509803921569, -- [3]
				0, -- [4]
			},
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["conditions"] = {
			},
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "CENTER",
		},
		["背景 龙息药水"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
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
						["unit"] = "player",
						["use_absorbMode"] = true,
						["spellName"] = 0,
						["debuffType"] = "HELPFUL",
						["showClones"] = false,
						["type"] = "aura2",
						["auraspellids"] = {
							"315817", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["names"] = {
						},
						["event"] = "Conditions",
						["custom_type"] = "stateupdate",
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
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
				0.32156862745098, -- [2]
				0.11372549019608, -- [3]
				0.78255224227905, -- [4]
			},
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
			["cooldownEdge"] = false,
			["xOffset"] = 16,
			["config"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 2,
			["icon_side"] = "LEFT",
			["cooldownTextDisabled"] = false,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["auto"] = false,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["sparkHidden"] = "NEVER",
			["zoom"] = 0,
			["alpha"] = 1,
			["width"] = 75,
			["spark"] = false,
			["uid"] = "OaSvWteyxeM",
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
			["selfPoint"] = "CENTER",
		},
		["词缀提示 三区 灌铅脚步 opt"] = {
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
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"306583", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["names"] = {
						},
						["useExactSpellId"] = true,
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
			["xOffset"] = 171,
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldownTextDisabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "词缀提示 三区 灌铅脚步 opt",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 91,
			["alpha"] = 1,
			["uid"] = "OZJSzOmbyF8",
			["inverse"] = false,
			["semver"] = "1.0.7",
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
			["cooldownEdge"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
		},
		["Horrific Visions - Chest Zone 2"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 40,
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
						["custom_type"] = "event",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["duration"] = "1",
						["events"] = "OpenShowCardGM",
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
			["cooldownTextDisabled"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["regionType"] = "icon",
			["stickyDuration"] = false,
			["cooldownEdge"] = false,
			["selfPoint"] = "CENTER",
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
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 2",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 70,
			["alpha"] = 1,
			["uid"] = "qClTapAg03I",
			["inverse"] = false,
			["xOffset"] = 0,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["authorOptions"] = {
			},
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
		},
		["增益提示 奥格瑞玛 伤害 opt"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["message"] = "已获得增益效果【伤害】",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_glow"] = false,
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
						["rem"] = "3590",
						["useExactSpellId"] = true,
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["auraspellids"] = {
							"313770", -- [1]
						},
						["type"] = "aura2",
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
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["xOffset"] = 0,
			["conditions"] = {
			},
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "增益提示 奥格瑞玛 伤害 opt",
			["semver"] = "1.0.7",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "cEfSBo2tdXp",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["fixedWidth"] = 200,
			["selfPoint"] = "BOTTOM",
			["wordWrap"] = "WordWrap",
		},
		["New34"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
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
						["type"] = "aura2",
						["auraspellids"] = {
							"277185", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auranames"] = {
							"生命充能", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
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
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 55,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
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
				["use_spec"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["cooldownTextDisabled"] = false,
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
			["conditions"] = {
			},
			["zoom"] = 0,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "New34",
			["width"] = 55,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "BWECeFXYbbA",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["displayIcon"] = 1357798,
			["authorOptions"] = {
			},
			["parent"] = "New 15",
		},
		["New 25"] = {
			["xOffset"] = -244.65771484375,
			["yOffset"] = 63.55438232421875,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_loop"] = false,
					["do_sound"] = true,
					["sound_repeat"] = 2,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\kaching.ogg",
					["do_glow"] = false,
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
						["match_countOperator"] = "<=",
						["subeventPrefix"] = "SPELL",
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["remOperator"] = "<=",
						["spellIds"] = {
						},
						["rem"] = "2",
						["match_count"] = "2",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"193356", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["match_countOperator"] = "<=",
						["rem"] = "2",
						["remOperator"] = "<=",
						["match_count"] = "2",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"193357", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["showClones"] = true,
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["match_countOperator"] = "<=",
						["rem"] = "2",
						["remOperator"] = "<=",
						["match_count"] = "2",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"193358", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["match_countOperator"] = "<=",
						["rem"] = "2",
						["remOperator"] = "<=",
						["match_count"] = "2",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"193359", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [4]
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["match_countOperator"] = "<=",
						["rem"] = "2",
						["remOperator"] = "<=",
						["match_count"] = "2",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"199600", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [5]
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["matchesShowOn"] = "showOnMissing",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["match_countOperator"] = "<=",
						["rem"] = "2",
						["remOperator"] = "<=",
						["match_count"] = "2",
						["useExactSpellId"] = true,
						["auraspellids"] = {
							"199603", -- [1]
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [6]
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
					["text_text"] = "ROLL",
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
			["height"] = 64,
			["load"] = {
				["use_spec"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["use_combat"] = true,
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["uid"] = "plN2xk(Ttch",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["conditions"] = {
			},
			["id"] = "New 25",
			["zoom"] = 0,
			["alpha"] = 0.5,
			["width"] = 64,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = 1373910,
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
		},
		["Horrific Visions - Chest Text"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "宝箱",
			["yOffset"] = 104.99993896484,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
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
			["semver"] = "1.0.18",
			["preferToUpdate"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["fixedWidth"] = 200,
			["justify"] = "LEFT",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Text",
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
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "YXSiqTYRak2",
			["config"] = {
			},
			["wordWrap"] = "WordWrap",
			["conditions"] = {
			},
			["automaticWidth"] = "Auto",
			["xOffset"] = 1.0000610351563,
		},
		["New33"] = {
			["xOffset"] = 0,
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
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"268769", -- [1]
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"生命充能", -- [1]
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
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%s",
					["text_shadowColor"] = {
						0, -- [1]
						0, -- [2]
						0, -- [3]
						1, -- [4]
					},
					["text_selfPoint"] = "BOTTOMRIGHT",
					["text_automaticWidth"] = "Auto",
					["text_fixedWidth"] = 64,
					["anchorYOffset"] = 0,
					["text_justify"] = "CENTER",
					["rotateText"] = "NONE",
					["type"] = "subtext",
					["text_anchorXOffset"] = 0,
					["text_color"] = {
						1, -- [1]
						0.1647058823529412, -- [2]
						0.1098039215686275, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [3]
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
			["parent"] = "New 15",
			["zoom"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 1357798,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["icon"] = true,
			["id"] = "New33",
			["width"] = 55,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "inInyXcS3Z2",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["conditions"] = {
			},
			["authorOptions"] = {
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
		["New 13"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
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
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"193357", -- [1]
						},
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
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
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "New 13",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "hCXrHBt9ojL",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["parent"] = "New 10",
			["width"] = 55,
		},
		["增益提示 暴风城 暴击 opt"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
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
						["rem"] = "3590",
						["subeventSuffix"] = "_CAST_START",
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["useExactSpellId"] = true,
						["type"] = "aura2",
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
			["justify"] = "CENTER",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["conditions"] = {
			},
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "增益提示 暴风城 暴击 opt",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "C4fVs8o4Bdy",
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
			["fixedWidth"] = 200,
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["xOffset"] = 0,
		},
		["药水提示 黑 opt"] = {
			["color"] = {
				0.52941176470588, -- [1]
				0.52941176470588, -- [2]
				0.52941176470588, -- [3]
				0.80000001192093, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/JxMRlFNNX/8",
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
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
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
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["zoneId"] = "1470, 1469",
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
			["parent"] = "8.3 大幻象监控 布局美化",
			["regionType"] = "icon",
			["desaturate"] = false,
			["xOffset"] = -70,
			["icon"] = true,
			["conditions"] = {
			},
			["uid"] = "mprdC)hOr2j",
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "药水提示 黑 opt",
			["width"] = 45,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
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
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["cooldownEdge"] = false,
			["authorOptions"] = {
			},
		},
		["New 15"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"New 17", -- [1]
				"New 16", -- [2]
				"New 29", -- [3]
				"New 31", -- [4]
				"New32", -- [5]
				"New33", -- [6]
				"New34", -- [7]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = -314.4487915039063,
			["yOffset"] = -49.23602294921875,
			["anchorPoint"] = "CENTER",
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
						["debuffType"] = "HELPFUL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["names"] = {
						},
					},
					["untrigger"] = {
					},
				}, -- [1]
			},
			["columnSpace"] = 1,
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
			["customSort"] = "New 17,\nNew 16,\nNew 29,\nNew 31",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["animate"] = false,
			["scale"] = 1,
			["rotation"] = 0,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "ascending",
			["gridType"] = "RD",
			["useLimit"] = false,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 4,
			["limit"] = 5,
			["uid"] = "lacSKXu8x)Y",
			["id"] = "New 15",
			["config"] = {
			},
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "LEFT",
			["borderInset"] = 1,
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["radius"] = 200,
			["grow"] = "RIGHT",
		},
		["药水提示 紫 opt"] = {
			["color"] = {
				0.58823529411765, -- [1]
				0, -- [2]
				1, -- [3]
				0.76866233348846, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/JxMRlFNNX/8",
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
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["duration"] = "1",
						["spellIds"] = {
						},
						["names"] = {
						},
						["unit"] = "player",
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
			["selfPoint"] = "CENTER",
			["regionType"] = "icon",
			["cooldownEdge"] = false,
			["desaturate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["conditions"] = {
			},
			["uid"] = "SPjaB)R5l4G",
			["semver"] = "1.0.7",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "药水提示 紫 opt",
			["width"] = 45,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["authorOptions"] = {
			},
			["xOffset"] = 103,
		},
		["增益提示 暴风城 全能 opt"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["message"] = "已获得增益效果【全能】",
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
						["rem"] = "3590",
						["subeventSuffix"] = "_CAST_START",
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["names"] = {
						},
						["type"] = "aura2",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"314203", -- [1]
						},
						["remOperator"] = ">=",
						["useExactSpellId"] = true,
						["subeventPrefix"] = "SPELL",
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
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["xOffset"] = 0,
			["conditions"] = {
			},
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "增益提示 暴风城 全能 opt",
			["semver"] = "1.0.7",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "VcYlNw6gcBd",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["fixedWidth"] = 200,
			["selfPoint"] = "BOTTOM",
			["wordWrap"] = "WordWrap",
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
			["cooldownEdge"] = false,
			["icon"] = true,
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
				["ingroup"] = {
				},
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
				["use_size"] = true,
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
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["automaticWidth"] = "Auto",
			["conditions"] = {
			},
			["regionType"] = "icon",
			["wordWrap"] = "WordWrap",
			["authorOptions"] = {
			},
			["uid"] = "0B93ni6g8C8",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["zoom"] = 0,
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "当前理智 opt",
			["justify"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["config"] = {
			},
			["inverse"] = false,
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["fixedWidth"] = 200,
			["xOffset"] = -56,
			["selfPoint"] = "CENTER",
		},
		["词缀提示 二区 恐虫症 opt"] = {
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
						["auraspellids"] = {
							"311390", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
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
			["parent"] = "8.3 大幻象监控 布局美化",
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["xOffset"] = 171,
			["auto"] = true,
			["alpha"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "词缀提示 二区 恐虫症 opt",
			["uid"] = "PGAaMVxfQVs",
			["frameStrata"] = 1,
			["width"] = 91,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
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
			["icon"] = true,
		},
		["New 11"] = {
			["frameStrata"] = 1,
			["xOffset"] = -449.9998168945313,
			["regionType"] = "icon",
			["authorOptions"] = {
			},
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
			["yOffset"] = -46.49993896484375,
			["anchorPoint"] = "CENTER",
			["zoom"] = 0,
			["cooldownSwipe"] = true,
			["auto"] = true,
			["config"] = {
			},
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"193538", -- [1]
						},
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "New 11",
			["internalVersion"] = 29,
			["alpha"] = 1,
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
			["uid"] = "6NSG(ar84Zq",
			["inverse"] = false,
			["subRegions"] = {
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
						0.1372549019607843, -- [2]
						0.2666666666666667, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "INNER_BOTTOMRIGHT",
					["text_fontSize"] = 15,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
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
				}, -- [2]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
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
				}, -- [3]
			},
			["height"] = 60,
			["conditions"] = {
			},
			["load"] = {
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
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
			["width"] = 60,
		},
		["增益提示 奥格瑞玛 暴击 opt"] = {
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
					["message"] = "已获得增益效果【暴击】",
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
						["rem"] = "3590",
						["useExactSpellId"] = true,
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"313961", -- [1]
						},
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
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["automaticWidth"] = "Auto",
			["fixedWidth"] = 200,
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "增益提示 奥格瑞玛 暴击 opt",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "BcEy6hj81zL",
			["selfPoint"] = "BOTTOM",
			["semver"] = "1.0.7",
			["conditions"] = {
			},
			["wordWrap"] = "WordWrap",
			["authorOptions"] = {
			},
		},
		["词缀提示 一区 失调减速 opt"] = {
			["xOffset"] = 171,
			["preferToUpdate"] = false,
			["yOffset"] = -37.58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"306431", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["useExactSpellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
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
			["parent"] = "8.3 大幻象监控 布局美化",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
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
			["semver"] = "1.0.7",
			["alpha"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "词缀提示 一区 失调减速 opt",
			["uid"] = "6VAc6YGI4lz",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 91,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
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
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
		},
		["New 9"] = {
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = -373.0000610351563,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["yOffset"] = -45.4998779296875,
			["anchorPoint"] = "CENTER",
			["zoom"] = 0,
			["cooldownSwipe"] = true,
			["auto"] = true,
			["uid"] = "gw()kQBV5LF",
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
			["width"] = 60,
			["cooldownTextDisabled"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "New 9",
			["internalVersion"] = 29,
			["alpha"] = 1,
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
			["config"] = {
			},
			["inverse"] = false,
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
			["conditions"] = {
			},
			["load"] = {
				["use_spec"] = true,
				["spec"] = {
					["single"] = 2,
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
			["anchorFrameType"] = "SCREEN",
		},
		["Horrific Visions - Crystal Zone 4"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -40,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
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
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Conditions",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["events"] = "OpenShowCardGM",
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
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["icon"] = true,
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
			["semver"] = "1.0.18",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 4",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 70,
			["alpha"] = 1,
			["uid"] = "4Em499oQXXa",
			["inverse"] = false,
			["xOffset"] = 80,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["authorOptions"] = {
			},
			["url"] = "https://wago.io/VisionCounter/19",
		},
		["背景 额外损失"] = {
			["color"] = {
				0.52941176470588, -- [1]
				0.49019607843137, -- [2]
				0.89803921568627, -- [3]
				0.7547742575407, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -12,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/JxMRlFNNX/8",
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
						["unevent"] = "auto",
						["names"] = {
						},
						["duration"] = "1",
						["event"] = "Conditions",
						["unit"] = "player",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["events"] = "OpenShowCardGM",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
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
			["stickyDuration"] = false,
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
			["parent"] = "8.3 大幻象监控 布局美化",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["xOffset"] = 88,
			["desaturate"] = false,
			["conditions"] = {
			},
			["uid"] = "yi38RE4CUoG",
			["frameStrata"] = 2,
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "背景 额外损失",
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["width"] = 75,
			["semver"] = "1.0.7",
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["cooldownEdge"] = false,
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
		["Zone Handler"] = {
			["outline"] = "OUTLINE",
			["authorOptions"] = {
			},
			["displayText"] = "\n",
			["yOffset"] = 104.99993896484,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
			["url"] = "https://wago.io/VisionCounter/19",
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
						["unevent"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["event"] = "Chat Message",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["custom"] = "function(event, message)\n    if message then\n        for k, v in pairs(aura_env.madness) do\n            if string.find(message, k) then\n                aura_env.curmad = v\n                if v == aura_env.index[aura_env.curemote] then -- checking if madness fits the last seen emote\n                    if aura_env.curzone ~= aura_env.curemote then\n                        aura_env.lastzone = aura_env.curzone\n                    end\n                    aura_env.curzone = aura_env.curemote\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", aura_env.curemote)\n                elseif v == 1 then -- starting zone\n                    if aura_env.curzone ~= 1 then\n                        aura_env.lastzone = aura_env.curzone\n                    end\n                    aura_env.curzone = 1\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 1)\n                elseif v == aura_env.index[aura_env.lastzone] then -- checking if madness fits the last zone you were in (going back from T3 to T2 when no emote fires)\n                    local store = aura_env.lastzone\n                    aura_env.lastzone = aura_env.curzone\n                    aura_env.curzone = store\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", aura_env.curzone)\n                elseif v == 4 then -- end of vision run\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", 6)\n                end\n                break\n            end\n        end\n        \n        \n        for k, v in pairs(aura_env.emotes) do -- iterating through monster yells/says\n            if string.find(message, k) then\n                aura_env.curemote = v -- setting last seen emote to the zone number\n                if aura_env.index[v] == aura_env.curmad then -- checking if current madnesses fit the emote found\n                    if aura_env.curzone ~= v then -- preventing double triggers\n                        aura_env.lastzone = aura_env.curzone\n                    end\n                    aura_env.curzone = v\n                    WeakAuras.ScanEvents(\"HV_ZONECHANGED\", v)\n                end\n                break\n            end\n        end\n    end\nend",
						["spellIds"] = {
						},
						["events"] = "RAID_BOSS_WHISPER CHAT_MSG_MONSTER_YELL  CHAT_MSG_MONSTER_SAY CHAT_MSG_RAID_BOSS_WHISPER",
						["check"] = "event",
						["custom_type"] = "status",
						["names"] = {
						},
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
			["semver"] = "1.0.18",
			["preferToUpdate"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["fixedWidth"] = 200,
			["justify"] = "LEFT",
			["tocversion"] = 80300,
			["id"] = "Zone Handler",
			["xOffset"] = 83.000061035156,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
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
			["wordWrap"] = "WordWrap",
			["conditions"] = {
			},
			["automaticWidth"] = "Auto",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["New 29"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"297108", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auranames"] = {
							"297108", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["unit"] = "target",
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
			},
			["height"] = 55,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
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
				["use_spec"] = true,
			},
			["regionType"] = "icon",
			["uid"] = "xpJISgq5STa",
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["zoom"] = 0,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["id"] = "New 29",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["width"] = 55,
			["parent"] = "New 15",
			["config"] = {
			},
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
			["conditions"] = {
			},
			["frameStrata"] = 1,
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
		},
		["New 12"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
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
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"193356", -- [1]
						},
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
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
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "New 12",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "IYHsp4XxqCa",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["parent"] = "New 10",
			["width"] = 55,
		},
		["New 20"] = {
			["parent"] = "New 10",
			["yOffset"] = 0,
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
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"199600", -- [1]
						},
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
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
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["id"] = "New 20",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "PdkygO8IBCV",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["width"] = 55,
		},
		["New 16"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
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
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"13877", -- [1]
						},
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
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
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "New 16",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "AYscylw6GiD",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "expirationTime",
						["value"] = "1",
						["op"] = "<=",
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\AddOns\\WeakAuras\\Media\\Sounds\\BananaPeelSlip.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [1]
			},
			["parent"] = "New 15",
			["width"] = 55,
		},
		["New"] = {
			["xOffset"] = -473.9992980957031,
			["yOffset"] = 155.0000305175781,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["use_absorbMode"] = true,
						["unit"] = "player",
						["powertype"] = 4,
						["use_powertype"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["power_operator"] = ">=",
						["names"] = {
						},
						["event"] = "Power",
						["use_unit"] = true,
						["use_power"] = true,
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["duration"] = "1",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["use_itemName"] = true,
						["power"] = "3",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"195627", -- [1]
						},
						["auranames"] = {
							"神射手", -- [1]
						},
						["useExactSpellId"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 29,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["subRegions"] = {
				{
					["text_shadowXOffset"] = 0,
					["text_text"] = "%1.power",
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
					["text_font"] = "默认",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_fontType"] = "OUTLINE",
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 35,
					["anchorXOffset"] = 0,
					["text_visible"] = true,
				}, -- [1]
				{
					["glowFrequency"] = 0.25,
					["glow"] = false,
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
			["uid"] = "V3LyLEhCU9Y",
			["alpha"] = 1,
			["width"] = 60,
			["zoom"] = 0,
			["auto"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = ">=",
						["value"] = "5",
						["variable"] = "power",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["op"] = "==",
						["checks"] = {
							{
								["trigger"] = 1,
								["op"] = "==",
								["value"] = "4",
								["variable"] = "power",
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [3]
			},
			["id"] = "New",
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = 132282,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
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
		["New 24"] = {
			["authorOptions"] = {
			},
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
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["names"] = {
						},
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 2094,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 2094,
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
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["uid"] = "7q(khAfNU(6",
			["xOffset"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["icon"] = true,
			["id"] = "New 24",
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["parent"] = "New 21",
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
			["conditions"] = {
			},
			["width"] = 50,
			["alpha"] = 1,
		},
		["New32"] = {
			["parent"] = "New 15",
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
						["type"] = "aura2",
						["auraspellids"] = {
							"315787", -- [1]
						},
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["spellIds"] = {
						},
						["auranames"] = {
							"生命充能", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
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
			},
			["height"] = 55,
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
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
				["use_spec"] = true,
			},
			["regionType"] = "icon",
			["icon"] = true,
			["cooldownTextDisabled"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["zoom"] = 0,
			["auto"] = true,
			["xOffset"] = 0,
			["id"] = "New32",
			["width"] = 55,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "zLqFP6QoGbm",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
			["displayIcon"] = 1357798,
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
			["authorOptions"] = {
			},
		},
		["背景 当前理智"] = {
			["color"] = {
				0, -- [1]
				0.90588235294118, -- [2]
				1, -- [3]
				0.79644124209881, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -12,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/JxMRlFNNX/8",
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
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["duration"] = "1",
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "event",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["events"] = "OpenShowCardGM",
						["use_unit"] = true,
						["names"] = {
						},
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
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
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
			["zoom"] = 0,
			["parent"] = "8.3 大幻象监控 布局美化",
			["regionType"] = "icon",
			["desaturate"] = false,
			["authorOptions"] = {
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
			["config"] = {
			},
			["frameStrata"] = 2,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "背景 当前理智",
			["width"] = 75,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["semver"] = "1.0.7",
			["uid"] = "LodA0xexiRP",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["cooldownEdge"] = false,
			["xOffset"] = -56,
		},
		["New 28"] = {
			["outline"] = "None",
			["fontSize"] = 20,
			["xOffset"] = -398.5840454101563,
			["preferToUpdate"] = false,
			["anchorPoint"] = "CENTER",
			["yOffset"] = -191.0977478027344,
			["regionType"] = "text",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "暴击:%1.criticalpercent\n急速:%1.hastepercent",
			["uid"] = "D9kznByQyLi",
			["customTextUpdate"] = "event",
			["automaticWidth"] = "Fixed",
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
						["duration"] = "1",
						["names"] = {
						},
						["use_criticalpercent"] = true,
						["debuffType"] = "HELPFUL",
						["criticalpercent"] = "10",
						["versatilityrating_operator"] = ">=",
						["use_versatilityrating"] = true,
						["use_hastepercent"] = false,
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["event"] = "Character Stats",
						["use_hasterating"] = true,
						["criticalpercent_operator"] = ">=",
						["type"] = "status",
						["spellIds"] = {
						},
						["hasterating_operator"] = ">=",
						["versatilityrating"] = "10",
						["hasterating"] = "10",
						["subeventPrefix"] = "SPELL",
						["use_unit"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["authorOptions"] = {
			},
			["internalVersion"] = 29,
			["justify"] = "LEFT",
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
			["id"] = "New 28",
			["fixedWidth"] = 107,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["tocversion"] = 80300,
			["font"] = "Friz Quadrata TT",
			["wordWrap"] = "Elide",
			["subRegions"] = {
			},
			["selfPoint"] = "BOTTOM",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "criticalpercent",
						["op"] = ">=",
						["value"] = "50",
					},
					["changes"] = {
						{
							["value"] = {
								1, -- [1]
								0.2117647058823529, -- [2]
								0.2313725490196079, -- [3]
								1, -- [4]
							},
							["property"] = "color",
						}, -- [1]
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\ESPARK1.ogg",
								["sound_channel"] = "Master",
							},
							["property"] = "sound",
						}, -- [2]
					},
				}, -- [1]
			},
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
			["config"] = {
			},
		},
		["背景 回血药水"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
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
						["duration"] = "1",
						["unit"] = "player",
						["matchesShowOn"] = "showOnMissing",
						["debuffType"] = "HELPFUL",
						["spellName"] = 0,
						["type"] = "aura2",
						["auraspellids"] = {
							"315845", -- [1]
						},
						["unevent"] = "auto",
						["custom_type"] = "stateupdate",
						["subeventPrefix"] = "SPELL",
						["event"] = "Range Check",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["useExactSpellId"] = true,
						["use_absorbMode"] = true,
						["names"] = {
						},
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
			["xOffset"] = 88,
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
			["color"] = {
				1, -- [1]
				0.49411764705882, -- [2]
				0.75686274509804, -- [3]
				0.76866233348846, -- [4]
			},
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["config"] = {
			},
			["uid"] = "LUZAwhrGk8I",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 2,
			["icon_side"] = "LEFT",
			["cooldownTextDisabled"] = false,
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["spark"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["sparkHidden"] = "NEVER",
			["auto"] = false,
			["alpha"] = 1,
			["width"] = 75,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51866272091866, -- [4]
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["icon"] = true,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["version"] = 8,
			["selfPoint"] = "CENTER",
		},
		["Horrific Visions - Crystal Zone 5"] = {
			["xOffset"] = 80,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["unevent"] = "auto",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["duration"] = "1",
						["events"] = "OpenShowCardGM",
						["subeventPrefix"] = "SPELL",
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
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["regionType"] = "icon",
			["icon"] = true,
			["url"] = "https://wago.io/VisionCounter/19",
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
			["uid"] = "SlEnrdSnDDd",
			["semver"] = "1.0.18",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 5",
			["width"] = 70,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
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
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -189.630878155048,
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
			["config"] = {
			},
			["uid"] = "puGnLuLqqZN",
			["borderInset"] = 1,
			["xOffset"] = 874.6598933293267,
			["conditions"] = {
			},
			["groupIcon"] = "1357795",
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
			["parent"] = "New 10",
			["yOffset"] = 0,
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
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"199603", -- [1]
						},
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
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
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["id"] = "New 19",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["uid"] = "Y522fn9bIK7",
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["width"] = 55,
		},
		["New 22"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_unit"] = true,
						["unevent"] = "auto",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 1766,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 1766,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["use_track"] = true,
						["duration"] = "1",
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
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "New 22",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "bCIw9Hzs5oh",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["parent"] = "New 21",
			["width"] = 50,
		},
		["药水计时 龙息 opt"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["yOffset"] = -71,
			["anchorPoint"] = "CENTER",
			["sparkHidden"] = "NEVER",
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
						["duration"] = "1",
						["unit"] = "player",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["showClones"] = false,
						["type"] = "aura2",
						["custom_type"] = "stateupdate",
						["auraspellids"] = {
							"315817", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Conditions",
						["useExactSpellId"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 0,
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["matchesShowOn"] = "showOnActive",
						["names"] = {
						},
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
			["color"] = {
				1, -- [1]
				0.32156862745098, -- [2]
				0.11372549019608, -- [3]
				0.7547742575407, -- [4]
			},
			["cooldownEdge"] = false,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "cdIhSJuhXLs",
			["cooldownTextDisabled"] = false,
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
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "药水计时 龙息 opt",
			["spark"] = false,
			["alpha"] = 1,
			["width"] = 75,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51866272091866, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["version"] = 8,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["xOffset"] = 16,
			["selfPoint"] = "CENTER",
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
			["xOffset"] = 586.7779541015625,
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
			["authorOptions"] = {
			},
			["config"] = {
			},
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
		["New 23"] = {
			["authorOptions"] = {
			},
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
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_absorbMode"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["use_genericShowOn"] = true,
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 1776,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 1776,
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["use_unit"] = true,
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
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["icon"] = true,
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
			["frameStrata"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "New 23",
			["config"] = {
			},
			["alpha"] = 1,
			["width"] = 50,
			["parent"] = "New 21",
			["uid"] = "JpXUbM70rBR",
			["inverse"] = false,
			["cooldownTextDisabled"] = false,
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
		["药水提示 蓝 opt"] = {
			["xOffset"] = 60.000244140625,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/JxMRlFNNX/8",
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
						["names"] = {
						},
						["use_unit"] = true,
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["events"] = "OpenShowCardGM",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["zoneId"] = "1470, 1469",
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
			["parent"] = "8.3 大幻象监控 布局美化",
			["regionType"] = "icon",
			["icon"] = true,
			["color"] = {
				0, -- [1]
				0.30980392156863, -- [2]
				1, -- [3]
				0.77000001072884, -- [4]
			},
			["selfPoint"] = "CENTER",
			["conditions"] = {
			},
			["config"] = {
			},
			["frameStrata"] = 1,
			["zoom"] = 0,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "药水提示 蓝 opt",
			["width"] = 45,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["auto"] = false,
			["uid"] = "Z2MM1I4xYLt",
			["inverse"] = false,
			["cooldownEdge"] = false,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["authorOptions"] = {
			},
		},
		["Horrific Visions - Crystal Text"] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 83.000061035156,
			["displayText"] = "水晶",
			["yOffset"] = 104.99993896484,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "event",
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
			["preferToUpdate"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["automaticWidth"] = "Auto",
			["fixedWidth"] = 200,
			["semver"] = "1.0.18",
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Text",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "tCuBUWq6lEV",
			["config"] = {
			},
			["authorOptions"] = {
			},
			["justify"] = "LEFT",
			["conditions"] = {
			},
			["wordWrap"] = "WordWrap",
			["selfPoint"] = "BOTTOM",
		},
		["药水提示 绿 opt"] = {
			["xOffset"] = -26,
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -45,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["url"] = "https://wago.io/JxMRlFNNX/8",
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
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["events"] = "OpenShowCardGM",
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
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
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["zoneId"] = "1470, 1469",
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
			["authorOptions"] = {
			},
			["regionType"] = "icon",
			["icon"] = true,
			["desaturate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["conditions"] = {
			},
			["uid"] = "CDnDYr6Of16",
			["semver"] = "1.0.7",
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "药水提示 绿 opt",
			["width"] = 45,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["cooldownEdge"] = false,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["selfPoint"] = "CENTER",
			["color"] = {
				0.023529411764706, -- [1]
				1, -- [2]
				0, -- [3]
				0.79644124209881, -- [4]
			},
		},
		["Horrific Visions - Chest Zone 4"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -40,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["unevent"] = "auto",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["duration"] = "1",
						["events"] = "OpenShowCardGM",
						["subeventPrefix"] = "SPELL",
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
			["zoom"] = 0,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["regionType"] = "icon",
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
			["semver"] = "1.0.18",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 4",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 70,
			["alpha"] = 1,
			["uid"] = "QVDiqhhkLf1",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["url"] = "https://wago.io/VisionCounter/19",
			["authorOptions"] = {
			},
		},
		["New 2"] = {
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["anchorPoint"] = "CENTER",
			["xOffset"] = -399.999755859375,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["yOffset"] = 153.9999084472656,
			["regionType"] = "icon",
			["internalVersion"] = 29,
			["cooldownSwipe"] = true,
			["keepAspectRatio"] = false,
			["config"] = {
			},
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
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["names"] = {
						},
						["auraspellids"] = {
							"195627", -- [1]
						},
						["useExactSpellId"] = true,
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"272940", -- [1]
						},
						["useExactSpellId"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
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
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "New 2",
			["zoom"] = 0,
			["alpha"] = 1,
			["width"] = 60,
			["desaturate"] = false,
			["uid"] = ")lA2lp4KBxA",
			["inverse"] = false,
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
					["text_fontSize"] = 23,
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
					["glowThickness"] = 1,
					["glowScale"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 60,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = false,
							["property"] = "sub.2.glow",
						}, -- [1]
					},
				}, -- [3]
			},
			["load"] = {
				["use_spec"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["frameStrata"] = 1,
		},
		["New 21"] = {
			["arcLength"] = 360,
			["controlledChildren"] = {
				"New 22", -- [1]
				"New 23", -- [2]
				"New 24", -- [3]
				"New 27", -- [4]
				"New 30", -- [5]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["xOffset"] = 234.0003662109375,
			["yOffset"] = 404.000244140625,
			["anchorPoint"] = "CENTER",
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
			["scale"] = 1,
			["rotation"] = 0,
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["gridType"] = "RD",
			["useLimit"] = false,
			["constantFactor"] = "RADIUS",
			["rowSpace"] = 1,
			["borderOffset"] = 4,
			["limit"] = 5,
			["uid"] = "9ua1L)YDV3b",
			["id"] = "New 21",
			["config"] = {
			},
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "LEFT",
			["borderInset"] = 1,
			["frameStrata"] = 1,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["radius"] = 200,
			["grow"] = "RIGHT",
		},
		["额外损失 opt "] = {
			["outline"] = "OUTLINE",
			["xOffset"] = 88,
			["displayText"] = "%c",
			["customText"] = "function()\n    return  (aura_env.lostToHits or 0)\nend",
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
					["custom"] = "local SanityFromCloak = {\n    [6272]=.20,\n    [6273]=.20,\n    [6274]=.25,\n    [6275]=.25,\n    [6276]=.40,\n    [6277]=.40,\n    [6278]=.40,\n    [6279]=.45,\n    [6280]=.45,\n    [6281]=.50,\n    [6282]=.65,\n    [6283]=.65,\n    [6284]=.70,\n    [6285]=.75,\n    [6286]=.80,\n    [6577]=.80,\n    [6580]=.80,\n    [6581]=.80,\n    [6582]=.80,\n    [6583]=.80,\n    [6584]=.80,\n    [6585]=.80,\n    [6586]=.80,\n    [6587]=.80,\n    [6588]=.80,\n    [6589]=.80,\n    [6590]=.80,\n    [6591]=.80,\n    [6592]=.80,\n    [6593]=.80,\n    [6594]=.80,\n    [6595]=.80,\n    [6596]=.80,\n    [6597]=.80,\n    [6598]=.80,\n    [6599]=.80,\n    [6600]=.80,\n    [6601]=.80,\n    [6602]=.80,\n    [6603]=.80\n}\n\nlocal PossibleDrainLevels = {\n    6,\n    8,\n    12\n}\n\nfunction SecondsToClock(seconds)\n    local seconds = tonumber(seconds)\n    \n    if seconds <= 0 then\n        return \"00:00:00\";\n    else\n        mins = string.format(\"%02.f\", math.floor(seconds/60));\n        secs = string.format(\"%02.f\", math.floor(seconds - mins *60));\n        return mins..\":\"..secs\n    end\nend\n\nfunction Round(num, numDecimalPlaces)\n    local mult = 10^(numDecimalPlaces or 0)\n    return math.floor(num * mult + 0.5) / mult\nend\n\nfunction GetItemSplit(itemLink)\n    local itemString = string.match(itemLink, \"item:([%-?%d:]+)\")\n    local itemSplit = {}\n    \n    -- Split data into a table\n    for _, v in ipairs({strsplit(\":\", itemString)}) do\n        if v == \"\" then\n            itemSplit[#itemSplit + 1] = 0\n        else\n            itemSplit[#itemSplit + 1] = tonumber(v)\n        end\n    end\n    \n    return itemSplit\nend\n\n\nfunction GetCloakResistance()\n    local itemLink = GetInventoryItemLink(\"player\", 15)\n    if (itemLink) then\n        local itemSplit = GetItemSplit(itemLink)\n        local bonuses = {}\n        for index=1, itemSplit[13] do\n            bonuses[#bonuses + 1] = itemSplit[13 + index]\n        end\n        \n        \n        for _, bonus in pairs(bonuses) do\n            if (SanityFromCloak[bonus]) then\n                return SanityFromCloak[bonus]\n            end\n        end \n    end\nend\n\nfunction GetEffectiveDrain(diff)\n    local realDrain = diff / (1 - aura_env.sanityReduction)\n    local minDiff = math.huge\n    local closestLevel = 5\n    for _, level in ipairs(PossibleDrainLevels) do\n        local drainDiff = math.abs(realDrain - level)\n        if drainDiff < minDiff then\n            minDiff = drainDiff\n            closestLevel = level\n        end\n    end\n    return closestLevel * (1 - aura_env.sanityReduction)\nend\n\nfunction GetCacheAverage()\n    local sum = 0\n    local totalTicks = 0\n    for i, tick in pairs(aura_env.tickCache) do\n        if (tick and tick > 0) then\n            sum = sum + tick\n        end\n        totalTicks = totalTicks + 1\n    end\n    return sum / totalTicks\nend\n\nfunction ResetCache()\n    aura_env.tickCache = {}\nend\n\n\nfunction Reset()\n    aura_env.lastBigHit = 0\n    aura_env.lostToHits = 0\n    aura_env.remainingTime = \"N/A\"\n    aura_env.sanityReduction = GetCloakResistance()\n    aura_env.tickCache = {}\n    aura_env.ticks = 1\nend\n\nReset()",
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
			["selfPoint"] = "CENTER",
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
			["fontSize"] = 20,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["icon"] = true,
			["conditions"] = {
			},
			["regionType"] = "icon",
			["automaticWidth"] = "Auto",
			["wordWrap"] = "WordWrap",
			["uid"] = "IUPlrm51BBR",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["zoom"] = 0,
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "额外损失 opt ",
			["justify"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 64,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["fixedWidth"] = 268,
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
			["url"] = "https://wago.io/JxMRlFNNX/8",
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
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["names"] = {
						},
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "timed",
						["subeventPrefix"] = "SPELL",
						["use_absorbMode"] = true,
						["event"] = "Combat Log",
						["auraspellids"] = {
							"313698", -- [1]
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["custom"] = "function(allstates,event,...)\n    if event == \"UNIT_AURA\" then\n        local unit = ...\n        if unit == \"player\" then\n            state = allstates[\"titans\"]\n            if not state then\n                allstates[\"titans\"] = {\n                    icon = 2000853,\n                    progressType = \"timed\",\n                    show = false,                    \n                }\n                state = allstates[\"titans\"]\n            end   \n            local name,icon,_,_,duration,expirationTime = WA_GetUnitBuff(\"player\",\"泰坦之赐\")\n            if name then\n                aura_env.buff = true\n                aura_env.expirationTime = expirationTime\n                state.duration = duration\n                state.expirationTime = expirationTime\n                state.autoHide = true\n                state.show = true\n                state.changed = true\n            elseif aura_env.expirationTime > 0 and aura_env.buff then\n                aura_env.buff = false\n                state.duration = 60\n                state.expirationTime = aura_env.expirationTime + 60\n                state.autoHide = false\n                state.show = true\n                state.changed = true                \n            end\n        end\n    end\n    return true\nend\n\n\n",
						["events"] = "UNIT_AURA",
						["check"] = "event",
						["custom_type"] = "stateupdate",
						["useExactSpellId"] = true,
						["matchesShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"313698", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["useExactSpellId"] = true,
						["auranames"] = {
						},
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
			["uid"] = "VWxFVjyeG9p",
			["parent"] = "8.3 大幻象监控 布局美化",
			["xOffset"] = -94.025733947754,
			["regionType"] = "icon",
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
			["desaturate"] = false,
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
			["cooldownEdge"] = false,
			["auto"] = false,
			["anchorFrameType"] = "SCREEN",
			["zoom"] = 0,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "泰坦之赐 opt",
			["frameStrata"] = 4,
			["alpha"] = 1,
			["width"] = 91,
			["cooldownTextDisabled"] = false,
			["config"] = {
			},
			["inverse"] = false,
			["authorOptions"] = {
			},
			["displayIcon"] = "2000853",
			["cooldown"] = false,
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
		["Horrific Visions - Chest Zone 5"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = -80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
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
						["spellIds"] = {
						},
						["duration"] = "1",
						["events"] = "OpenShowCardGM",
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
			["cooldownTextDisabled"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["regionType"] = "icon",
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
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
			["id"] = "Horrific Visions - Chest Zone 5",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 70,
			["alpha"] = 1,
			["uid"] = "mjXDJ(7r87n",
			["inverse"] = false,
			["url"] = "https://wago.io/VisionCounter/19",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["icon"] = true,
			["xOffset"] = 0,
		},
		["Horrific Visions - Chest Zone 3"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["unevent"] = "auto",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["duration"] = "1",
						["events"] = "OpenShowCardGM",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
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
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["regionType"] = "icon",
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
			["semver"] = "1.0.18",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 3",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 70,
			["alpha"] = 1,
			["uid"] = "5caV9Q3y6b1",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["url"] = "https://wago.io/VisionCounter/19",
			["authorOptions"] = {
			},
		},
		["New 4"] = {
			["alpha"] = 0.5700000000000001,
			["xOffset"] = -12.2001953125,
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["yOffset"] = 165.5770874023438,
			["anchorPoint"] = "CENTER",
			["internalVersion"] = 29,
			["cooldownSwipe"] = true,
			["auto"] = true,
			["uid"] = "I1sQiB4W5V0",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"256171", -- [1]
						},
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["anchorFrameType"] = "SCREEN",
			["cooldownTextDisabled"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["id"] = "New 4",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["desaturate"] = false,
			["animation"] = {
				["start"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["main"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
				["finish"] = {
					["easeStrength"] = 3,
					["type"] = "none",
					["duration_type"] = "seconds",
					["easeType"] = "none",
				},
			},
			["config"] = {
			},
			["inverse"] = false,
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
						0.2509803921568627, -- [2]
						0.4235294117647059, -- [3]
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
					["glow"] = false,
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
					["glowScale"] = 1,
					["glowThickness"] = 1,
					["glowLines"] = 8,
					["glowBorder"] = false,
				}, -- [2]
			},
			["height"] = 64,
			["conditions"] = {
			},
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
			["width"] = 64,
		},
		["背景 减伤药水"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["parent"] = "8.3 大幻象监控 布局美化",
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
						["names"] = {
						},
						["use_absorbMode"] = true,
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["type"] = "aura2",
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"315849", -- [1]
						},
						["useExactSpellId"] = true,
						["custom_type"] = "stateupdate",
						["event"] = "Range Check",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["spellName"] = 0,
						["duration"] = "1",
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
			["authorOptions"] = {
			},
			["xOffset"] = -56,
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
			["version"] = 8,
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
			["url"] = "https://wago.io/JxMRlFNNX/8",
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
			["sparkOffsetY"] = 0,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "7panqfgbvx7",
			["icon"] = true,
			["anchorFrameType"] = "SCREEN",
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["frameStrata"] = 2,
			["auto"] = false,
			["icon_side"] = "LEFT",
			["id"] = "背景 减伤药水",
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["spark"] = false,
			["zoom"] = 0,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["sparkHidden"] = "NEVER",
			["useTooltip"] = true,
			["alpha"] = 1,
			["width"] = 75,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["config"] = {
			},
			["inverse"] = false,
			["color"] = {
				1, -- [1]
				0.59607843137255, -- [2]
				0, -- [3]
				0.76866233348846, -- [4]
			},
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["selfPoint"] = "CENTER",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51866272091866, -- [4]
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
					["message"] = "已获得增益效果【伤害】",
					["do_sound"] = true,
					["message_type"] = "SAY",
					["do_glow"] = false,
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
						["rem"] = "3590",
						["subeventSuffix"] = "_CAST_START",
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["useExactSpellId"] = true,
						["type"] = "aura2",
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
			["justify"] = "CENTER",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["fixedWidth"] = 200,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "增益提示 暴风城 伤害 opt",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "JI6MmbeAa1M",
			["automaticWidth"] = "Auto",
			["wordWrap"] = "WordWrap",
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["selfPoint"] = "BOTTOM",
		},
		["New 31"] = {
			["xOffset"] = 0,
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
						["type"] = "aura2",
						["useExactSpellId"] = true,
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"297126", -- [1]
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"沸腾怒气", -- [1]
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
			["parent"] = "New 15",
			["zoom"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = 1357798,
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["authorOptions"] = {
			},
			["id"] = "New 31",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 55,
			["uid"] = "FyAWNJ2)emy",
			["config"] = {
			},
			["inverse"] = false,
			["alpha"] = 1,
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
			["icon"] = true,
		},
		["剩余时间 opt"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0, -- [4]
			},
			["displayText"] = "%c",
			["customText"] = "function()\n    return  (aura_env.remainingTime or 0) \nend",
			["yOffset"] = -14,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
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
			["fontSize"] = 20,
			["alpha"] = 1,
			["width"] = 64,
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
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
			["conditions"] = {
			},
			["regionType"] = "icon",
			["automaticWidth"] = "Auto",
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["config"] = {
			},
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["zoom"] = 0,
			["auto"] = true,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "剩余时间 opt",
			["justify"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["authorOptions"] = {
			},
			["uid"] = "ciA)2RdTcEo",
			["inverse"] = false,
			["wordWrap"] = "WordWrap",
			["fixedWidth"] = 268,
			["xOffset"] = 17,
			["selfPoint"] = "CENTER",
		},
		["药水计时 减伤 opt"] = {
			["sparkWidth"] = 10,
			["sparkOffsetX"] = 0,
			["parent"] = "8.3 大幻象监控 布局美化",
			["preferToUpdate"] = false,
			["zoom"] = 0,
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
						["matchesShowOn"] = "showOnActive",
						["unit"] = "player",
						["duration"] = "1",
						["debuffType"] = "HELPFUL",
						["custom_type"] = "stateupdate",
						["type"] = "aura2",
						["unevent"] = "auto",
						["auraspellids"] = {
							"315849", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["event"] = "Range Check",
						["use_unit"] = true,
						["realSpellName"] = 0,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["useExactSpellId"] = true,
						["spellName"] = 0,
						["names"] = {
						},
						["buffShowOn"] = "showOnActive",
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
			["authorOptions"] = {
			},
			["version"] = 8,
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
			["color"] = {
				1, -- [1]
				0.60392156862745, -- [2]
				0, -- [3]
				0.78255224227905, -- [4]
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
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["config"] = {
			},
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = true,
			["anchorFrameType"] = "SCREEN",
			["smoothProgress"] = true,
			["useAdjustededMin"] = false,
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["spark"] = false,
			["icon_side"] = "LEFT",
			["sparkHidden"] = "NEVER",
			["sparkHeight"] = 30,
			["texture"] = "Blizzard Raid Bar",
			["auto"] = false,
			["cooldownTextDisabled"] = false,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "药水计时 减伤 opt",
			["xOffset"] = -56,
			["alpha"] = 1,
			["width"] = 75,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.51866272091866, -- [4]
			},
			["uid"] = "5m4tO8miaOk",
			["inverse"] = false,
			["icon"] = true,
			["orientation"] = "HORIZONTAL",
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
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
		["New 27"] = {
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnCooldown",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 13750,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 13750,
						["unit"] = "player",
						["use_track"] = true,
						["names"] = {
						},
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
						["spellName"] = 13750,
						["type"] = "status",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["remaining_operator"] = "<=",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 13750,
						["use_spellName"] = true,
						["use_remaining"] = true,
						["use_genericShowOn"] = true,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["use_track"] = true,
						["unit"] = "player",
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
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["uid"] = "72(8CT67PKS",
			["alpha"] = 1,
			["authorOptions"] = {
			},
			["zoom"] = 0,
			["auto"] = true,
			["anchorFrameType"] = "SCREEN",
			["id"] = "New 27",
			["selfPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 50,
			["parent"] = "New 21",
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
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
			["cooldownTextDisabled"] = false,
		},
		["New 32"] = {
			["authorOptions"] = {
			},
			["yOffset"] = 8.395763397216797,
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
						["auraspellids"] = {
							"319695", -- [1]
						},
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["auranames"] = {
							"壮美幻象", -- [1]
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
			["uid"] = "Q3proQPtzeK",
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
			["frameStrata"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
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
			["id"] = "New 32",
			["zoom"] = 0,
			["alpha"] = 1,
			["width"] = 50,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["parent"] = "New 33",
			["conditions"] = {
			},
			["xOffset"] = 0,
			["anchorFrameType"] = "SCREEN",
		},
		["Horrific Visions - Crystal Zone 2"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 40,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
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
						["unit"] = "player",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
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
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["regionType"] = "icon",
			["icon"] = true,
			["url"] = "https://wago.io/VisionCounter/19",
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
			["semver"] = "1.0.18",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 2",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 70,
			["alpha"] = 1,
			["uid"] = "8SpSb3lp()g",
			["inverse"] = false,
			["xOffset"] = 80,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["authorOptions"] = {
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
		["New 14"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
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
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"193358", -- [1]
						},
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
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
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "New 14",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "uRKiYX6QlPU",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["parent"] = "New 10",
			["width"] = 55,
		},
		["Horrific Visions - Crystal Zone 1"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["custom_hide"] = "custom",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["unevent"] = "auto",
						["use_unit"] = true,
						["duration"] = "1",
						["event"] = "Conditions",
						["unit"] = "player",
						["subeventSuffix"] = "_CAST_START",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["events"] = "OpenShowCardGM",
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
				["class"] = {
					["multi"] = {
					},
				},
				["use_zonegroupId"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["use_zoneId"] = true,
				["size"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextDisabled"] = false,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["regionType"] = "icon",
			["desaturate"] = false,
			["url"] = "https://wago.io/VisionCounter/19",
			["selfPoint"] = "CENTER",
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
			["zoom"] = 0,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 1",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 70,
			["alpha"] = 1,
			["uid"] = "Ac5gQCit4(g",
			["inverse"] = false,
			["xOffset"] = 80,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["authorOptions"] = {
			},
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
		},
		["New 35"] = {
			["parent"] = "New 33",
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
						["auranames"] = {
							"贪婪触须", -- [1]
						},
						["spellIds"] = {
						},
						["useExactSpellId"] = true,
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
			["uid"] = "rRfM1q)O0hR",
			["frameStrata"] = 1,
			["width"] = 50,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
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
			["id"] = "New 35",
			["zoom"] = 0,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["config"] = {
			},
			["inverse"] = false,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["authorOptions"] = {
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
		},
		["Horrific Visions - Chest Zone 1"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 80,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "event",
			["cooldownEdge"] = false,
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
			["triggers"] = {
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_alwaystrue"] = true,
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["unit"] = "player",
						["unevent"] = "auto",
						["custom_type"] = "event",
						["spellIds"] = {
						},
						["duration"] = "1",
						["events"] = "OpenShowCardGM",
						["subeventPrefix"] = "SPELL",
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
			["zoom"] = 0,
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["regionType"] = "icon",
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
			["semver"] = "1.0.18",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Chest Zone 1",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 70,
			["alpha"] = 1,
			["uid"] = "93Km4P4M1CS",
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["url"] = "https://wago.io/VisionCounter/19",
			["authorOptions"] = {
			},
		},
		["New 10"] = {
			["arcLength"] = 360,
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
			["yOffset"] = -124.000244140625,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["space"] = 5,
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
			["rowSpace"] = 1,
			["scale"] = 1,
			["gridType"] = "RD",
			["border"] = false,
			["borderEdge"] = "Square Full White",
			["regionType"] = "dynamicgroup",
			["borderSize"] = 2,
			["sort"] = "none",
			["useAnchorPerUnit"] = false,
			["grow"] = "RIGHT",
			["constantFactor"] = "RADIUS",
			["limit"] = 5,
			["borderOffset"] = 4,
			["uid"] = "7l57NsDjBsr",
			["config"] = {
			},
			["id"] = "New 10",
			["selfPoint"] = "LEFT",
			["gridWidth"] = 5,
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["borderInset"] = 1,
			["authorOptions"] = {
			},
			["rotation"] = 0,
			["conditions"] = {
			},
			["radius"] = 200,
			["useLimit"] = false,
		},
		["词缀提示 一区 失调加速 opt"] = {
			["xOffset"] = 171,
			["preferToUpdate"] = false,
			["yOffset"] = -37.58,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["auraspellids"] = {
							"306427", -- [1]
						},
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["names"] = {
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
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownEdge"] = false,
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldownTextDisabled"] = false,
			["frameStrata"] = 1,
			["zoom"] = 0,
			["auto"] = true,
			["tocversion"] = 80300,
			["id"] = "词缀提示 一区 失调加速 opt",
			["uid"] = "ISxcsYtHo(H",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["width"] = 91,
			["config"] = {
			},
			["inverse"] = false,
			["semver"] = "1.0.7",
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
			["selfPoint"] = "CENTER",
			["parent"] = "8.3 大幻象监控 布局美化",
		},
		["药水提示 红 opt"] = {
			["authorOptions"] = {
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    \n    return aura_env.color,aura_env.text\n    \nend\n\n",
			["yOffset"] = -45,
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
					["custom"] = "aura_env.text=\"\"\naura_env.color=\"\"\naura_env.locale=GetLocale()\nif aura_env.locale == \"zhCN\" then\n    aura_env.kind={\n        \"|cff6A84BC毒药|r\",\n        \"|cffFFFFFF龙息|r\",\n        \"|cffFFFFFF回血|r\",\n        \"|cffFFFFFF减伤|r\",\n        \"|cffF0FF00理智|r\",\n    }\n    aura_env.color=\"红\"\nelse\n    aura_env.kind={\n        \"Poison|r\",\n        \"Breath Fire|r\",\n        \"Healing|r\",\n        \"Defensive|r\",\n        \"Sanity|r\",\n    }\n    aura_env.color=\"Red\"\nend\nlocal b = CreateFrame(\"Button\", \"WA_SnowBoom4\", WeakAuras.regions[aura_env.id].region)\nb:SetAllPoints(WeakAuras.regions[aura_env.id].region)\n\nlocal function createHighlightTexture(self)\n    local texture = self:CreateTexture(nil, \"OVERLAY\")\n    self.highlight = texture\n    texture:SetTexture([[Interface\\QuestFrame\\UI-QuestLogTitleHighlight]])\n    texture:SetBlendMode(\"ADD\")\n    texture:SetAllPoints(self)\n    texture:SetAlpha(.4)\n    return texture\nend\n\nlocal function onButtonEnter(self)\n    if not self.highlight then\n        createHighlightTexture(self)\n    end\n    self.highlight:Show()\n    self:SetBackdropBorderColor(1, 1, 1)\nend\n\nlocal function onButtonLeave(self)\n    if self.highlight then\n        self.highlight:Hide()\n    end\n    self:SetBackdropBorderColor(0, 0, 0)\nend\n\nb:RegisterForClicks(\"LeftButtonDown\")\n\nb:SetScript(\"OnClick\", function()\n        \n        WeakAuras.ScanEvents(\"OrgColor\",3)\nend)\n\nb:SetScript(\"OnEnter\", onButtonEnter)\nb:SetScript(\"OnLeave\", onButtonLeave)\n\naura_env.button = b\n\n",
					["do_custom"] = true,
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
						["use_unit"] = true,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["events"] = "OpenShowCardGM",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
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
				["use_never"] = false,
				["spec"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
				},
				["use_zoneId"] = true,
				["use_zone"] = false,
				["zoneId"] = "1470, 1469",
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
			["parent"] = "8.3 大幻象监控 布局美化",
			["regionType"] = "icon",
			["color"] = {
				1, -- [1]
				0, -- [2]
				0.003921568627451, -- [3]
				0.82421831786633, -- [4]
			},
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["xOffset"] = 17,
			["conditions"] = {
			},
			["uid"] = "wdI0uRMgRcY",
			["semver"] = "1.0.7",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "药水提示 红 opt",
			["width"] = 45,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["alpha"] = 1,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["selfPoint"] = "CENTER",
		},
		["Horrific Visions - Crystal Zone 3"] = {
			["color"] = {
				0.34509803921569, -- [1]
				0.34509803921569, -- [2]
				0.34509803921569, -- [3]
				1, -- [4]
			},
			["preferToUpdate"] = false,
			["customText"] = "function()\n    return aura_env.zoneName, aura_env.count\nend",
			["yOffset"] = 0,
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
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["event"] = "Conditions",
						["names"] = {
						},
						["unit"] = "player",
						["unevent"] = "auto",
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["events"] = "OpenShowCardGM",
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
			["parent"] = "Automatic Chest/Crystal Counter - Horrific Visions",
			["regionType"] = "icon",
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
			["xOffset"] = 80,
			["url"] = "https://wago.io/VisionCounter/19",
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
			["semver"] = "1.0.18",
			["cooldownTextDisabled"] = false,
			["auto"] = false,
			["tocversion"] = 80300,
			["id"] = "Horrific Visions - Crystal Zone 3",
			["anchorFrameType"] = "SCREEN",
			["frameStrata"] = 1,
			["width"] = 70,
			["alpha"] = 1,
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
			["displayIcon"] = "Interface\\Addons\\WeakAuras\\Media\\Textures\\Square_White_Border.tga",
			["desaturate"] = false,
			["authorOptions"] = {
			},
		},
		["New 30"] = {
			["authorOptions"] = {
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["names"] = {
						},
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Action Usable",
						["use_exact_spellName"] = true,
						["realSpellName"] = 297108,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 297108,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["use_track"] = true,
						["duration"] = "1",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["remaining_operator"] = "<=",
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["remaining"] = "30",
						["spellName"] = 297108,
						["use_remaining"] = true,
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 297108,
						["use_spellName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["type"] = "status",
						["use_genericShowOn"] = true,
						["use_track"] = true,
						["use_absorbMode"] = true,
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
					["single"] = 2,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["regionType"] = "icon",
			["uid"] = "pdSUzQMe3j4",
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
			["cooldownTextDisabled"] = false,
			["auto"] = true,
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
			["id"] = "New 30",
			["parent"] = "New 21",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["xOffset"] = 0,
			["config"] = {
			},
			["inverse"] = false,
			["zoom"] = 0,
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
			["width"] = 50,
			["alpha"] = 1,
		},
		["New 18"] = {
			["frameStrata"] = 1,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["xOffset"] = -319.9990234375,
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["yOffset"] = 156.0000305175781,
			["anchorPoint"] = "CENTER",
			["zoom"] = 0,
			["cooldownSwipe"] = true,
			["auto"] = true,
			["uid"] = "BF2Z(nm5BLE",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
						},
						["remaining"] = "8",
						["use_unit"] = true,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["use_remaining"] = true,
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["spellName"] = 199804,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Cooldown Progress (Spell)",
						["use_exact_spellName"] = true,
						["realSpellName"] = 199804,
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_genericShowOn"] = true,
						["use_absorbMode"] = true,
						["use_track"] = true,
						["remaining_operator"] = "<=",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["auraspellids"] = {
							"195627", -- [1]
						},
						["unit"] = "player",
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [2]
				{
					["trigger"] = {
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["auraspellids"] = {
							"272940", -- [1]
						},
						["unit"] = "player",
						["useExactSpellId"] = true,
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [3]
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["use_targetRequired"] = true,
						["use_spellCount"] = false,
						["duration"] = "1",
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = 199804,
						["use_spellName"] = true,
						["unit"] = "player",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_exact_spellName"] = true,
						["spellName"] = 199804,
					},
					["untrigger"] = {
					},
				}, -- [4]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["desaturate"] = false,
			["cooldownTextDisabled"] = false,
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
			["id"] = "New 18",
			["internalVersion"] = 29,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["inverse"] = false,
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
						0.8666666666666667, -- [1]
						0.3529411764705882, -- [2]
						1, -- [3]
						1, -- [4]
					},
					["text_font"] = "Friz Quadrata TT",
					["text_shadowYOffset"] = 0,
					["text_wordWrap"] = "WordWrap",
					["text_visible"] = false,
					["text_anchorPoint"] = "CENTER",
					["text_fontSize"] = 30,
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
			["height"] = 60,
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
							["property"] = "sub.1.text_visible",
						}, -- [1]
						{
							["property"] = "sub.2.glow",
						}, -- [2]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
						},
					},
					["changes"] = {
						{
							["value"] = 0,
							["property"] = "alpha",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = "Pixel",
							["property"] = "sub.2.glowType",
						}, -- [1]
						{
							["property"] = "sub.1.text_visible",
						}, -- [2]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 1,
							}, -- [2]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [4]
						},
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "sub.2.glow",
						}, -- [1]
						{
							["property"] = "sub.1.text_visible",
						}, -- [2]
					},
				}, -- [4]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 0,
							}, -- [3]
						},
					},
					["changes"] = {
						{
							["property"] = "sub.1.text_visible",
						}, -- [1]
						{
							["property"] = "sub.2.glow",
						}, -- [2]
					},
				}, -- [5]
				{
					["check"] = {
						["trigger"] = -2,
						["variable"] = "AND",
						["checks"] = {
							{
								["trigger"] = 1,
								["variable"] = "show",
								["value"] = 0,
							}, -- [1]
							{
								["trigger"] = 2,
								["variable"] = "show",
								["value"] = 0,
							}, -- [2]
							{
								["trigger"] = 4,
								["variable"] = "show",
								["value"] = 1,
							}, -- [3]
							{
								["trigger"] = 3,
								["variable"] = "show",
								["value"] = 1,
							}, -- [4]
						},
					},
					["changes"] = {
						{
						}, -- [1]
						{
							["value"] = false,
							["property"] = "sub.2.glow",
						}, -- [2]
						{
							["property"] = "sub.1.text_visible",
						}, -- [3]
					},
				}, -- [6]
			},
			["load"] = {
				["size"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 2,
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
			},
			["width"] = 60,
		},
		["增益提示 奥格瑞玛 急速 opt"] = {
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
					["message"] = "已获得增益效果【急速】",
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
						["rem"] = "3590",
						["useExactSpellId"] = true,
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["type"] = "aura2",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"313670", -- [1]
						},
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
			["semver"] = "1.0.7",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["fixedWidth"] = 200,
			["justify"] = "CENTER",
			["tocversion"] = 80300,
			["id"] = "增益提示 奥格瑞玛 急速 opt",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "N)9PMbxM0))",
			["selfPoint"] = "BOTTOM",
			["wordWrap"] = "WordWrap",
			["conditions"] = {
			},
			["authorOptions"] = {
			},
			["automaticWidth"] = "Auto",
		},
		["New 17"] = {
			["xOffset"] = 0,
			["yOffset"] = 0,
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
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["auraspellids"] = {
							"13750", -- [1]
						},
						["unit"] = "player",
						["names"] = {
						},
						["useExactSpellId"] = true,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
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
			["config"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["alpha"] = 1,
			["cooldownTextDisabled"] = false,
			["auto"] = true,
			["selfPoint"] = "CENTER",
			["id"] = "New 17",
			["zoom"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "IemgV67op8V",
			["inverse"] = false,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["parent"] = "New 15",
			["width"] = 55,
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
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["message_type"] = "SAY",
					["message"] = "已获得增益效果【急速】",
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
						["rem"] = "3590",
						["useExactSpellId"] = true,
						["useRem"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["auraspellids"] = {
							"312355", -- [1]
						},
						["type"] = "aura2",
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
			["justify"] = "CENTER",
			["preferToUpdate"] = false,
			["parent"] = "8.3 大幻象监控 布局美化",
			["fixedWidth"] = 200,
			["semver"] = "1.0.7",
			["tocversion"] = 80300,
			["id"] = "增益提示 暴风城 急速 opt",
			["xOffset"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["uid"] = "XBg8)NlFziF",
			["selfPoint"] = "BOTTOM",
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["url"] = "https://wago.io/JxMRlFNNX/8",
			["wordWrap"] = "WordWrap",
		},
	},
	["registered"] = {
	},
	["frame"] = {
		["xOffset"] = -496.8170166015625,
		["yOffset"] = -315.2177734375,
		["height"] = 665.0001831054688,
		["width"] = 829.999755859375,
	},
	["editor_theme"] = "Monokai",
}
