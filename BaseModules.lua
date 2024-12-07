repeat task.wait() until game:IsLoaded()

repeat task.wait() until workspace.CurrentCamera
_G.AutoInject = true


local GuiLibrary 
if isfile("Ape/GuiLibrary.lua") then
	GuiLibrary = loadstring(readfile("Ape/GuiLibrary.lua"))()
	
else
	GuiLibrary =  loadstring(game:HttpGet("https://raw.githubusercontent.com/IxvIIxvI/ApeDownloader/refs/heads/main/GuiLibrary.lua"))()
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/IxvIIxvI/ApeDownloader/refs/heads/main/Modules/Bedwars.lua"))() -- Base / Regular ape

local GuiLibrary = shared.GuiLibrary





local Windows = shared.Windows 
local CreateNotification = shared.createNotification

-- Available Windows Combat, Movement, Player, World, Visual

--[[  Windows
Windows.TestWindows = GuiLibrary.CreateWindow({
	["Name"] = "TestWindows",
	["Position"] = UDim2.new(0,970,0,100),
	["Icon"] =  getsynasset("Ape/Assets/Icons/Visual.png")
})
]] -- 


local TestModule = Windows.Combat.API.CreateToggle({
	["Name"] = "Test",
	["Default"] = false,
	["Function"] = function(callback)
	end
})

TestModule.CreateSlider({
	["Name"] = "Test",
	["Max"] = 50,
	["Min"] = 0.5,
	["Default"] = 25,
    ["Decemals"] = true,
	["Function"] = function(e)

    end
})

TestModule.CreateDropdown({
	["Name"] = "Test",
	["Options"] = {"true", "false"},
	["Default"] = "false",
	["Function"] = function(callback)
	end
})


CreateNotification("FAGGOTWARE", "LOADED", 5, 0.1)