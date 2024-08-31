local QBCore = exports['qb-core']:GetCoreObject()



------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
--------------------------------------Functions------------------------------------------------
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
local function makethcenergy()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        local hasIngredients = exports[Config.Inventory]:HasItem({"water", "sugar", "jollygreenextract"}, 2)
        local hasSupplies = exports[Config.Inventory]:HasItem({"dankflavor","emptycanlarge"}, 1)
        if hasIngredients and hasSupplies then
            TriggerEvent('xcyn:largeenergyanim')
        else
            QBCore.Functions.Notify("You dont have everything")
        end
    else
        QBCore.Functions.Notify('You do not work here')
    end
end



local function makejollyjuice()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        local hasIngredients = exports[Config.Inventory]:HasItem({"sugar", "jollygreenextract"}, 2)
        local hasSupplies = exports[Config.Inventory]:HasItem({"dankflavor","emptycan", "water"}, 1)
        if hasIngredients and hasSupplies then
            TriggerEvent('xcyn:jollyjuice')
        else
            QBCore.Functions.Notify("You dont have everything")
        end
    else
        QBCore.Functions.Notify('You do not work here')
    end
end


local function makecbdthcenergy()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        local hasIngredients = exports[Config.Inventory]:HasItem({"water", "jollygreencbdextract"}, 2)
        local hasSupplies = exports[Config.Inventory]:HasItem({"dankflavor","emptycanlarge", "sugar"}, 1)
        if hasIngredients and hasSupplies then
            TriggerEvent('xcyn:cbddrink')
        else
            QBCore.Functions.Notify("You dont have everything")
        end
    else
        QBCore.Functions.Notify('You do not work here')
    end
end


local function makesfthcenergy()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        local hasIngredients = exports[Config.Inventory]:HasItem({"water", "jollygreenextract"}, 2)
        local hasSupplies = exports[Config.Inventory]:HasItem({"dankflavor","emptycanlarge"}, 1)
        if hasIngredients and hasSupplies then
            TriggerEvent('xcyn:sflargeenergyanim')
        else
            QBCore.Functions.Notify("You dont have everything")
        end
    else
        QBCore.Functions.Notify('You do not work here')
    end
end


RegisterNetEvent('xcyn:largeenergyanim')
AddEventHandler('xcyn:largeenergyanim', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        QBCore.Functions.Progressbar("eat_something", ("Making Jolly Energy"), 2000, false, true, {
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
            TriggerServerEvent("xcyn:largeenergy")
        end)
    else
        QBCore.Functions.Notify("You dont work here", "error")
    end
end)

RegisterNetEvent('xcyn:sflargeenergyanim')
AddEventHandler('xcyn:sflargeenergyanim', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        QBCore.Functions.Progressbar("eat_something", ("Making Sugar Free Jolly Energy"), 2000, false, true, {
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
            TriggerServerEvent("xcyn:sflargeenergy")
        end)
    else
        QBCore.Functions.Notify("You dont work here", "error")
    end
end)

RegisterNetEvent('xcyn:cbddrink')
AddEventHandler('xcyn:cbddrink', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        QBCore.Functions.Progressbar("eat_something", ("Making CBD Jolly Energy"), 2000, false, true, {
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
            TriggerServerEvent("xcyn:cbddrink")
        end)
    else
        QBCore.Functions.Notify("You dont work here", "error")
    end
end)


RegisterNetEvent('xcyn:jollyjuice')
AddEventHandler('xcyn:jollyjuice', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        QBCore.Functions.Progressbar("eat_something", ("Making Jolly Juice"), 2000, false, true, {
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
            TriggerServerEvent("xcyn:jollyjuiceserver")
        end)
    else
        QBCore.Functions.Notify("You dont work here", "error")
    end
end)

RegisterNetEvent('xcyn:jolly:harvest')
AddEventHandler('xcyn:jolly:harvest', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        QBCore.Functions.Progressbar("eat_something", ("Picking Dank Ass Weed"), 2000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "missmechanic", 
            anim = "work2_base", 
            flags = 3,
        }, {}, {}, function() -- Done
            StopAnimTask(Ped, "missmechanic", "work2_base", 1.0)
            ClearPedTasks(Ped)
            TriggerServerEvent("xcyn:harvestloot")
        end)
    else
        QBCore.Functions.Notify("You dont work here", "error")
    end
end)


RegisterNetEvent('xcyn:jolly:condition')
AddEventHandler('xcyn:jolly:condition', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        local hasbud = exports[Config.Inventory]:HasItem("jollygreen", 3)
        local haspaper = exports[Config.Inventory]:HasItem("pressingpaper", 1)
        local hasgloves = exports[Config.Inventory]:HasItem("rubbergloves", 1)
        if hasbud and haspaper and hasgloves then
            QBCore.Functions.Progressbar("eat_something", ("Weighing and Pressing Nugs into extract"), 2000, false, true, {
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
                TriggerServerEvent("xcyn:giveextract")
            end)
        else
            QBCore.Functions.Notify("You dont have what you need bro", "error")
        end
    else
        QBCore.Functions.Notify("You dont work here", "error")
    end
end)


RegisterNetEvent('xcyn:jolly:market')
AddEventHandler('xcyn:jolly:market', function()
    local PlayerData = QBCore.Functions.GetPlayerData()
    if PlayerData.job.name == "jolly" then
        QBCore.Functions.Progressbar("eat_something", ("Logging into Marketplace"), 1000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = "anim@amb@board_room@stenographer@computer@", 
            anim = "glance_board_03_right_amy_skater_01", 
            flags = 3,
        }, {}, {}, function()
            StopAnimTask(Ped, "anim@amb@board_room@stenographer@computer@", "glance_board_03_right_amy_skater_01", 1.0)
            ClearPedTasks(Ped)
            TriggerServerEvent("inventory:server:OpenInventory", "shop", "jolly", "jolly")
        end)
    else
        QBCore.Functions.Notify("You dont work here", "error")
    end
end)

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
--------------------------------------Menu STUFF------------------------------------------------
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
local function gummymenu()
    lib.registerContext({
        id = 'gummymenu',
        title = 'Gummy Infusion',
        options = {
            {
                title = 'Apple Blueberry',
                description = 'Required: (2x)Sugar (2x)Extract (2x)Water (2x)Dank Flavor',
                icon = '',
                onSelect = function()
                    
                end
            },
            {
                title = 'Berry Blast',
                description = 'Required: (2x)Sugar (2x)Extract (2x)Water (2x)Dank Flavor',
                icon = '',
                onSelect = function()
                    
                end
            },
            {
                title = 'Raspberry Dream',
                description = 'Required: (2x)Sugar, (2x)Extract, (2x)Water, (2x)Dank Flavor',
                icon = '',
                onSelect = function()
                    
                end
            },
            {
                title = 'Spiked Kiwi',
                description = 'Required: (2x)Sugar, (2x)Extract, (2x)Water, (2x)Dank Flavor',
                icon = '',
                onSelect = function()
                    
                end
            },
            {
                title = 'Tropical Storm',
                description = 'Required: (2x)Sugar, (2x)Extract, (2x)Water, (2x)Dank Flavor',
                icon = '',
                onSelect = function()
                    
                end
            },
        },
        onBack = function()
            lib.showContext('workmenu') 
        end
    })
end

local function workmenu()
    lib.registerContext({
        id = 'workmenu',
        title = 'Jolly Joints Employee',
        options = {
            {
                title = 'Make Jolly Energy THC',
                description = 'Required: (1x) Sugar, (2x) Water, (2x) Extract, (1x) Tall Empty Can, (1x) Dank Flavor',
                icon = '',
                onSelect = function()
                    makethcenergy()
                end
            },
            {
                title = 'Make Sugar-Free Jolly Energy THC',
                description = 'Required: (2x) Water, (2x) Extract, (1x) Tall Empty Can, (1x) Dank Flavor',
                icon = '',
                onSelect = function()
                    makesfthcenergy()
                end
            },
            {
                title = 'Make Jolly Energy CBD',
                description = 'Required: (1x) Sugar, (2x) Water, (2x) CBD Extract, (1x) Tall Empty Can, (1x) Dank Flavor',
                icon = '',
                onSelect = function()
                    makecbdthcenergy()
                end
            },
            {
                title = 'Make Jolly Juice THC',
                description = 'Required: (1x) Sugar, (1x) Water, (2x) Extract, (1x) Empty Can, (1x) Dank Flavor',
                icon = '',
                onSelect = function()
                    makejollyjuice()
                end
            },
            {
                title = 'Infuse Gummies',
                description = 'Open Gummy Menu',
                icon = '',
                onSelect = function()
                    gummymenu()
                    lib.showContext('gummymenu')
                end
            },
        }
    })
end

RegisterNetEvent('xcyn:jollymenu', function()
    workmenu()
    lib.showContext('workmenu')
end)

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
--------------------------------------TARGET STUFF----------------------------------------------
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
exports['qb-target']:AddBoxZone("harvest1", vector3(-21.59, -1046.98, 27.95), 1, 1, {
 	name = "harvest1",
	heading = 306.96,
	debugPoly = false,
	minZ = 26,
	maxZ = 29,
}, {
	options = {
		{
            type = "client",
            event = "xcyn:jolly:harvest",
			icon = "",
			label = "Pick Dank Buds Bro",
		},
	},
	distance = 2.5
})
exports['qb-target']:AddBoxZone("harvest2", vector3(-22.01, -1044.84, 27.89), 1, 1, {
    name = "harvest2",
   heading = 306.96,
   debugPoly = false,
   minZ = 26,
   maxZ = 29,
}, {
   options = {
       {
           type = "client",
           event = "xcyn:jolly:harvest",
           icon = "",
           label = "Pick Dank Buds Bro",
       },
   },
   distance = 2.5
})
exports['qb-target']:AddBoxZone("harvest3", vector3(-23.73, -1046.21, 28.13), 1, 1, {
    name = "harvest3",
   heading = 306.96,
   debugPoly = false,
   minZ = 26,
   maxZ = 29,
}, {
   options = {
       {
           type = "client",
           event = "xcyn:jolly:harvest",
           icon = "",
           label = "Pick Dank Buds Bro",
       },
   },
   distance = 2.5
})
exports['qb-target']:AddBoxZone("harvest4", vector3(-23.55, -1044.31, 28.02), 1, 1, {
    name = "harvest4",
   heading = 306.96,
   debugPoly = false,
   minZ = 26,
   maxZ = 29,
}, {
   options = {
       {
           type = "client",
           event = "xcyn:jolly:harvest",
           icon = "",
           label = "Pick Dank Buds Bro",
       },
   },
   distance = 2.5
})
exports['qb-target']:AddBoxZone("condition", vector3(-16.68, -1039.89, 28.43), 1, 1, {
    name = "condition",
   heading = 306.96,
   debugPoly = false,
   minZ = 26,
   maxZ = 29,
}, {
   options = {
       {
           type = "client",
           event = "xcyn:jolly:condition",
           icon = "",
           label = "Press Dank Buds Bro",
       },
   },
   distance = 2.5
})
exports['qb-target']:AddBoxZone("buyingred", vector3(-24.44, -1040.5, 28.26), 1, 1, {
   name = "buyingred",
   heading = 306.96,
   debugPoly = false,
   minZ = 27.8,
   maxZ = 29,
}, {
   options = {
       {
           type = "client",
           event = "xcyn:jolly:market",
           icon = "",
           label = "Buy Supplies",
       },
   },
   distance = 2.5
})
exports['qb-target']:AddBoxZone("makestuff", vector3(-17.52, -1042.67, 28.13), 1, 1, {
    name = "makestuff",
    heading = 306.96,
    debugPoly = false,
    minZ = 27.8,
    maxZ = 29,
 }, {
    options = {
        {
            type = "client",
            event = "xcyn:jollymenu",
            icon = "",
            label = "Make Dank Stuff",
        },
    },
    distance = 2.5
 })
