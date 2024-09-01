local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent('xcyn:appleblueberry', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.AddItem("abgummy", 5)
    Player.Functions.RemoveItem("sugar", 2)
    Player.Functions.RemoveItem("dankflavor", 2)
    Player.Functions.RemoveItem("jollygreenextract", 2)
    Player.Functions.RemoveItem("water", 2)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['abgummy'], "add", 5)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['sugar'], "remove", 2)
    wait(1000)	
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreenextract'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['water'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['dankflavor'], "remove", 2)
end)

RegisterServerEvent('xcyn:berryblast', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.AddItem("bbgummy", 5)
    Player.Functions.RemoveItem("sugar", 2)
    Player.Functions.RemoveItem("dankflavor", 2)
    Player.Functions.RemoveItem("jollygreenextract", 2)
    Player.Functions.RemoveItem("water", 2)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['bbgummy'], "add", 5)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['sugar'], "remove", 2)	
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreenextract'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['water'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['dankflavor'], "remove", 2)
end)

RegisterServerEvent('xcyn:spikedkiwi', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.AddItem("skgummy", 5)
    Player.Functions.RemoveItem("sugar", 2)
    Player.Functions.RemoveItem("dankflavor", 2)
    Player.Functions.RemoveItem("jollygreenextract", 2)
    Player.Functions.RemoveItem("water", 2)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['skgummy'], "add", 5)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['sugar'], "remove", 2)	
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreenextract'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['water'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['dankflavor'], "remove", 2)
end)

RegisterServerEvent('xcyn:tropicalstorm', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.AddItem("tsgummy", 5)
    Player.Functions.RemoveItem("sugar", 2)
    Player.Functions.RemoveItem("dankflavor", 2)
    Player.Functions.RemoveItem("jollygreenextract", 2)
    Player.Functions.RemoveItem("water", 2)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['tsgummy'], "add", 5)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['sugar'], "remove", 2)	
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreenextract'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['water'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['dankflavor'], "remove", 2)
end)

RegisterServerEvent('xcyn:raspberrydream', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.AddItem("rdgummy", 5)
    Player.Functions.RemoveItem("sugar", 2)
    Player.Functions.RemoveItem("dankflavor", 2)
    Player.Functions.RemoveItem("jollygreenextract", 2)
    Player.Functions.RemoveItem("water", 2)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['rdgummy'], "add", 5)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['sugar'], "remove", 2)	
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreenextract'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['water'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['dankflavor'], "remove", 2)
end)

RegisterServerEvent('xcyn:largeenergy', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.AddItem("jollyenergy", 1)
    Player.Functions.RemoveItem("sugar", 1)
    Player.Functions.RemoveItem("dankflavor", 1)
    Player.Functions.RemoveItem("emptycanlarge", 1)
    Player.Functions.RemoveItem("jollygreenextract", 2)
    Player.Functions.RemoveItem("water", 2)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollyenergy'], "add", 1)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['sugar'], "remove", 1)	
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreenextract'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['water'], "remove", 2)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['dankflavor'], "remove", 1)
    wait(1000)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['emptycanlarge'], "remove", 1)
end)

RegisterServerEvent('xcyn:sflargeenergy', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.AddItem("jollyenergysf", 1)
    Player.Functions.RemoveItem("dankflavor", 1)
    Player.Functions.RemoveItem("emptycanlarge", 1)
    Player.Functions.RemoveItem("jollygreenextract", 2)
    Player.Functions.RemoveItem("water", 2)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollyenergysf'], "add", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreenextract'], "remove", 2)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['dankflavor'], "remove", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['emptycanlarge'], "remove", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['water'], "remove", 2)
end)


RegisterServerEvent('xcyn:jollyjuiceserver', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.AddItem("jollyjuice", 1)
    Player.Functions.RemoveItem("dankflavor", 1)
    Player.Functions.RemoveItem("emptycan", 1)
    Player.Functions.RemoveItem("jollygreenextract", 2)
    Player.Functions.RemoveItem("water", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollyjuice'], "add", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreenextract'], "remove", 2)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['dankflavor'], "remove", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['emptycan'], "remove", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['water'], "remove", 1)
end)

RegisterServerEvent('xcyn:cbddrink', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.AddItem("jollyenergycbd", 1)
    Player.Functions.RemoveItem("dankflavor", 1)
    Player.Functions.RemoveItem("emptycanlarge", 1)
    Player.Functions.RemoveItem("jollygreencbdextract", 2)
    Player.Functions.RemoveItem("water", 2)
    Player.Functions.RemoveItem("sugar", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollyenergysf'], "add", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['sugar'], "remove", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollygreencbdextract'], "remove", 2)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['dankflavor'], "remove", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['emptycanlarge'], "remove", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['water'], "remove", 2)
end)


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


