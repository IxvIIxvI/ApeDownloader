

if _G.ApeLoaded == true then
    return
end
_G.ApeLoaded = true


local PlaceIds = {
    ["6872265039"] = "BedwarsLobby",
    ["8444591321"] = "Bedwars",
    ["6872274481"] = "Bedwars",
    ["8560631822"] = "Bedwars",
    ["8560631822"] = "Bedwars"
}


local ScriptToLoad 

for i, v in pairs(PlaceIds) do
    if tostring(game.PlaceId) == i then
        ScriptToLoad = v
        if v == "Bedwars" then
            shared.Config = 6872274481
        else
            shared.Config = tostring(i)
        end
    end
end



if ScriptToLoad == nil then
    ScriptToLoad = "Universal"
end







if isfile("Ape/Modules/"..ScriptToLoad..".lua") then
    loadstring(readfile("Ape/Modules/"..ScriptToLoad..".lua"))()
else

    local suc, res  = pcall(function()
        return loadstring(game:HttpGet("https://raw.githubusercontent.com/IxvIIxvI/ApeDownloader/refs/heads/main/Modules/"..ScriptToLoad..".lua"))()
    end)
    if  suc then
        print("Loaded All Modules")
    end
end





