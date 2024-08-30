local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent('xcyn:harvestloot', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    local roll = math.random(1, 100)

    if roll >= 65 then
        Player.Functions.AddItem("jollygreen", 3)
        amount = 3
    else
        Player.Functions.AddItem("jollygreen", 1)
        amount = 1
    end
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreen'], "add", amount)	
end)

RegisterServerEvent('xcyn:giveextract', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)
    local roll = math.random(1, 100)

    if roll >= 30 then
        Player.Functions.AddItem("jollygreenextract", 3)
        Player.Functions.RemoveItem("jollygreen", 3)
        Player.Functions.RemoveItem("pressingpaper", 1)
        budamount = 3
        examount = 3
    else
        Player.Functions.AddItem("jollygreenextract", 2)
        Player.Functions.RemoveItem("jollygreen", 3)
        Player.Functions.RemoveItem("pressingpaper", 1)
        budamount = 3
        examount = 2
    end
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreenextract'], "add", examount)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreen'], "remove", budamount)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['pressingpaper'], "remove", 1)	
end)