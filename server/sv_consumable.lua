local QBCore = exports['qb-core']:GetCoreObject()


------------------------------------------------------------------------------------------------
---------------------------------------Drinks---------------------------------------------------
------------------------------------------------------------------------------------------------

QBCore.Functions.CreateUseableItem("jollyenergy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("jollyenergy") then
        TriggerClientEvent("xcyn:consum:jollyenergy", source)
    end
end)

QBCore.Functions.CreateUseableItem("jollyenergysf", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("jollyenergysf") then
        TriggerClientEvent("xcyn:consum:jollyenergysf", source)
    end
end)

QBCore.Functions.CreateUseableItem("jollyenergycbd", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("jollyenergycbd") then
        TriggerClientEvent("xcyn:consum:jollyenergycbd", source)
    end
end)

QBCore.Functions.CreateUseableItem("jollyjuice", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("jollyjuice") then
        TriggerClientEvent("xcyn:consum:jollyjuice", source)
    end
end)

------------------------------------------------------------------------------------------------
---------------------------------------Gummies---------------------------------------------------
------------------------------------------------------------------------------------------------


QBCore.Functions.CreateUseableItem("abgummy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("abgummy") then
        TriggerClientEvent("xcyn:consum:abgummy", source)
    end
end)

QBCore.Functions.CreateUseableItem("bbgummy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("bbgummy") then
        TriggerClientEvent("xcyn:consum:bbgummy", source)
    end
end)

QBCore.Functions.CreateUseableItem("rdgummy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("rdgummy") then
        TriggerClientEvent("xcyn:consum:rdgummy", source)
    end
end)

QBCore.Functions.CreateUseableItem("skgummy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("skgummy") then
        TriggerClientEvent("xcyn:consum:skgummy", source)
    end
end)

QBCore.Functions.CreateUseableItem("tsgummy", function(source, item)
    local Player = QBCore.Functions.GetPlayer(source)
    if Player.Functions.GetItemByName("tsgummy") then
        TriggerClientEvent("xcyn:consum:tsgummy", source)
    end
end)


------------------------------------------------------------------------------------------------
---------------------------------------Eating Effects/Removal-----------------------------------
------------------------------------------------------------------------------------------------

RegisterServerEvent('xcyn:removecon:jollyenergy', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.RemoveItem("jollyenergy", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollyenergy'], "remove", 1)
end)

RegisterServerEvent('xcyn:removecon:jollyenergysf', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.RemoveItem("jollyenergysf", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollyenergysf'], "remove", 1)
end)

RegisterServerEvent('xcyn:removecon:jollyenergycbd', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.RemoveItem("jollyenergycbd", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollyenergycbd'], "remove", 1)
end)

RegisterServerEvent('xcyn:removecon:jollyjuice', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.RemoveItem("jollyjuice", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['jollyjuice'], "remove", 1)
end)

RegisterServerEvent('xcyn:removecon:abgummy', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.RemoveItem("abgummy", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['abgummy'], "remove", 1)
end)

RegisterServerEvent('xcyn:removecon:bbgummy', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.RemoveItem("bbgummy", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['bbgummy'], "remove", 1)
end)

RegisterServerEvent('xcyn:removecon:rdgummy', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.RemoveItem("rdgummy", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['rdgummy'], "remove", 1)
end)

RegisterServerEvent('xcyn:removecon:skgummy', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.RemoveItem("skgummy", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['skgummy'], "remove", 1)
end)

RegisterServerEvent('xcyn:removecon:tsgummy', function(src)
    local src = source
	local Player = QBCore.Functions.GetPlayer(src)  
   
    Player.Functions.RemoveItem("tsgummy", 1)
    TriggerClientEvent('qb-inventory:client:ItemBox', src, QBCore.Shared.Items['tsgummy'], "remove", 1)
end)

