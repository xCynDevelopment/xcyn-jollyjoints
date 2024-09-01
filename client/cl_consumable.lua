local QBCore = exports['qb-core']:GetCoreObject()
local player = PlayerPedId()


------------------------------------------------------------------------------------------------
---------------------------------------Effects--------------------------------------------------
------------------------------------------------------------------------------------------------

local function ClearWeedEffects(player)
    ShakeGameplayCam('DRUNK_SHAKE', 0.0)
    ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(player, 0)
    SetPedIsDrunk(player, false)
    SetPedMotionBlur(player, false)
end

local function GummyEffect()
    ShakeGameplayCam('DRUNK_SHAKE', 0.9)
    SetTimecycleModifier('stoned')
    SetPedMotionBlur(player, true)
    SetPedMovementClipset(player, 'MOVE_M@BUZZED', true)
    Wait(15000) 
    ClearWeedEffects(player)
end

local function THCDrinkEffect()
    ShakeGameplayCam('DRUNK_SHAKE', 1.2)
    SetTimecycleModifier('Bloom')
    SetPedMotionBlur(player, true)
    SetPedMovementClipset(player, 'MOVE_M@DRUNK@VERYDRUNK', true)
    SetPedIsDrunk(player, true)
    Wait(15000) 
    ClearWeedEffects(player)
end
    
local function CBDDrinkEffect()
    ShakeGameplayCam('DRUNK_SHAKE', 1.0)
    SetTimecycleModifier('Spectator6')
    SetPedMotionBlur(player, true)
    SetPedMovementClipset(player, 'MOVE_M@DRUNK@SLIGHTLYDRUNK', true)
    SetPedIsDrunk(player, true)
    Wait(15000) 
    ClearWeedEffects(player)
end

------------------------------------------------------------------------------------------------
---------------------------------------Events---------------------------------------------------
------------------------------------------------------------------------------------------------
RegisterNetEvent('xcyn:consum:jollyenergy')
AddEventHandler('xcyn:consum:jollyenergy', function()
    QBCore.Functions.Progressbar("eat_something", ("Drinking Jolly Energy"), 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "missmechanic", 
        anim = "work2_base", 
        flags = 3,
    }, {}, {}, function()
        StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
        ClearPedTasks(Ped)
        TriggerServerEvent('consumables:server:addThirst', QBCore.Functions.GetPlayerData().metadata.thirst + 5)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerServerEvent("xcyn:removecon:jollyenergy")
        THCDrinkEffect()
    end)
end)

RegisterNetEvent('xcyn:consum:jollyenergysf')
AddEventHandler('xcyn:consum:jollyenergysf', function()
    QBCore.Functions.Progressbar("eat_something", ("Drinking SF Jolly Energy"), 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "missmechanic", 
        anim = "work2_base", 
        flags = 3,
    }, {}, {}, function()
        StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
        ClearPedTasks(Ped)
        TriggerServerEvent('consumables:server:addThirst', QBCore.Functions.GetPlayerData().metadata.thirst + 5)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerServerEvent("xcyn:removecon:jollyenergysf")
        THCDrinkEffect()
    end)
end)

RegisterNetEvent('xcyn:consum:jollyenergycbd')
AddEventHandler('xcyn:consum:jollyenergycbd', function()
    QBCore.Functions.Progressbar("eat_something", ("Drinking Jolly Energy CBD"), 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "missmechanic", 
        anim = "work2_base", 
        flags = 3,
    }, {}, {}, function()
        StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
        ClearPedTasks(Ped)
        TriggerServerEvent('consumables:server:addThirst', QBCore.Functions.GetPlayerData().metadata.thirst + 5)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerServerEvent("xcyn:removecon:jollyenergycbd")
        CBDDrinkEffect()
    end)
end)

RegisterNetEvent('xcyn:consum:jollyjuice')
AddEventHandler('xcyn:consum:jollyjuice', function()
    QBCore.Functions.Progressbar("eat_something", ("Drinking Jolly Juice"), 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "missmechanic", 
        anim = "work2_base", 
        flags = 3,
    }, {}, {}, function()
        StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
        ClearPedTasks(Ped)
        TriggerServerEvent('consumables:server:addThirst', QBCore.Functions.GetPlayerData().metadata.thirst + 5)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerServerEvent("xcyn:removecon:jollyjuice")
        THCDrinkEffect()
    end)
end)

RegisterNetEvent('xcyn:consum:abgummy')
AddEventHandler('xcyn:consum:abgummy', function()
    QBCore.Functions.Progressbar("eat_something", ("Eating Apple Berry Gummy"), 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "missmechanic", 
        anim = "work2_base", 
        flags = 3,
    }, {}, {}, function()
        StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
        ClearPedTasks(Ped)
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + 5)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerServerEvent("xcyn:removecon:abgummy")
        GummyEffect()
    end)
end)

RegisterNetEvent('xcyn:consum:bbgummy')
AddEventHandler('xcyn:consum:bbgummy', function()
    QBCore.Functions.Progressbar("eat_something", ("Eating Berry Blast Gummy"), 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "missmechanic", 
        anim = "work2_base", 
        flags = 3,
    }, {}, {}, function()
        StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
        ClearPedTasks(Ped)
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + 5)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerServerEvent("xcyn:removecon:bbgummy")
        GummyEffect()
    end)
end)

RegisterNetEvent('xcyn:consum:rdgummy')
AddEventHandler('xcyn:consum:rdgummy', function()
    QBCore.Functions.Progressbar("eat_something", ("Eating Raspberry Dreamz Gummy"), 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "missmechanic", 
        anim = "work2_base", 
        flags = 3,
    }, {}, {}, function()
        StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
        ClearPedTasks(Ped)
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + 5)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerServerEvent("xcyn:removecon:rdgummy")
        GummyEffect()
    end)
end)

RegisterNetEvent('xcyn:consum:skgummy')
AddEventHandler('xcyn:consum:skgummy', function()
    QBCore.Functions.Progressbar("eat_something", ("Eating Spiked Kiwi Gummy"), 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "missmechanic", 
        anim = "work2_base", 
        flags = 3,
    }, {}, {}, function()
        StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
        ClearPedTasks(Ped)
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + 5)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerServerEvent("xcyn:removecon:skgummy")
        GummyEffect()
    end)
end)

RegisterNetEvent('xcyn:consum:tsgummy')
AddEventHandler('xcyn:consum:tsgummy', function()
    QBCore.Functions.Progressbar("eat_something", ("Eating Tropical Storm Gummy"), 2000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = "missmechanic", 
        anim = "work2_base", 
        flags = 3,
    }, {}, {}, function()
        StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
        ClearPedTasks(Ped)
        TriggerServerEvent('consumables:server:addHunger', QBCore.Functions.GetPlayerData().metadata.hunger + 5)
        TriggerServerEvent('hud:server:RelieveStress', math.random(2, 4))
        TriggerServerEvent("xcyn:removecon:tsgummy")
        GummyEffect()
    end)
end)


