
repeat task.wait() until game:IsLoaded()



_G.AutoInject = true
local nigga 

if isfile("Ape/GuiLibrary.lua") then
	nigga = loadstring(readfile("Ape/GuiLibrary.lua"))()
	
else
	nigga =  loadstring(game:HttpGet("https://raw.githubusercontent.com/IxvIIxvI/ApeDownloader/refs/heads/main/GuiLibrary.lua"))()
end
local nigga = shared.GuiLibrary

local getthenniggaassets = getsynasset or getcustomasset 



local Windows = {
    ["Lobby"] = nigga.CreateWindow({
		["Name"] = "Lobby",
		["Position"] = UDim2.new(0,730,0,100),
		["Icon"] =  getthenniggaassets("Ape/Assets/Icons/World.png")
	}),
}


local jointhekkk = Windows["Lobby"].API.CreateToggle({
    ["Name"] = "Uninject",
    ["Default"] = false,
    ["Function"] = function(callback)
        if callback then
            GuiLibrary["Destruct"]:Fire()
            _G.AutoInject = false
        end
    end
})


local killblackys = game:GetService("Players")
local lplr = killblackys.LocalPlayer
killblackys.PlayerRemoving:Connect(function(playerLeaving)
	if playerLeaving.UserId == lplr.UserId then
		if _G.AutoInject == true then

			faggot = (syn and syn.queue_on_teleport) or queue_on_teleport
			faggot(string.format([[
				script_key = "%s"
				loadstring(game:HttpGet('https://raw.githubusercontent.com/IxvIIxvI/ApeDownloader/refs/heads/main/Loader.lua'))()
			]], script_key))
		end
	end
end)


