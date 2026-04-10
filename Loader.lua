local GamePlaceIDs = {
    [13643807539] = "https://api.luarmor.net/files/v4/loaders/e52e614c519cc38b869f6a8071dc8812.lua"; -- sb vc
    [14413475235] = "https://api.luarmor.net/files/v4/loaders/e52e614c519cc38b869f6a8071dc8812.lua"; -- sb main
    [15124180230] = "https://api.luarmor.net/files/v4/loaders/e52e614c519cc38b869f6a8071dc8812.lua"; -- console
}

if not GamePlaceIDs[game.PlaceId] then
    game.Players.LocalPlayer:Kick("Velvet | This game is not supported.")
    return
end
if not getfenv().script_key then
    game.Players.LocalPlayer:Kick("Velvet | Key not found, make sure to include the script_key part in the first line.")
    return
end
writefile("VelvetScriptKey", getfenv().script_key)

loadstring(game:HttpGet(GamePlaceIDs[game.PlaceId]))()
