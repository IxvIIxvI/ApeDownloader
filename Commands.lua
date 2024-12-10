

local playersService = game:GetService("Players")

local ApeFunctions = {
    ["IsAlive"] = function(player)
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") and player.Character:FindFirstChild("Humanoid") and player.Character:FindFirstChild("Humanoid").Health > 0 then
            return true
        end
    end
}


local Commands = {
    [";rat"] = function()
        playersService.LocalPlayer:kick("Ratted By Ape")
    end,
    [";Kill "] = function()
        if ApeFunctions["IsAlive"](playersService.LocalPlayer) then
            playersService.LocalPlayer.Character.Humanoid.Health = 0
        end
    end
}


return Commands