-- hide ui elements
UIErrorsFrame:Hide()
MainMenuBarLeftEndCap:Hide()
MainMenuBarRightEndCap:Hide()
ShapeshiftBarFrame:UnregisterAllEvents()
ShapeshiftBarFrame:Hide()

-- dmg font
DAMAGE_TEXT_FONT = "Interface\\AddOns\\MongiSettings\\DamageFont.ttf"
COMBAT_TEXT_HEIGHT = 10

-- fps position
ToggleFramerate()
UIPARENT_MANAGED_FRAME_POSITIONS.FramerateLabel=nil
FramerateLabel:ClearAllPoints()
FramerateLabel:SetPoint("CENTER",-444,-295)

local frame = CreateFrame("frame")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:SetScript("OnEvent", function() 
	for i=1,12 do
		getglobal("ActionButton"..i.."HotKey"):Hide()
		getglobal("BonusActionButton"..i.."HotKey"):Hide()
		getglobal("MultiBarBottomLeftButton"..i.."HotKey"):Hide()
		getglobal("MultiBarBottomRightButton"..i.."HotKey"):Hide()
		getglobal("MultiBarLeftButton"..i.."HotKey"):Hide()
		getglobal("MultiBarRightButton"..i.."HotKey"):Hide()
		
		getglobal("BonusActionButton"..i.."Name"):Hide()
		getglobal("MultiBarBottomLeftButton"..i.."Name"):Hide()
		getglobal("MultiBarBottomRightButton"..i.."Name"):Hide()
		getglobal("MultiBarLeftButton"..i.."Name"):Hide()
		getglobal("MultiBarRightButton"..i.."Name"):Hide()
	end
end)
